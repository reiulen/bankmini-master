<x-layout title="Tagihan">

    <x-content-header>
        <div class="col-sm-6">
            <a href="{{ route('pembayaran.index', $siswa->nis) }}" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
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
                        <div class="col-md-10">
                            <table>
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
