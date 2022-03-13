<x-layout title="Edit Pembayaran">
    <x-content-header>

        <div class="col-sm-6">
            <a href="{{ route('pembayaran.index', ['3']) }}" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('siswa.index') }}">{{ __('Siswa') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('pembayaran.index', ['3']) }}">{{ __('Siswa') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Edit Pembayaran') }}</li>
        </x-breadcumb>

    </x-content-header>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card card-outline">
                    <div class="card-header">
                        <h5>Edit Pembayaran</h5>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <form action="#" method="post">
                            <div class="form-group mb-4 row ">
                                <div class="col-md-4">
                                    <label>Kode Pembayaran</label>
                                    <input type="text" name="kode" value="{{ old('kode') ? old('kode') : $pembayaran->kode }}" class="form-control">
                                </div>
                                <div class="col-md-4">
                                    <label>Tipe Pembayaran</label>
                                    <select class="form-control pembayaran" name="pembayaran_id">
                                        <option selected value="{{ old('pembayaran_id') ? old('pembayaran_id') : $pembayaran->pembayaran_id }}">- {{ old('pembayaran_id') ? old('pembayaran_id') : $pembayaran->dana_awals->dana_awal_tahun }} -</option>
                                        @foreach ($dana_awal as $row)
                                        <option value="{{ $row->id }}">{{ $row->dana_awal_tahun }}</option>
                                       @endforeach
                                    </select>
                                </div>
                                <div class="col-md-4">
                                    <label>Tanggal Pembayaran</label>
                                    <input type="date" name="tanggal" value="{{ old('tanggal') ? old('tanggal') : $pembayaran->tanggal }}" class="form-control">
                                </div>
                            </div>
                            <div class="form-group mb-0 row">
                                    <div class="col-md-6">
                                        <label>Keterangan</label>
                                        <textarea class="form-control" name="keterangan">{{ old('keterangan') ? old('keterangan') : $pembayaran->keterangan }}</textarea>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Nominal</label>
                                        <input type="text" id="nominal" name="nominal" value="{{ old('nominal') ? old('nominal') : $pembayaran->nominal }}" class="form-control text-right bg-info border-0" style="font-size: 60px; height: 80px;">
                                    </div>
                                    <div class="col-md-6">
                                        <h5 class="bg-danger py-2 pl-2 mt-2">Sisa tagihan : {{ old('sisa_tagihan') ? old('sisa_tagihan') : $pembayaran->sisa_tagihan }}</h5>
                                    </div>
                                    <div class="col-md-6">
                                        <button class="btn btn-primary">Tambah</button>
                                    </div>
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
        <script src="{{ asset('assets/dist/js/pages/transaksi.js') }}"></script>
        <script>
            $(document).ready(function(){
                $('.transaksi').select2();
                $('.nama').select2();
            });
        </script>
    @endpush

</x-layout>