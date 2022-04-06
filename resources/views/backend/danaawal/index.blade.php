<x-layout title="Dana Awal Tahun">
    <x-content-header>
        <div class="col-sm-6">
            <h1> Dana Awal Tahun </h1>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Dana Awal Tahun') }}</li>
        </x-breadcumb>
    </x-content-header>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-7">
                    <div class="card card-outline">
                        <div class="card-header">
                            <a class="btn btn-primary border-0 btn-tambah"><i class="fa fa-plus px-1"></i> Tambah Dana</a>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example1" class="table table-bordered  table-hover">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Tahun Akademik</th>
                                        <th>Dana</th>
                                        <th>Nominal</th>
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
                            <h3 class="card-title">Form Isian Tahun Akademik</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <div class="alert-error"></div>
                            <form action="{{ route('danaawal.store') }}" method="post" id="form">
                                <input type="hidden" name="id" value="0" />
                                <div class="form-group mb-3">
                                    <label>Tahun Akademik</label>
                                    <select class="form-control" name="tahun_akademik">
                                        <option selected disabled>- Pilih Tahun Akademik -</option>
                                        @foreach ($t_akademik as $row)
                                        <option value="{{ $row->id }}">{{ tahun($row->awal) }} - {{ tahun($row->akhir) }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group mb-3">
                                    <label>Dana</label>
                                    <input type="text" name="dana" class="form-control" />
                                </div>
                                <div class="form-group mb-4">
                                    <label>Nominal</label>
                                    <input type="text" id="nominal" name="nominal" class="form-control">
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
        <!-- /.content -->


  @include('backend.lib.select2')
  @include('backend.lib.datatable')
  @push('script')
  <script src="{{ asset('assets/dist/js/pages/danaawal/index.js') }}"></script>
@endpush
</x-layout>

