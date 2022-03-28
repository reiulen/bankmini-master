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
                                <a class="btn btn-primary border-0 col-md-5" href="{{ route('siswa.create') }}"><i class="fa fa-plus px-1"></i> Tambah Siswa</a>
                                <div class="col-md-8 col-12 mx-md-2 my-md-0 my-2">
                                    <select class="form-control filter">
                                    <option selected disabled>- Filter per kelas -</option>
                                    <option value="">Semua</option>
                                    @foreach ($kelas as $row)
                                        <option value="{{ $row->id }}">{{ $row->kelas . ' ' . $row->jurusan->nama .' '. $row->urut_kelas }}</option>
                                    @endforeach
                                </select>
                                </div>
                            </div>
                            <div class="dropdown ml-auto">
                                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Opsi Data
                                </button>
                                <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="import_siswa.html">Import Data Siswa</a>
                                    <a class="dropdown-item" href="{{ route('siswa.eksport') }}">Eksport Data Siswa</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
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

    @include('backend.lib.datatable')
    @include('backend.lib.select2')
    @push('script')
    <script src="{{ asset('assets/dist/js/pages/siswa/index.js') }}"></script>
    @endpush

</x-layout>
