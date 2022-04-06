<x-layout title="Tambah Pembayaran">

    <x-content-header>
        <div class="col-sm-6">
            <a href="{{ route('pembayaran.index', $siswa->nis) }}" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('siswa.index') }}">{{ __('Siswa') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('pembayaran.index', $siswa->nis) }}">{{ __('Pembayaran') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Tambah Pembayaran') }}</li>
        </x-breadcumb>

    </x-content-header>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card card-outline">
                    <div class="card-header">
                        <h5>Tambah Pembayaran</h5>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <form action="{{ route('pembayaran.store', $siswa->nis) }}" method="post">
                            @csrf
                            <div class="form-group mb-4 row">
                                <div class="col-md-6">
                                    <label>Kode Pembayaran</label>
                                    @php
                                        if ($pembayaran) {
                                            $proses = substr($pembayaran->kode, 8) + 1;
                                            $bil = sprintf("%05s", $proses);
                                            $kode = 'PS' . date('mY') . $bil;
                                        }else {
                                            $kode = 'PS' . date('mY') . '00001';
                                        }
                                    @endphp
                                    <input type="text" name="kode" value="{{ $kode }}" class="form-control" readonly required>
                                    <x-session-error name="kode"></x-session-error>
                                </div>
                                <div class="col-md-6">
                                    <label>Pembayaran</label>
                                    <select class="form-control pembayaran" name="pembayaran" required>
                                       <option selected disabled>- Pilih Pembayaran -</option>
                                       @foreach ($dana as $row)
                                        <option value="{{ $row->id }}">{{ $row->dana }}</option>
                                       @endforeach
                                    </select>
                                    <x-session-error name="pembayaran"></x-session-error>
                                </div>
                            </div>
                            <div class="form-group mb-0 row">
                                <div class="col-md-6">
                                    <label>Keterangan</label>
                                    <textarea class="form-control" name="keterangan" required>-</textarea>
                                    <x-session-error name="keterangan"></x-session-error>
                                </div>
                                <div class="col-md-6">
                                    <label>Nominal</label>
                                    <input type="text" id="nominal" name="nominal" class="form-control text-right bg-info border-0 @if(session('error_nominal')) is-invalid @enderror" style="font-size: 60px; height: 80px;" required>
                                    @if(session('error_nominal'))
                                    <span class="text-danger">{{ session('error_nominal') }}</span>
                                    @endif
                                    <x-session-error name="nominal"></x-session-error>
                                </div>
                                <div class="col-md-6 mt-2">
                                    <button class="btn btn-primary">Tambah</button>
                                </div>
                                <div class="col-md-6">
                                    <h5 class="bg-danger py-2 pl-2 mt-2">Sisa tagihan : <span class="sisa-tagihan">Rp. 0</span></h5>
                                </div>
                            </div>
                        </form>
                            <br>
                            <div>
                                <label>Riwayat Pembayaran Terbaru</label>
                                <table id="example1" class="table table-bordered  table-hover">
                                    <thead>
                                        <tr>
                                            <th>Tanggal</th>
                                            <th>Kode</th>
                                            <th>Pembayaran</th>
                                            <th>Keterangan</th>
                                            <th>Nominal</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($historypembayaran as $row)
                                        <tr>
                                            <td>{{ tanggal($row->created_at) }}</td>
                                            <td>{{ $row->kode }}</td>
                                            <td>{{ $row->danaawal->dana }}</td>
                                            <td>{{ $row->keterangan }}</td>
                                            <td>{{ format_rupiah($row->nominal) }}</td>
                                        </tr>
                                        @endforeach
                                    </tbody>
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

    @include('backend.lib.select2')
    @include('backend.lib.datatable')
    @push('script')
    <script>
        const nis = "{{ $siswa->nis }}";
    </script>
    <script src="{{ asset('assets/dist/js/pages/pembayaran/create-update.js') }}"></script>
    @endpush
</x-layout>
