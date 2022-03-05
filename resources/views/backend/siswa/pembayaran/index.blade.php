<x-layout title="Pembayaran">
    <x-content-header>
        <div class="col-sm-6">
            <h1>Pembayaran</h1>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('siswa.index') }}">{{ __('Siswa') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Pembayaran') }}</li>
        </x-breadcumb>
    </x-content-header>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-header card-outline">
                  <div class="row">
                    <div class="col-md">
                      <a class="btn btn-primary border-0" href="{{ route('pembayaran.create') }}"><i class="fa fa-plus px-1"></i> Tambah Pembayaran</a>
                    </div>
                    <div>
                      <p style="font-size: 14px" class="text-end"><b>Reihan Andhika Abdi Praja Makmur</b><br />NIS: 192010546</p>
                    </div>
                  </div>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                  <table id="example1" class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>Kode</th>
                        <th>Petugas</th>
                        <th>Tanggal Pembayaran</th>
                        <th>Tahun Akademik</th>
                        <th>DSP</th>
                        <th>Infaq</th>
                        <th>KI</th>
                        <th>Prakerin</th>
                        <th>Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>P001</td>
                        <td>Reihan Andhika AM</td>
                        <td>12-02-2023</td>
                        <td>2022-2023</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>2.000.000</td>
                        <td>
                          <div class="dropdown">
                            <button class="btn btn-none" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              <i class="fas fa-ellipsis-v"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                              <a class="dropdown-item" href="{{ route('pembayaran.edit', '4') }}"><i class="fas fa-pencil-alt text-primary pr-1"></i> Edit</a>
                              <a class="dropdown-item" href="{{ route('pembayaran.tagihan', '4') }}"><i class="fa-solid fa-wallet text-warning"></i> Sisa Tagihan</a>
                              <a class="dropdown-item hapusPembayaran" href="#"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                            </div>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->

      @include('backend.lib.datatable')

      @push('script')
      <script>
        $(function () {
          $('#example1')
            .DataTable({
              responsive: true,
              lengthChange: true,
              autoWidth: false,
            })
            .buttons()
            .container()
            .appendTo('#example1_wrapper .col-md-6:eq(0)');
        });
        $('.hapusPembayaran').click(function () {
          Swal.fire({
            title: 'Apakah yakin?',
            text: 'Data Pembayaran Reihan Andika AM akan dihapus',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#6492b8da',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Hapus',
            cancelButtonText: 'Batal',
          }).then((result) => {
            if (result.isConfirmed) {
              Swal.fire('Berhasil dihapus!', 'Data Pembayaran Reihan Andika AM berhasil dihapus', 'success');
            }
          });
        });
      </script>
      @endpush

</x-layout>