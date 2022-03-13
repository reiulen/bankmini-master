<x-layout title="Edit Tabungan">
    <x-content-header>
        <div class="col-sm-6">
            <a href="{{ route('tabungan.index', '4') }}" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('siswa.index') }}">{{ __('Data Siswa') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('tabungan.index', '4') }}">{{ __('Tabungan') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Edit Tabungan') }}</li>
        </x-breadcumb>
    </x-content-header>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card card-outline">
                    <div class="card-header">
                        <h5>Edit Tabungan</h5>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <form action="#" method="post">
                            <div class="form-group mb-4 row ">
                                <div class="col-md-6">
                                    <div>
                                        <label>Tanggal</label>
                                        <input type="date" name="tanggal" value="{{ old('tanggal') ? old('tanggal') : $tabungan->tanggal }}" class="form-control">
                                    </div>
                                   
                                    <div>
                                        <label>Keterangan</label>
                                        <textarea class="form-control" name="keterangan">{{ old('keterangan') ? old('keterangan') : $tabungan->keterangan }}</textarea>
                                    </div> 
                                </div>
                                <div class="col-md-6">
                                    <div>
                                        <label>Kode Tabungan</label>
                                        <input type="text" value="{{ old('kode') ? old('kode') : $tabungan->kode }}" name="kode" class="form-control">
                                    </div>
                                    <div>
                                        <label>Tipe Tabungan</label>
                                        <select class="form-control" name="tipe">
                                            <option selected value="{{ old('tipe') ? old('tipe') : $siswa->tipe }}">- Pilih Tipe -</option>
                                            <option value="kredit">Kredit</option>
                                            <option value="debet">Debet</option>
                                        </select>
                                    </div>
                                    <div class="">
                                        <label>Nominal</label>
                                        <input type="text" id="nominal" class="form-control text-right bg-info border-0" name="nominal" value="{{ old('nominal') ? old('nominal') : $siswa->nominal }}" style="font-size: 60px; height: 80px;">
                                    </div>
                                    <div class="col-md-12">
                                        <h5 class="bg-danger py-2 pl-2 mt-2">Sisa Saldo : Rp. 250.000</h5>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mb-4 row ">
                                <div class="col-md-4">
                                    <button class="btn btn-primary">Simpan</button>
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