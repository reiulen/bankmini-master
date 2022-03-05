<x-layout>

    <x-content-header>
        <div class="col-sm-6">
            <a href="{{ route('pembayaran.index') }}" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('siswa.index') }}">{{ __('Siswa') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('pembayaran.index') }}">{{ __('Pembayaran') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Sisa Tagihan') }}</li>
        </x-breadcumb>
    </x-content-header>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card card-outline">
                    <div class="card-header">
                        <h5>Sisa Tagihan</h5>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="col-md-10">
                            <table>
                                <div class="row">
                                        <label class="col-md-6"><b>NIS</b></label>
                                        <label class="mb-4">19292020</label>
                                        <label class="col-md-6"><b>Nama</b></label>
                                        <label class="mb-4">Reihan Andika Abdirpaja Makmur</label>
                                        <label class="col-md-6"><b>Tahun Akademik</b></label>
                                        <label class="mb-4">2022-2023</label>
                                        <label class="col-md-6"><b>DSP</b></label>
                                        <label class="mb-4">Rp. 2.000.000</label>
                                        <label class="col-md-6"><b>Infaq</b></label>
                                        <label class="mb-4">Rp. 2.000.000</label>
                                        <label class="col-md-6"><b>Kunjungan Industri</b></label>
                                        <label class="mb-4">Rp. 2.000.000</label>
                                        <label class="col-md-6"><b>Prakerin</b></label>
                                        <label class="mb-4">Rp. 2.000.000</label>
                                    </div>
                            </table>
                        </div>
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

</x-layout>