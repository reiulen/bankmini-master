<x-layout title="Pembayaran">
    <x-content-header>
        <div class="col-sm-6">
          <a href="{{ route('siswa.index') }}" class="btn btn-primary"><i class="fa fa-arrow-left"></i>&nbsp;Kembali</a>
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
              <div class="card card-outline">
                <div class="card-header">
                  <div class="row">
                    <div class="col-md">
                      @can('siswapembayaran.create')
                      <a class="btn btn-primary border-0" href="{{ route('pembayaran.create', $siswa->nis) }}"><i class="fa fa-plus px-1"></i> Tambah Pembayaran</a>
                      @endcan
                      @can('siswapembayaran.tagihan')
                      <a class="btn btn-primary border-0" href="{{ route('pembayaran.tagihan', $siswa->nis) }}"><i class="fa fa-eye px-1"></i> Lihat Sisa Tagihan</a>
                      @endcan
                      <a class="btn btn-primary" data-toggle="modal" data-target="#modalFilter" ><i class="fa fa-filter"></i>&nbsp; Filter</a>
                    </div>
                    <div>
                      <p style="font-size: 15px" class="text-end py-2 py-md-0"><b> {{ $siswa->nama }}</b><br />NIS: {{ $siswa->nis }}<br />Kelas: {{ $siswa->kelas->kelas .' ' . $siswa->kelas->jurusan->nama. ' ' .$siswa->kelas->urut_kelas}}</p>
                    </div>
                  </div>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                  <table id="example1" class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>Tanggal</th>
                        <th>Kode</th>
                        <th>Pembayaran</th>
                        <th>Petugas</th>
                        <th>Keterangan</th>
                        <th>Nominal</th>
                        <th>Sisa Tagihan</th>
                        <th>Aksi</th>
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
      <script>
          const nis = "{{ $siswa->nis }}";
      </script>
      <script src="{{ asset('assets/dist/js/pages/pembayaran/index.js') }}"></script>
      @endpush

</x-layout>
