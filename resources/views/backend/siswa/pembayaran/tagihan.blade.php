<x-layout title="Tagihan">

    <x-content-header>
        <div class="col-sm-6">
            <a href="{{ Auth::guard('siswa')->user() ? route('historytransaksi.index') : route('pembayaran.index', $siswa->nis) }}" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('siswa.index') }}">{{ __('Siswa') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('pembayaran.index', '5') }}">{{ __('Pembayaran') }}</a></li>
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
                        <div class="card col-md-6 mx-auto">
                            <div class="card-header text-center bg-blue" style="font-weight: 600">
                                {{ $siswa->nama }} <br/>
                                {{ $siswa->nis }} <br/>
                                {{ $siswa->kelas->kelas . ' ' . $siswa->kelas->jurusan->nama . ' ' . $siswa->kelas->urut_kelas }}
                            </div>
                            <div class="card-body">
                                <table class="table">
                                    <tbody>
                                        @foreach ($dana as $row)
                                        <tr>
                                            <th class="table-active py-1 my-1">{{ $row->dana }}</th>
                                            <td class="py-1 my-1">
                                                @php
                                                    $tagihan = $pembayaran->where('dana_awal_id', $row->id)
                                                                ->where('siswa_id', $siswa->id)
                                                                ->sum('nominal')
                                                @endphp
                                                <b>{{
                                                    format_rupiah(preg_replace("/[^0-9]/", "", $tagihan - $row->nominal))
                                                }}</b>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                            <div class="text-center mt-3 pt-3 bg-blue">
                                @php
                                    $dana = $dana->where('tahun_akademik_id', $siswa->tahun_akademik_id)->sum('nominal');
                                    $bayar = $pembayaran->where('siswa_id', $siswa->id)->sum('nominal');
                                    $total = $dana - $bayar;
                                @endphp
                                <p style="font-weight: bold">Total tagihan {{ format_rupiah($total) }}</p>
                            </div>
                        </div>
                            {{-- <table>
                                <div class="row">
                                        <label class="col-md-6"><b>NIS</b></label>
                                        <label class="mb-4">{{ $siswa->nis }}</label>
                                        <label class="col-md-6"><b>Nama</b></label>
                                        <label class="mb-4">{{ $siswa->nama }}</label>
                                        <label class="col-md-6"><b>Kelas</b></label>
                                        <label class="mb-4">{{ $siswa->kelas->kelas . ' ' . $siswa->kelas->jurusan->nama . ' ' . $siswa->kelas->urut_kelas }}</label>
                                        <label class="col-md-6"><b>Tahun Akademik</b></label>
                                        <label class="mb-4">{{ tahun($siswa->tahunakademik->awal). ' - ' .tahun($siswa->tahunakademik->akhir) }}</label>
                                        @foreach ($dana as $row)
                                        <label class="col-md-6"><b>{{ $row->dana }}</b></label>
                                        <label class="mb-4">
                                                            @php
                                                                $tagihan = $pembayaran->where('dana_awal_id', $row->id)
                                                                            ->where('siswa_id', $siswa->id)
                                                                            ->sum('nominal')
                                                            @endphp
                                                            {{
                                                                 format_rupiah(preg_replace("/[^0-9]/", "", $tagihan - $row->nominal))
                                                            }}
                                        </label>
                                        @endforeach
                                    </div>
                            </table> --}}
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
