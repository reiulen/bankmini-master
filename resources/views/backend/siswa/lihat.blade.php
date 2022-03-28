<x-layout title="Lihat Siswa">
    <x-content-header>
        <div class="col-sm-6">
            <a href="/siswa" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('siswa.index') }}">{{ __('Data Siswa') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Edit Siswa') }}</li>
        </x-breadcumb>
    </x-content-header>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                    <!-- /.card-header -->
                    <div class="row">
                        <div class="col-md-6">
                            <div>
                                <div class="card card-outline">
                                <div class="card-header" style="background-color: rgb(243, 242, 242);">
                                <h4>Data Siswa</h4>
                                </div>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="col-lg-6 text-center">
                                            <img src="{{ asset($siswa->foto) }}" class="rounded-circle img-thumbnail" style="height: 200px; width: 200px; object-fit:cover; object-position:top;">

                                            <div class="text-center mt-3 mb-2" style="font-size: 20px;">{{ $siswa->nama }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">NISN</label>
                                            <div class="mb-2 isi">{{ $siswa->nisn }}</div>
                                            <label class="text-primary">NIS</label>
                                            <div class="mb-2 isi">{{ $siswa->nis }}</div>
                                            <label class="text-primary">Tempat Lahir</label>
                                            <div class="mb-2 isi">{{ $siswa->tempat_lahir }}</div>
                                            <label class="text-primary">Tanggal Lahir</label>
                                            <div class="mb-2 isi">{{ $siswa->tgl_lahir }}</div>
                                            <label class="text-primary">Jenis Kelamin</label>
                                            <div class="mb-2 isi">{{ $siswa->jenis_kelamin }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Kelas</label>
                                            <div class="isi mb-2">{{ $siswa->kelas->kelas . ' ' . $siswa->kelas->jurusan->nama .' '. $siswa->kelas->urut_kelas }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Warga Negara</label>
                                            <div class="isi mb-2">{{ $siswa->warga_negara }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Agama</label>
                                            <div class="isi mb-2">{{ $siswa->agama }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Tempat lahir</label>
                                            <div class="isi mb-2">{{ $siswa->tempat_lahir }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Tanggal Lahir</label>
                                            <div class="isi mb-2">{{ tanggal($siswa->tgl_lahir) }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Anak Ke</label>
                                            <div class="isi mb-2">{{ $siswa->anak_ke }}</div>
                                        </div>
                                    </div>
                                </div>
                              </div>
                            </div>
                            <br/>
                            <div>
                              <div class="card card-outline isi2">
                                <div class="card-header" style="background-color: rgb(243, 242, 242);">
                                    <h4>Riwayat Pendidikan</h4>
                                </div>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="col-lg-6">
                                            <label class="text-primary">Asal Sekolah</label>
                                            <div class="isi mb-2">{{ $siswa->asal_sekolah }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Alamat Sekolah</label>
                                            <div class="isi mb-2">{{ $siswa->alamat_sekolah }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">No Ijazah</label>
                                            <div class="isi mb-2">{{ $siswa->no_ijazah }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Tahun Lulus</label>
                                            <div class="isi mb-2">{{ $siswa->tahun_lulus }}</div>
                                        </div>
                                    </div>
                                </div>
                              </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div>
                                <div class="card card-outline">
                                <div class="card-header" style="background-color: rgb(243, 242, 242);">
                                    <h4>Data Orangtua</h4>
                                </div>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="col-lg-6">
                                            <label class="text-primary">Nama Ayah</label>
                                            <div class="isi mb-2">{{ $siswa->ayah }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Nama Ibu</label>
                                            <div class="isi mb-2">{{ $siswa->ibu }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Pekerjaan Ayah</label>
                                            <div class="isi mb-2">{{ $siswa->pekerjaan_ayah }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Pekerjaan Ibu</label>
                                            <div class="isi mb-2">{{ $siswa->pekerjaan_ibu }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Alamat Orangtua</label>
                                            <div class="isi mb-2">{{ $siswa->alamat_ortu }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Nama Wali</label>
                                            <div class="isi mb-2">{{ $siswa->wali }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Pekerjaan Wali</label>
                                            <div class="isi mb-2">{{ $siswa->kerja_wali }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Hubungan Dengan Wali</label>
                                            <div class="isi mb-2">{{ $siswa->hubungan_wali }}</div>
                                        </div>
                                    </div>
                                </div>
                              </div>
                            </div>
                            <br/>
                            <div>
                                <div class="card card-outline isi2 ">
                                <div class="card-header" style="background-color: rgb(243, 242, 242);">
                                    <h4>Data Keuangan</h4>
                                </div>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="col-lg-6">
                                            <label class="text-primary">Status</label>
                                            <div class="isi mb-2"><span class="badge {{ $siswa->status == 'Aktif' ? 'badge-success' : 'badge-danger' }} rounded- py-2 px-3">{{ $siswa->status }}</span></div>
                                        </div>
                                         @foreach ($dana as $row)
                                         <div class="col-lg-6">
                                            <label class="text-primary">Sisa {{ $row->dana }}</label>
                                            <div class="isi mb-2">
                                                            @php
                                                                $tagihan = $pembayaran->where('dana_awal_id', $row->id)
                                                                            ->where('siswa_id', $siswa->id)
                                                                            ->sum('nominal')
                                                            @endphp
                                                            {{
                                                                 format_rupiah(preg_replace("/[^0-9]/", "", $tagihan - $row->nominal))
                                                            }}
                                            </div>
                                        </div>
                                        @endforeach
                                        {{-- <div class="col-lg-6">
                                            <label class="text-primary">Sisa Infaq</label>
                                            <div class="isi mb-2">{{ $siswa->sisa_infaq }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Sisa Kunjungan Industri</label>
                                            <div class="isi mb-2">{{ $siswa->sisa_ki }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Sisa Prakerin</label>
                                            <div class="isi mb-2">{{ $siswa->sisa_pkl }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Sisa Kelas 10</label>
                                            <div class="isi mb-2">{{ $siswa->sisa_kelas_10 }}</div>
                                        </div>
                                        <div class="col-lg-6">
                                            <label class="text-primary">Sisa Kelas 11</label>
                                            <div class="isi">{{ $siswa->sisa_kelas_11 }}</div>
                                        </div> --}}
                                    </div>
                                </div>
                              </div>
                            </div>
                        </div>
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
