<x-layout title="Data Siswa">

    <x-content-header>
        <div class="col-sm-6">
            <h1>Data Siswa</h1>
        </div>

        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">Home</a></li>
            <li class="breadcrumb-item item">{{ __('Data Siswa') }}</li>
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
                            <div class="d-md-flex">
                                @can('siswa.create')
                                <a class="btn btn-primary border-0 col-md-8" href="{{ route('siswa.create') }}"><i class="fa fa-plus px-1"></i> Tambah Siswa</a>
                                @endcan
                                <div class="col-md-6 col-12 mx-md-2 my-md-0 my-2">
                                    <a class="btn btn-primary" data-toggle="modal" data-target="#modalFilter" ><i class="fa fa-filter"></i>&nbsp; Filter</a>
                                </div>
                            </div>
                            @canany(['siswa.import', 'siswa.export'])
                            <div class="dropdown ml-auto">
                                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Opsi Data
                                </button>
                                <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                                    @can('siswa.import')
                                    <a class="dropdown-item"  data-toggle="modal" data-target="#modalUpload" href="#"><i class="fa fa-upload text-success"></i>&nbsp; Import Data Pengguna</a>
                                    @endcan
                                    @can('siswa.export')
                                    <a class="dropdown-item" href="{{ route('siswa.eksport') }}">Eksport Data Siswa</a>
                                    @endcan
                                </div>
                            </div>
                            @endcanany
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        {{-- <div class="input-group col-md-3 mb-2 px-0 mx-0">
                            <div class="input-group-prepend">
                                <span class="input-group-text bg-transparent border-right-0" id="addon-wrapping"><i class="fa fa-search"></i></span>
                            </div>
                            <input type="text" class="form-control border-left-0" id="inputcari" placeholder="Ketik untuk pencarian...." aria-label="Username" aria-describedby="addon-wrapping">
                            <div class="input-group-append">
                                <button class="btn btn-primary" id="btncari">Cari</button>
                            </div>
                        </div> --}}
                        <table id="example1" class="table table-bordered  table-hover">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Foto</th>
                                    <th>NISN</th>
                                    <th>NIS</th>
                                    <th>Nama Lengkap</th>
                                    <th>Jenis Kelamin</th>
                                    <th>Kelas</th>
                                    <th>Tahun Akademik</th>
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
              <h5 class="modal-title" id="exampleModalLabel">Filter Siswa</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                <form id="form-filter">
                    <div class="form-group row mb-4">
                        <label class="col-md-3">Jenis Kelamin</label>
                        <div class="col-md-9">
                            <select class="form-control filter" name="j_kelamin" multiple style="width:100%">
                                <option value="Laki-laki">Laki-Laki</option>
                                <option value="Perempuan">Perempuan</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label class="col-md-3">Jurusan</label>
                        <div class="col-md-9">
                            <select class="form-control filter" multiple name="jurusan">
                                @foreach ($jurusan as $row)
                                    <option value="{{ $row->id }}">{{ $row->nama }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label class="col-md-3">Kelas</label>
                        <div class="col-md-9">
                            <select class="form-control filter" multiple name="kelas">
                                @foreach ($kelas as $row)
                                    <option value="{{ $row->id }}">{{ $row->kelas . ' ' . $row->jurusan->nama .' '. $row->urut_kelas }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label class="col-md-3">Tahun Akademik</label>
                        <div class="col-md-9">
                            <select class="form-control filter" multiple name="tahun_akademik">
                                @foreach ($tahunakademik as $row)
                                <option value="{{ $row->id }}">{{ tahun($row->awal). ' - ' .tahun($row->akhir) }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label class="col-md-3">Status</label>
                        <div class="col-md-9">
                            <select class="form-control filter"  name="status">
                                <option>Pilih</option>
                                <option value="Aktif">Aktif</option>
                                <option value="Lulus">Lulus</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label class="col-md-3">Urut Berdasarkan</label>
                        <div class="col-md-9">
                            <select class="form-control filter" name="by">
                                <option value="">Pilih</option>
                                <option value="nama|ASC">A-Z</option>
                                <option value="nama|DESC">Z-A</option>
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

@can('siswa.import')
<!-- Modal Upload -->
<div class="modal fade" id="modalUpload" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Import Data Pengguna</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div id="load" class="text-center"></div>
      <form action="{{ route('siswa.import') }}" enctype="multipart/form-data" method="POST" id="uploadSiswa">
        <div class="modal-body">
            <div class="input-group">
                <div class="custom-file">
                    <input type="file" name="file" class="form-control" id="inputGroupFile02">
                </div>
            </div>
            <span class="small pb-5 text-danger">Pilih file dengan ekstensi *csv, *xlxs</span>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Kembali</button>
          <button class="btn btn-primary">Import Data</button>
        </div>
      </form>
    </div>
  </div>
</div>
@endcan

    @include('backend.lib.datatable')
    @include('backend.lib.select2')
    @push('script')
    <script src="{{ asset('assets/dist/js/pages/siswa/index.js') }}"></script>
    <script src="{{ asset('assets/dist/js/pages/siswa/upload.js') }}"></script>
    @endpush

</x-layout>
