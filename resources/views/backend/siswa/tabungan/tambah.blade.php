<x-layout title="Tambah Tabungan">

    <x-content-header>
        <div class="col-sm-6">
            <a href="{{ route('tabungan.index') }}" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('siswa.index') }}">{{ __('Data Siswa') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('tabungan.index') }}">{{ __('Tabungan') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Tambah Tabungan') }}</li>
        </x-breadcumb>
    </x-content-header>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card card-outline">
                    <div class="card-header">
                        <h5>Tambah Tabungan</h5>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <form action="#" method="post">
                            <div class="form-group mb-4 row ">
                                <div class="col-md-6">
                                    <div>
                                        <label>Nama</label>
                                        <input type="text" class="form-control">
                                    </div>
                                    <div>
                                        <label>Tanggal</label>
                                        <input type="date" class="form-control">
                                    </div>
                                   
                                    <div>
                                        <label>Keterangan</label>
                                        <textarea class="form-control"></textarea>
                                    </div> 
                                </div>
                                <div class="col-md-6">
                                    <div>
                                        <label>No Tabungan</label>
                                        <input type="text" class="form-control">
                                    </div>
                                    <div>
                                        <label>Tipe Tabungan</label>
                                        <select class="form-control" name="jenis_kelamin">
                                            <option selected disabled>- Pilih Tipe -</option>
                                            <option value="kredit">Kredit</option>
                                            <option value="debet">Debet</option>
                                        </select>
                                    </div>
                                    <div class="">
                                        <label>Nominal</label>
                                        <input type="text" id="nominal" class="form-control text-right bg-info border-0" style="font-size: 60px; height: 80px;">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mb-4 row ">
                                <div class="col-md-4">
                                    <button class="btn btn-primary">Tambah</button>
                                </div>
                                <div class="col-md-4"></div>
                            </div>
                        </form>
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

    @push('script')
        <!-- Custom Script -->
        <script src="{{ asset('assets/dist/js/pages/mastertransaksi.js') }}"></script>
    @endpush

</x-layout>