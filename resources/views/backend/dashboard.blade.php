<x-layout title="Dashboard">

        <x-content-header>
            <div class="col-sm-6">
                <h1 class="m-0">{{ __('Dashboard') }}</h1>
            </div>
            <x-breadcumb>
                <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
                <li class="breadcrumb-item active">{{ __('Dashboard') }}</li>
            </x-breadcumb>
        </x-content-header>

        <!-- Main content -->
        <section class="content">
          <div class="container-fluid">
            <!-- Small boxes (Stat box) -->
            <div class="row">
              <div class="col-lg-3 col-md-6">
                <!-- small box -->
                <div class="small-box bg-info">
                  <div class="inner text-right">
                    <h3>{{ DB::table('siswa')->where('status', 'Aktif')->count() }}</h3>
                    <p>Jumlah Siswa</p>
                  </div>
                  <div class="icon">
                    <i class="fa fa-users"></i>
                  </div>
                </div>
              </div>
              <!-- ./col -->
              <div class="col-lg-3 col-md-6">
                <!-- small box -->
                <div class="small-box bg-danger">
                  <div class="inner text-right">
                      @php
                        $pembayaranhari = $pembayaran->whereBetween(
                                                                'created_at', [date('Y-m-d') . ' 00:00:00', date('Y-m-d') . ' 23:59:59']
                                                                )->sum('nominal');
                        $kredithari = $tabungan->whereBetween(
                                                            'created_at', [date('Y-m-d') . ' 00:00:00', date('Y-m-d') . ' 23:59:59']
                                                            )
                                             ->where('tipe', '2')
                                             ->sum('nominal');
                        $debithari = $tabungan->whereBetween(
                                                            'created_at', [date('Y-m-d') . ' 00:00:00', date('Y-m-d') . ' 23:59:59']
                                                            )
                                             ->where('tipe', '1')
                                             ->sum('nominal');
                        $totalhari = $pembayaranhari + $debithari - $kredithari;
                      @endphp
                    <h3>{{ format_rupiah($totalhari) }}</h3>
                    <p>Pemasukan Hari Ini</p>
                  </div>
                  <div class="icon">
                    <i class="fas fa-money-check-alt"></i>
                  </div>
                </div>
              </div>
              <!-- ./col -->
              <div class="col-lg-3 col-md-6">
                <!-- small box -->
                <div class="small-box bg-secondary">
                  <div class="inner text-right">
                    @php
                        function format_bulan($bulan){
                            return \Carbon\Carbon::parse($bulan)->isoFormat('MMMM');
                        }

                        $pembayaranbulan = $pembayaran->where('bulan', format_bulan(date('M')))->sum('nominal');
                        $kreditbulan = $tabungan->where('bulan', format_bulan(date('M')))
                                             ->where('tipe', '2')
                                             ->sum('nominal');
                        $debitbulan = $tabungan->where('bulan', format_bulan(date('M')))
                                             ->where('tipe', '1')
                                             ->sum('nominal');
                        $totalbulan = $pembayaranbulan + $debitbulan - $kreditbulan;
                      @endphp
                    <h3>{{ format_rupiah($totalbulan) }}</h3>
                    <p>Pemasukan Bulan Ini</p>
                  </div>
                  <div class="icon">
                    <i class="fas fa-credit-card"></i>
                  </div>
                </div>
              </div>
              <!-- ./col -->
              <div class="col-lg-3 col-md-6">
                <!-- small box -->
                <div class="small-box bg-success">
                  <div class="inner text-right">
                    @php
                        $pembayarantotal = $pembayaran->sum('nominal');
                        $debittotal = $tabungan->where('tipe', '1')->sum('nominal');
                        $kredittotal = $tabungan->where('tipe', '2')->sum('nominal');

                        $saldo = $pembayarantotal + $debittotal - $kredittotal;
                    @endphp
                    <h3>{{ format_rupiah($saldo) }}</h3>
                    <p>Total Saldo</p>
                  </div>
                  <div class="icon">
                    <i class="fas fa-chart-bar"></i>
                  </div>
                </div>
              </div>
              <!-- ./col -->
            </div>
            <div class="row">
              <div class="col-md-6">
                <!-- AREA CHART -->
                <div class="card">
                  <div class="card-header">
                    <h3 class="card-title">Transaksi</h3>
                  </div>
                  <div class="card-body">
                    <div class="chart">
                      <canvas id="transaksiChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                    </div>
                  </div>
                  <!-- /.card-body -->
                </div>
                <!-- /.card -->
              </div>
              <div class="col-md-6">
                <!-- BAR CHART -->
                <div class="card">
                  <div class="card-header">
                    <h3 class="card-title">Kredit dan Debit Tabungan</h3>
                  </div>
                  <div class="card-body">
                    <div class="chart">
                      <canvas id="kreditChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                    </div>
                  </div>
                  <!-- /.card-body -->
                </div>
                <!-- /.card -->
              </div>
            </div>
            <!-- /.row -->
            <div class="row">
              {{-- <div class="col-md-8">
                <div class="card">
                  <div class="card-header">
                    <h3 class="card-title">Pengguna</h3>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body p-0">
                    <div class="table-responsive">
                      <table class="table m-0">
                        <thead>
                        <tr>
                          <th>Avatar</th>
                          <th>Nama</th>
                          <th>Email</th>
                          <th>Level</th>
                          <th>Aktifitas</th>
                        </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="text-center"><img src="../assets/dist/img/user2-160x160.jpg" class="rounded-circle shadow-lg img-thumbnail" style="height: 60px;"></td>
                                <td>
                                    Reihan Andika AM
                                </td>
                                <td>reiandika10@gmail.com</td>
                                <td><span class="badge badge-info rounded- py-2 px-3">Operator</span></td>
                                <td>Sedang Aktif</td>
                            </tr>
                            <tr>
                                <td class="text-center"><img src="../assets/dist/img/user2-160x160.jpg" class="rounded-circle shadow-lg img-thumbnail" style="height: 60px;"></td>
                                <td>
                                    Admin Bank
                                </td>
                                <td>adminbank@gmail.com</td>
                                <td><span class="badge badge-secondary rounded- py-2 px-3">Admin Bank</span></td>
                                <td>Logout 10 menit yang lalu</td>
                                <td>
                            </tr>
                            <tr>
                              <td class="text-center"><img src="../assets/dist/img/user2-160x160.jpg" class="rounded-circle shadow-lg img-thumbnail" style="height: 60px;"></td>
                              <td>
                                  Kepala Bank
                              </td>
                              <td>kepalabank@gmail.com</td>
                              <td><span class="badge badge-dark rounded- py-2 px-3">Kepala Bank</span></td>
                              <td>Sedang Aktif</td>
                            </tr>
                            <tr>
                                <td class="text-center"><img src="../assets/dist/img/user2-160x160.jpg" class="rounded-circle shadow-lg img-thumbnail" style="height: 60px;"></td>
                                <td>
                                    Komite Sekolah
                                </td>
                                <td>komite@gmail.com</td>
                                <td><span class="badge badge-success rounded- py-2 px-3">Komite</span></td>
                                <td>Logout 3 menit yang lalu</td>
                                <td>
                            </tr>
                        </tbody>
                      </table>
                    </div>
                    <!-- /.table-responsive -->
                  </div>
                  <!-- /.card-body -->
                </div>
                <!-- /.card -->
              </div> --}}
              {{-- <div class="col-md-4">
                <div class="card">
                  <div class="card-header">
                    <h3 class="card-title">Aktifitas</h3>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body p-0">
                    <ul class="aktifitas-card pt-3 pl-2 pr-2">
                      <li class="item d-flex">
                        <div class="icon-notification">
                          <div class="icon bg-danger rounded-circle">
                            <i class="fa fa-trash"></i>
                          </div>
                        </div>
                        <div class="title-notification ml-2">
                          <p>Reihan Andika menghapus siswa Marcelio Rif'at 192010568</p>
                          <span class="text-muted">1 menit yang lalu</span>
                        </div>
                      </li>
                      <!-- /.item -->
                    </ul>
                  </div>
                  <!-- /.card-body -->
                  <div class="card-footer text-center">
                    <a href="javascript:void(0)" class="uppercase">Lihat Semua Aktifitas</a>
                  </div>
                  <!-- /.card-footer -->
                </div>
                <!-- /.card -->
              </div> --}}
            </div>
          </div>
          <!-- /.container-fluid -->
        </section>
        <!-- /.content -->

    @push('script')
    <script src="{{ asset('assets/plugins/chart.js/Chart.min.js') }}"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="{{ asset('assets/plugins/moment/moment.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js') }}"></script>
    <!-- dashboard -->
    <script src="{{ asset('assets/dist/js/pages/dashboard.js') }}"></script>
    <script>
      $(function(){
              var ctx = document.getElementById("transaksiChart").getContext('2d');
              var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                  labels: [
                    @foreach ($pembayaran->groupBy('tanggal') as $row)
                      "{{ $row->first()->tanggal }}",
                    @endforeach
                  ],
                  datasets: [{
                    label: 'Transaksi',
                    data: [@foreach ($pembayaran->groupBy('tanggal') as $row)
                      "{{ $row->count() }}",
                    @endforeach],
                    backgroundColor: [
                        '#63ed7a',
                        '#ffa426',
                        '#fc544b',
                        '#191d21',
                    ],
                    pointBackgroundColor: '#ffffff',
                    pointRadius: 4
                  }]
                },
                options: {
                  legend: {
                    display: false
                  },
                  scales: {
                    yAxes: [{
                      gridLines: {
                        drawBorder: false,
                        color: '#f2f2f2',
                      },
                      ticks: {
                        beginAtZero: true,
                        stepSize: 150
                      }
                    }],
                    xAxes: [{
                      ticks: {
                        display: false
                      },
                      gridLines: {
                        display: false
                      }
                    }]
                  },
                }
              });

              var statistics_chart = document.getElementById("kreditChart").getContext('2d');
              var myChart = new Chart(statistics_chart, {
                type: 'line',
                data: {
                  labels: [
                    @foreach ($charttabungan as $row)
                      "{{ $row->first()->tanggal }}",
                    @endforeach
                  ],
                  datasets: [{
                    label: 'Kredit',
                    data: [
                        @foreach ($charttabungan as $row)
                        "{{ $row->where('tipe', '2')->count() }}",
                        @endforeach
                    ],
                    borderWidth: 5,
                    borderColor: '#6091ba',
                    backgroundColor: 'transparent',
                    pointBackgroundColor: '#fff',
                    pointBorderColor: '#6091ba',
                    pointRadius: 4
                  },
                  {
                    label: 'Debit',
                    data: [@foreach ($charttabungan as $row)
                        "{{ $row->where('tipe', '1')->count() }}",
                        @endforeach
                    ],
                    borderWidth: 5,
                    borderColor: '#343a40',
                    backgroundColor: 'transparent',
                    pointBackgroundColor: '#fff',
                    pointBorderColor: '#343a40',
                    pointRadius: 4
                  }]
                },
                options: {
                  legend: {
                    display: false
                  },
                  scales: {
                    yAxes: [{
                      gridLines: {
                        display: false,
                        drawBorder: false,
                      },
                      ticks: {
                        stepSize: 150,
                      }
                    }],
                    xAxes: [{
                      gridLines: {
                        color: '#0000',
                        lineWidth: 2
                      }
                    }]
                  },
                }
              });
      });
    </script>
    @endpush
</x-layout>