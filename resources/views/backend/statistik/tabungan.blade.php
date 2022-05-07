<x-layout title="Statistik Tabungan">
    @push('css')
        <style>
        #tabungan {
            min-width: 310px;
            max-width: 100%;
        }
        </style>
    @endpush
    <x-content-header>
        <div class="col-sm-6">
            <h1>Statistik Tabungan</h1>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Statistik Tabungan') }}</li>
        </x-breadcumb>
    </x-content-header>

     <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card card-outline">
                    <div class="card-body">
                        <form>
                            <div class="row">
                                <div class="form-group col-md-3">
                                    <label>Laporan</label>
                                    <select class="form-control" name="laporan">
                                        <option value="tanggal">Harian</option>
                                        <option value="bulan">Bulanan</option>
                                        <option value="tahun">Tahunan</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-3">
                                    <label>Tipe Laporan</label>
                                    <select class="form-control" name="tipe">
                                        <option value="total">Total</option>
                                        <option value="nominal">Nominal</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-3">
                                    <label>Tanggal Awal</label>
                                    <input type="date" value="{{ date('Y-m-d') }}" name="tgl_awal" class="form-control" />
                                </div>
                                <div class="form-group col-md-3">
                                    <label>Tanggal Akhir</label>
                                    <input type="date" value="{{ date('Y-m-d') }}" name="tgl_akhir" class="form-control" />
                                </div>
                                <div class="form-group col-md-3">
                                    <div>
                                        <button class="btn btn-primary">Tampilkan</button>
                                    </div>
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

    <section class="content" id="tableTabungan" style="display: none">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <table class="table table-bordered table-hover table-sm mb-4" id="table-tabungan">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Laporan</th>
                                    <th>Debit</th>
                                    <th>Kredit</th>
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

    <section class="content chartTabungan" style="display: none;">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">

                    </div>
                    <div class="card-body">
                        <div id="tabungan"></div>
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

    @include('backend.lib.apex-chart')
    @include('backend.lib.datatable')
    @push('script')
        <script src="{{ asset('assets/dist/js/pages/statistik/tabungan.js') }}"></script>
    @endpush

</x-layout>
