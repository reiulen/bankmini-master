<x-layout title="Jurusan">
    <x-content-header>
        <div class="col-sm-6">
            <h1> Jurusan</h1>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Jurusan') }}</li>
        </x-breadcumb>
    </x-content-header>

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-header card-outline">
                            <a class="btn btn-primary border-0 btn-tambah"><i class="fa fa-plus px-1"></i> Tambah Jurusan</a>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example1" class="table table-bordered  table-hover">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Jurusan</th>
                                        <th>Nama</th>
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
                <div class="col-md-5 form-inputan" style="display:none">
                    <div class="card">
                        <div class="card-header card-outline">
                            <h3 class="card-title">Form Isian Jurusan</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <div class="alert-error"></div>
                            <form action="{{ route('jurusan.store')}}" method="post" id="form">
                                @csrf
                                <input type="hidden" name="id" value="0" />
                                <div class="form-group mb-4 form-floating">
                                    <label>Jurusan</label>
                                    <input type="text" name="jurusan" id="jurusan" class="form-control">
                                    <x-session-error name="jurusan"></x-session-error>
                                </div>
                                <div class="form-group mb-4 form-floating">
                                    <label>Nama</label>
                                    <input type="text" name="nama" id="nama" class="form-control ">
                                    <x-session-error name="nama"></x-session-error>
                                </div>
                                <button class="btn btn-primary"><i class="fa fa-save"></i>&nbsp; Simpan</button>
                                <button type="button" class="btn btn-secondary btn-kembali"><i class="fas fa-times"></i>&nbsp; Batal</button>
                            </form>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
        </section>


      @include('backend.lib.datatable')
      @push('script')
      <script src="{{ asset('assets/dist/js/pages/jurusan/index.js') }}"></script>
    @endpush

</x-layout>
