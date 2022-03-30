<x-layout title="Data Siswa">

    <x-content-header>
        <div class="col-sm-6">
            <h1>Kenaikan Siswa</h1>
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
                <div class="card card-outline">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-md-4 col-12 mx-md-2 my-md-0 my-2">
                                <label>Naik ke Kelas</label>
                                <form id="form-kelas">
                                    <div class="d-flex">
                                        <select class="form-control filter" name="kelas">
                                            <option selected disabled>Pilih</option>
                                            @foreach ($kelas as $row)
                                            <option value="{{ $row->id }}">{{ $row->kelas . ' ' . $row->jurusan->nama .' '. $row->urut_kelas }}</option>
                                            @endforeach
                                            <option value="lulus">Lulus</option>
                                        </select>
                                    <div class="mx-2">
                                        <button class="btn  btn-primary">&nbsp;Naikkan</button>
                                    </div>
                                    </div>
                                </form>
                            </div>
                            <div class="ml-auto">
                                <a class="btn btn-primary" data-toggle="modal" data-target="#modalFilter" ><i class="fa fa-filter"></i>&nbsp; Filter</a>
                            </div>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body" style="display: none">
                        <table id="example1" class="table table-bordered  table-hover">
                            <thead>
                                <tr>
                                    <th><input type="checkbox" id="pilih"/></th>
                                    <th>Foto</th>
                                    <th>NISN</th>
                                    <th>NIS</th>
                                    <th>Nama Lengkap</th>
                                    <th>Jenis Kelamin</th>
                                    <th>Kelas</th>
                                    <th>Tahun Akademik</th>
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
                        <label class="col-md-3">Urut Berdasarkan</label>
                        <div class="col-md-9">
                            <select class="form-control filter" name="by">
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

    @include('backend.lib.datatable')
    @include('backend.lib.select2')
    @push('script')
    <script src="{{ asset('assets/dist/js/pages/kenaikan/index.js') }}"></script>
    @endpush

</x-layout>
