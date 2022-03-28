<x-layout title="Tambah Siswa">
    @include('backend.lib.select2')
    @push('css')
        <link rel="stylesheet" href="{{ asset('assets/dist/css/stylemultipage.css') }}" />
    @endpush


    <x-content-header>
        <div class="col-sm-6">
            <a href="{{ route('siswa.index') }}" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('siswa.index') }}">{{ __('Data Siswa') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Tambah Siswa') }}</li>
        </x-breadcumb>
    </x-content-header>


    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">

                <div class="card card-outline">
                    <div class="card-header">
                        <h5>Tambah Siswa</h5>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="bar-proses">
                            <div class="step">
                              <p>Hal-1</p>
                              <div class="bullet">
                                <span>1</span>
                              </div>
                              <div class="check fas fa-check"></div>
                            </div>
                            <div class="step">
                              <p>Hal-2</p>
                              <div class="bullet">
                                <span>2</span>
                              </div>
                              <div class="check fas fa-check"></div>
                            </div>
                            <div class="step">
                              <p>Hal-3</p>
                              <div class="bullet">
                                <span>3</span>
                              </div>
                              <div class="check fas fa-check"></div>
                            </div>
                            <div class="step">
                              <p>Hal-4</p>
                              <div class="bullet">
                                <span>4</span>
                              </div>
                              <div class="check fas fa-check"></div>
                            </div>
                          </div>
                          <div class="form-outer">
                            <form action="{{ route('siswa.store') }}" method="post" enctype="multipart/form-data">
                              @csrf
                              <!-- page 1 -->
                              <div class="page slide-page">
                                <div class="field-1">
                                  <div class="row">
                                    <div class="col-md-6">
                                        <div class="text-center" style="position: relative;">
                                          <h5>Foto</h5>
                                          <img src="{{ asset('upload/foto/siswa/siswa.png') }}" class="rounded-circle img-thumbnail img-preview" style="height: 210px; width: 210px; object-fit:cover; object-fit:cover; object-position:top;" role="button">
                                          <input type="file" onchange="gambarpreview()" value="{{ old('value') }}" class="form-control img-thumbnail gambar-file input-gambar @error('foto') is-invalid @enderror" name="foto"  id="customFile">
                                        </div>
                                        <div class="form-group mt-3">
                                          <label >Nama</label>
                                          <input class="form-control @error('nama') is-invalid @enderror" type="text" value="{{ old('nama') }}" name="nama" >
                                          <small class="text-danger"><i>*Wajib di isi</i></small>
                                          <x-session-error name="nama"></x-session-error>
                                        </div>
                                        <div class="form-group mt-3">
                                          <label >NISN</label>
                                          <input class="form-control @error('nisn') is-invalid @enderror" value="{{ old('nisn') }}" type="text" name="nisn" >
                                          <small class="text-danger"><i>*Wajib di isi</i></small>
                                          <x-session-error name="nisn"></x-session-error>
                                        </div>
                                      </div>
                                      <div class="col-md-6">
                                        <div class="form-group mt-3">
                                          <label >NIS</label>
                                          <input class="form-control @error('nis') is-invalid @enderror" value="{{ old('nis') }}" type="text" name="nis" >
                                          <small class="text-danger"><i>*Wajib di isi</i></small>
                                          <x-session-error name="nis"></x-session-error>
                                        </div>
                                        <div class="form-group mt-3">
                                          <label >Tahun Akademik</label>
                                          <select class="form-control select2 @error('tahun_akademik') is-invalid @enderror" name="tahun_akademik" >
                                            <option disabled selected>- Pilih Tahun Akademik -</option>
                                            @foreach ($tahunakademik as $row)
                                            <option value="{{ $row->id }}">{{ tahun($row->awal) }} - {{ tahun($row->akhir) }}</option>
                                            @endforeach
                                          </select>
                                          <small class="text-danger"><i>*Wajib di isi</i></small>
                                          <x-session-error name="tahun_masuk"></x-session-error>
                                        </div>
                                        <div class="form-group mt-3">
                                          <label >Jenis Kelamin</label>
                                          <select class="form-control @error('jenis_kelamin') is-invalid @enderror" name="jenis_kelamin" >
                                          <option selected disabled>- Pilih Jenis Kelamin -</option>
                                          <option value="Laki-Laki">Laki-Laki</option>
                                            <option value="Perempuan">Perempuan</option>
                                          </select>
                                          <small class="text-danger"><i>*Wajib di isi</i></small>
                                          <x-session-error name="jenis_kelamin"></x-session-error>
                                        </div>
                                        <div class="form-group mt-3">
                                          <label >Kelas</label>
                                          <select class="form-control select2 @error('kelas_id') is-invalid @enderror" name="kelas_id" >
                                            <option disabled selected>- Pilih Kelas -</option>
                                            @foreach ($kelas as $row)
                                            <option value="{{ $row->id }}">{{ $row->kelas . ' ' . $row->jurusan->jurusan . ' (' . $row->jurusan->nama . $row->urut_kelas . ')' }}</option>
                                            @endforeach
                                          </select>
                                          <small class="text-danger"><i>*Wajib di isi</i></small>
                                          <x-session-error name="kelas_id"></x-session-error>
                                        </div>
                                        <div class="col-12 d-flex justify-content-md-end mb-5  ">
                                          <button class="firstNext btn btn-primary">Selanjutnya</button>
                                        </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <!-- page 2 -->
                              <div class="page">
                                <div class="field">
                                  <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label>Tempat Lahir</label>
                                        <input class="form-control @error('tempat_lahir') is-invalid @enderror" value="{{ old('tempat_lahir') }}" type="text" name="tempat_lahir" >
                                        <small class="text-danger"><i>*Wajib di isi</i></small>
                                        <x-session-error name="tempat_lahir"></x-session-error>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                      <label >Tanggal Lahir</label>
                                        <input type="text" name="tgl_lahir" class="form-control @error('tgl_lahir') is-invalid @enderror" value="{{ old('tgl_lahir') }}">
                                        <small class="text-danger"><i>*Wajib di isi</i></small>
                                        <x-session-error name="tgl_lahir"></x-session-error>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label >Alamat</label>
                                        <textarea class="form-control @error('alamat') is-invalid @enderror" name="alamat" cols="3">{{ old('alamat') }}</textarea>
                                        <x-session-error name="alamat"></x-session-error>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label>Anak Ke</label>
                                        <input class="form-control @error('anak ke') is-invalid @enderror" type="text" value="{{ old('anak_ke') }}" name="anak_ke">
                                        <x-session-error name="anak_ke"></x-session-error>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                      <label >Warga Negara</label>
                                        <select class="form-control @error('warga_negara') is-invalid @enderror" name="warga_negara" >
                                          <option selected disabled>- Pilih Warga Negara -</option>
                                          <option value="WNI">WNI</option>
                                          <option value="WNA">WNA</option>
                                        </select>
                                        <small class="text-danger"><i>*Wajib di isi</i></small>
                                        <x-session-error name="warga_negara"></x-session-error>
                                    </div>
                                    <div class="col-md-6">
                                      <label >Agama</label>
                                        <select class="form-control @error('agama') is-invalid @enderror" name="agama" >
                                            <option selected disabled>- Pilih Agama -</option>
                                            <option value="Islam">Islam</option>
                                            <option value="Kristen Protestan">Kristen Protestan</option>
                                            <option value="Kristen Katholik">Kristen Katholik</option>
                                            <option value="Hindu">Hindu</option>
                                            <option value="Buddha">Buddha</option>
                                            <option value="Konghucu">Konghucu</option>
                                        </select>
                                        <small class="text-danger"><i>*Wajib di isi</i></small>
                                        <x-session-error name="agama"></x-session-error>
                                    </div>
                                  </div>
                                  <div class="row">
                                    <div class="col-md-6">
                                      <button class="prev-1 prev btn btn-primary">Sebelumnya</button>
                                    </div>
                                    <div class="col-md-6">
                                      <button class="next-1 next btn btn-primary">Selanjutnya</button>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <!-- page 3 -->
                              <div class="page">
                                <div class="field">
                                  <div class="row">
                                    <div class="col-md-4 mb-3">
                                      <label >Asal Sekolah</label>
                                      <input class="form-control @error('asal_sekolah') is-invalid @enderror" value="{{ old('asal_sekolah') }}" type="text" name="asal_sekolah" >
                                      <small class="text-danger"><i>*Wajib di isi</i></small>
                                      <x-session-error name="asal_sekolah"></x-session-error>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                      <label >No. Ijazah</label>
                                      <input class="form-control @error('no_ijazah') is-invalid @enderror" value="{{ old('no_ijazah') ? old('no_ijazah') : '-' }}" type="text" name="no_ijazah" >
                                      <x-session-error name="no_ijazah"></x-session-error>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                      <label >Tahun Lulus</label>
                                      <input class="form-control @error('tahun_lulus') is-invalid @enderror" type="text" value="{{ old('tahun_lulus') }}" name="tahun_lulus" >
                                      <small class="text-danger"><i>*Wajib di isi</i></small>
                                      <x-session-error name="tahun_lulus"></x-session-error>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                      <label >Alamat Sekolah</label>
                                      <textarea class="form-control @error('alamat_sekolah') is-invalid @enderror" name="alamat_sekolah"  cols="30">{{ old('alamat_sekolah') ? old('alamat_sekolah') : '-' }}</textarea>
                                      <x-session-error name="alamat_sekolah"></x-session-error>
                                    </div>
                                  </div>
                                  <div class="row">
                                    <div class="col-md-6">
                                      <button class="prev-2 btn-prev btn btn-primary">Sebelumnya</button>
                                    </div>
                                    <div class="col-md-6">
                                      <button class="next-2 btn-next btn btn-primary">Selanjutnya</button>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <!-- page 4 -->
                              <div class="page">
                                <div class="field">
                                    <div class="form-group row">
                                        <div class="col-md-4">
                                            <label >Nama Ayah</label>
                                            <input class="form-control" value="{{ old('ayah') }}" type="text" name="ayah" >
                                            <x-session-error name="ayah"></x-session-error>
                                        </div>
                                        <div class="col-md-4">
                                            <label >Nama Ibu</label>
                                            <input class="form-control" value="{{ old('ibu') }}" type="text" name="ibu" >
                                            <x-session-error name="ibu"></x-session-error>
                                        </div>
                                        <div class="col-md-4">
                                        <label >Nama Wali</label>
                                            <input class="form-control" value="{{ old('nama_wali') }}" type="text" name="nama_wali" >
                                            <x-session-error name="nama_wali"></x-session-error>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-4">
                                            <label >Pekerjaan Ayah</label>
                                            <select class="form-control select2" name="kerja_ayah">
                                                @if (old('kerja_ayah'))
                                                <option value="{{ old('kerja_ayah') }}" selected>{{  old('kerja_ayah') }}</option>
                                                @else
                                                <option selected disabled>- Pilih Pekerjaan Ayah -</option>
                                                @endif
                                                @foreach ($pekerjaan as $row)
                                                <option value="{{ $row->pekerjaan }}">{{$row->pekerjaan}}</option>
                                                @endforeach
                                            </select>
                                            <x-session-error name="kerja_ayah"></x-session-error>
                                        </div>
                                        <div class="col-md-4">
                                            <label >Pekerjaan Ibu</label>
                                            <select class="form-control select2" name="kerja_ibu">
                                            @if (old('kerja_ibu'))
                                            <option value="{{ old('kerja_ibu') }}" selected>{{  old('kerja_ibu') }}</option>
                                            @else
                                                <option selected disabled>- Pilih  Pekerjaan Wali -</option>
                                            @endif
                                            @foreach ($pekerjaan as $row)
                                            <option value="{{ $row->pekerjaan }}">{{$row->pekerjaan}}</option>
                                            @endforeach
                                            </select>
                                            <x-session-error name="kerja_ibu"></x-session-error>
                                        </div>
                                        <div class="col-md-4">
                                        <label >Pekerjaan Wali</label>
                                            <select class="form-control select2" name="kerja_wali">
                                            @if (old('kerja_wali'))
                                                <option value="{{ old('kerja_wali') }}" selected>{{  old('kerja_wali') }}</option>
                                                @else
                                                <option selected disabled>- Pekerjaan Wali -</option>
                                            @endif
                                            @foreach ($pekerjaan as $row)
                                            <option value="{{ $row->pekerjaan }}">{{$row->pekerjaan}}</option>
                                            @endforeach
                                        </select>
                                            <x-session-error name="kerja_wali"></x-session-error>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <div class="col-md-4">
                                            <label >Alamat Orang Tua</label>
                                            <textarea class="form-control" name="alamat_ortu"  cols="30">{{ old('alamat_ortu') }}</textarea>
                                            <x-session-error name="alamat_ortu"></x-session-error>
                                        </div>
                                        <div class="col-md-4">
                                        <label >Alamat Wali</label>
                                            <textarea class="form-control" name="alamat_wali"  cols="30">{{ old('alamat_wali') }}</textarea>
                                            <x-session-error name="alamat_wali"></x-session-error>
                                        </div>
                                        <div class="col-md-4">
                                        <label >Hubungan Dengan Wali</label>
                                            <input class="form-control" value="{{ old('hubungan_wali') }}" type="text" name="hubungan_wali" >
                                            <x-session-error name="hubungan_wali"></x-session-error>
                                        </div>
                                    </div>
                                  <div class="row">
                                    <div class="col-md-6">
                                      <button class="prev-3 prev btn btn-primary">Sebelumnya</button>
                                    </div>
                                    <div class="col-md-6">
                                      <button class="simpan next btn btn-primary">Simpan</button>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="page">
                              </div>
                            </form>
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

      @push('script')
      <script src="{{ asset('assets/plugins/inputmask/inputmask.js') }}"></script>
      <script src="{{ asset('assets/dist/js/pages/siswa/create-update.js') }}"></script>
      @endpush
</x-layout>
