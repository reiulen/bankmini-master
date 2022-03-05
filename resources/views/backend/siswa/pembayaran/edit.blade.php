<x-layout title="Edit Pembayaran">
    <x-content-header>

        <div class="col-sm-6">
            <a href="{{ route('pembayaran.index') }}" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('siswa.index') }}">{{ __('Siswa') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('pembayaran.index') }}">{{ __('Siswa') }}</a></li>
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
                                    <input type="text" class="form-control">
                                </div>
                                <div class="col-md-4">
                                    <label>Tipe Pembayaran</label>
                                    <select class="form-control pembayaran" name="pembayaran">
                                        <option selected disabled>- Pilih Pembayaran -</option>
                                        <option value="dsp">DSP</option>
                                        <option value="infaq10">Infaq Kelas 10</option>
                                        <option value="infaq11">Infaq Kelas 11</option>
                                        <option value="infaq12">Infaq Kelas 12</option>
                                        <option value="ki">Kunjungan Industri</option>
                                        <option value="pkl">Prakerin</option>
                                    </select>
                                </div>
                                <div class="col-md-4">
                                    <label>Tanggal Pembayaran</label>
                                    <input type="date" class="form-control">
                                </div>
                            </div>
                            <div class="form-group mb-0 row">
                                    <div class="col-md-6">
                                        <label>Keterangan</label>
                                        <textarea class="form-control"></textarea>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Nominal</label>
                                        <input type="text" id="nominal" class="form-control text-right bg-info border-0" style="font-size: 60px; height: 80px;">
                                    </div>
                                    <div class="col-md-6">
                                        <button class="btn btn-primary">Tambah</button>
                                    </div>
                                    <div class="col-md-6">
                                        <h5 class="bg-danger py-2 pl-2 mt-2">Sisa tagihan : Rp. 250.000</h5>
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