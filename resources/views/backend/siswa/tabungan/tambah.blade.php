<x-layout title="Tambah Tabungan">

    <x-content-header>
        <div class="col-sm-6">
            <a href="{{ route('tabungan.index', $siswa->nis) }}" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('siswa.index') }}">{{ __('Data Siswa') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('tabungan.index', '3') }}">{{ __('Tabungan') }}</a></li>
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
                        <form action="{{ route('tabungan.store', $siswa->nis) }}" method="post">
                            @csrf
                            <input type="hidden" name="cetak" value="0"/>
                            <div class="form-group mb-4 row ">
                                <div class="col-md-6">
                                    @php
                                        if ($historytabungan) {
                                            $proses = substr($historytabungan->kode, 8) + 1;
                                            $bil = sprintf("%05s", $proses);
                                            $kode = 'TS' . date('mY') . $bil;
                                        }else {
                                            $kode = 'TS' . date('mY') . '00001';
                                        }
                                    @endphp
                                    <label>Kode Tabungan</label>
                                    <input type="text" value="{{ $kode }}" class="form-control" name="kode" readonly required>
                                    <x-session-error name="kode"></x-session-error>
                                </div>
                                <div class="col-md-6">
                                    <label>Tipe Transaksi</label>
                                    <div class="input">
                                        <input type="radio" id="debit" name="tipe" value="1"  checked>
                                        <label for="debit" class="mr-2">Debit</label>
                                        <input type="radio" id="kredit" name="tipe" value="2" {{ $tabungan->first() ? $tabungan->first()->sisa_saldo == 0 ? 'Disabled' : ' ' : 'disabled' }}>
                                        <label for="kredit" class="mr-2">Kredit</label>
                                    </div>
                                    <x-session-error name="input"></x-session-error>
                                </div>
                            </div>
                            <div class="form-group row mb-4">
                                <div class="col-md-6">
                                    <label>Keterangan</label>
                                    <textarea class="form-control" name="keterangan" required>-</textarea>
                                    <x-session-error name="keterangan"></x-session-error>
                                </div>
                                <div class="col-md-6">
                                    <div class="col-md-12">
                                        <label>Nominal</label>
                                        <input type="text" id="nominal" name="nominal" class="form-control text-right bg-info border-0 @if(session('error_nominal')) is-invalid @enderror" style="font-size: 60px; height: 80px;" required>
                                        @if(session('error_nominal'))
                                        <span class="text-danger">{{ session('error_nominal') }}</span>
                                        @endif
                                        <x-session-error name="nominal"></x-session-error>
                                    </div>
                                    <div class="col-md-12">
                                        <h5 class="bg-danger py-2 pl-2 mt-2">Sisa Saldo : <span class="sisa-saldo">Rp. 0</span></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mb-4 row ">
                                <div class="col-md-4">
                                    <button class="btn btn-primary"><i class="fa fa-save"></i>&nbsp;Simpan</button>
                                    <button class="btn btn-secondary btn-save-cetak"><i class="fa fa-file-pdf"></i>&nbsp;Simpan dan Cetak</button>
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
    <script>
        const sisaSaldo = "{{ $tabungan->first() ? $tabungan->first()->sisa_saldo : 0 }}";
        const inputNominal = "0";
    </script>
    <script src="{{ asset('assets/dist/js/pages/tabungan/create-update.js') }}"></script>
    @endpush

</x-layout>
