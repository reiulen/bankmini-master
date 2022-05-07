<x-layout title="History Pembayaran">

        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-3">
                    <div class="col-sm-6">
                        <h1>History Pembayaran</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">History Pembayaran</li>
                        </ol>
                    </div>
                </div>
                <div class="card">
                <div class="card-body">
                    <div class="row btn-laporan">
                        <div class="d-md-flex col-10">
                            <div>
                                <label style="font-size: 14px">Dari Tanggal</label>
                                <input type="date" name="tgl_awal" id="tgl_awal" class="form-control" />
                            </div>
                            <div class="mx-md-2">
                                <label style="font-size: 14px">Sampai Tanggal</label>
                                <input type="date" name="tgl_akhir" id="tgl_akhir" class="form-control" />
                            </div>
                            <div class="col-md-6" style="margin-top: 28px">
                                <button class="btn btn-primary btn-cari"><i class="fa fa-search"></i>&nbsp; Cari</button>
                            </div>
                        </div>
                        <div class="ml-auto">
                            <a class="btn btn-primary" data-toggle="modal" data-target="#modalFilter" ><i class="fa fa-filter"></i>&nbsp; Filter</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">
              <div class="card card-outline">
                <div class="card-header">
                  <div class="row justify-content-between">
                      @php
                        $siswa = Auth::guard('siswa')->user();
                      @endphp
                      <div class="row btn-laporan mx-auto mx-md-2">
                        <a href="{{ route('historytransaksi.cetak-pdf') }}" class="btn btn-primary mx-1 cetak-pdf" target="_blank"><i class="fa fa-file-pdf"></i>&nbsp; Cetak Laporan PDF</a>
                        <a href="{{ route('historytransaksi.cetak-excel') }}" class="btn btn-primary mx-1 cetak-excel" target="_blank"><i class="fa fa-file-excel"></i>&nbsp; Cetak Laporan Excel</a>
                        @if($siswa)
                        <a class="btn btn-primary btn-cetak"><i class="fa fa-file-pdf"></i>&nbsp; Cetak Kwitasi</a>
                        @endif
                      </div>
                      @if($siswa)
                      <div class="ml-md-auto my-md-0 my-2 mx-auto mx-md-0">
                        <a class="btn btn-primary border-0" href="{{ route('historytransaksi.tagihan') }}"><i class="fa fa-eye px-1"></i> Lihat Sisa Tagihan</a>
                      </div>
                      @endif
                  </div>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                  <table id="example1" class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        @if($siswa)
                        <th>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input pilih" id="pilih">
                                <label class="custom-control-label" for="pilih"></label>
                            </div>
                        </th>
                        @endif
                        <th>Tanggal</th>
                        @if(!$siswa)
                        <th>NIS</th>
                        <th>Nama</th>
                        @endif
                        <th>Pembayaran</th>
                        <th>Petugas</th>
                        <th>Keterangan</th>
                        <th>Nominal</th>
                        <th>Sisa Tagihan</th>
                      </tr>
                    </thead>
                    <tbody>

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

    <div class="modal fade" id="modalFilter" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Filter Transaksi</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                <form id="form-filter">
                    <div class="form-group row mb-4">
                        <label class="col-md-3">Status</label>
                        <div class="col-md-9">
                            <select class="form-control filter" name="status">
                                <option value="">Pilih</option>
                                <option value="lunas">Lunas</option>
                                <option value="belum lunas">Belum lunas</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label class="col-md-3">Pembayaran</label>
                        <div class="col-md-9">
                            <select class="form-control filter" multiple name="pembayaran">
                                @php
                                    if($siswa){
                                        $dana = $dana->where('tahun_akademik_id', $siswa->tahun_akademik_id);
                                    }
                                @endphp
                                @foreach ($dana as $row)
                                <option value="{{ $row->id }}">{{ $row->dana }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label class="col-md-3">Petugas</label>
                        <div class="col-md-9">
                            <select class="form-control filter" multiple name="petugas">
                                @foreach ($petugas as $row)
                                <option value="{{ $row->id }}">{{ $row->nama }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label class="col-md-3">Urut Berdasarkan</label>
                        <div class="col-md-9">
                            <select class="form-control filter" name="by">
                                <option value="">Pilih</option>
                                <option value="created_at|DESC">Terbaru</option>
                                <option value="created_at|ASC">Terlama</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label class="col-md-8"></label>
                        <div class="col-md-4">
                            <button class="btn btn-primary">Terapkan Filter</button>
                        </div>
                    </div>
                </form>
            </div>
          </div>
        </div>
    </div>

      @include('backend.lib.datatable')
      @include('backend.lib.select2')
      @push('script')
       @if(!Auth::guard('siswa')->user())
        <script src="{{ asset('assets/dist/js/pages/historypembayaran/index.js') }}"></script>
        @else
        <script src="{{ asset('assets/dist/js/pages/historypembayaran/indexuser.js') }}"></script>
       @endif
      @endpush

</x-layout>
