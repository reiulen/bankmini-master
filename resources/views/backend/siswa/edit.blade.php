<x-layout title="Edit Siswa">

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
          <li class="breadcrumb-item active">{{ __('Edit Siswa') }}</li>
      </x-breadcumb>
  </x-content-header>


  <!-- Main content -->
  <section class="content">
      <div class="container-fluid">
          <div class="row">
          <div class="col-12">
            
              <div class="card card-outline">
                  <div class="card-header">
                      <h5>Edit Siswa</h5>
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
                          <form action="{{ route('siswa.update', $siswa->nis) }}" method="post">
                            @csrf
                            @method('put')
                            <!-- page 1 -->
                            <div class="page slide-page">
                              <div class="field-1">
                                <div class="row">
                                  <div class="col-md-6">  
                                      <div class="text-center">
                                        <img src="{{ asset('assets/dist/img/jeni2.jpeg') }}" class="rounded-circle img-thumbnail" style="height: 180px" role="button" data-toggle="modal" data-target="#updateFoto">  
                                      </div>
                                      <div class="form-group mt-3">
                                        <label for="">Nama</label>
                                        <input class="form-control" type="text" value="{{ old('nama') ? old('nama') : $siswa->nama }}" name="nama" >
                                        <x-session-error name="nama"></x-session-error>
                                      </div>
                                      <div class="form-group mt-3">
                                        <label for="">NISN</label>
                                        <input class="form-control" value="{{ old('nisn') ? old('nisn') : $siswa->nisn }}" type="text" name="nisn" >
                                        <x-session-error name="nisn"></x-session-error>
                                      </div>
                                    </div>
                                    <div class="col-md-6">
                                      <div class="form-group mt-3">
                                        <label for="">NIS</label>
                                        <input class="form-control" value="{{ old('nis') ? old('nis') : $siswa->nis }}" type="text" name="nis" >
                                        <x-session-error name="nis"></x-session-error>
                                      </div>
                                      <div class="form-group mt-3">
                                        <label for="">Tahun Masuk</label>
                                        <input class="form-control" value="{{ old('tahun_masuk') ? old('tahun_masuk') : $siswa->tahun_masuk }}" type="text" name="tahun_masuk" >
                                        <x-session-error name="tahun_masuk"></x-session-error>
                                      </div>
                                      <div class="form-group mt-3">
                                        <label for="">Jenis Kelamin</label>
                                        <select class="form-control" name="jenis_kelamin" >
                                        <option value="{{ old('jenis_kelamin') ? old('jenis_kelamin') : $siswa->jenis_kelamin }}" selected>{{ old('jenis_kelamin') ? old('jenis_kelamin') : $siswa->jenis_kelamin }}</option>
                                        <option value="Laki-Laki">Laki-Laki</option>
                                          <option value="Perempuan">Perempuan</option>
                                        </select>
                                        <x-session-error name="jenis_kelamin"></x-session-error>
                                      </div>
                                      <div class="form-group mt-3">
                                        <label for="">Kelas</label>
                                        <select class="form-control select2" name="kelas_id">
                                          @php
                                          $kls = DB::table('kelas')->find(old('kelas'));
                                          @endphp
                                          <option value="{{ old('kelas') ? old('kelas') : $siswa->kelas_id }}" selected>{{ old('kelas') ? $kls->kelas . ' ' . $kls->nama_kelas . ' ' . $kls->urut_kelas : $siswa->kelas->kelas . ' ' . $siswa->kelas->nama_kelas . ' ' . $siswa->kelas->urut_kelas }}</option>
                                          @foreach ($kelas as $row)
                                          <option value="{{ $row->id }}">{{ $row->kelas }} {{ $row->nama_kelas }} {{ $row->urut_kelas }}</option>
                                          @endforeach
                                        </select>
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
                                  <div class="col-md-6 mb-4">
                                    <label for="">Tempat Lahir</label>
                                      <input class="form-control" value="{{ old('tempat_lahir') ? old('tempat_lahir') : $siswa->tempat_lahir }}" type="text" name="tempat_lahir" >
                                      <x-session-error name="tempat_lahir"></x-session-error>
                                  </div>
                                  <div class="col-md-6 mb-4">
                                    <label for="">Tanggal Lahir</label>
                                      <input class="form-control" value="{{ old('tgl_lahir') ? old('tgl_lahir') : $siswa->tgl_lahir }}" type="date" name="tgl_lahir" > 
                                      <x-session-error name="tgl_lahir"></x-session-error>
                                  </div>
                                  <div class="col-md-6 mb-4">
                                    <label for="">Alamat</label>
                                      <textarea class="form-control" name="alamat" cols="3">{{ old('alamat') ? old('alamat') : $siswa->alamat }}</textarea>
                                      <x-session-error name="alamat"></x-session-error>
                                  </div>
                                  <div class="col-md-6 mb-4">
                                    <label for="">Anak ke</label>
                                      <input class="form-control" type="text" value="{{ old('anak_ke') ? old('anak_ke') : $siswa->anak_ke }}" name="anak_ke">
                                      <x-session-error name="anak_ke"></x-session-error>
                                  </div>
                                  <div class="col-md-6 mb-4">
                                    <label for="">Warga Negara</label>
                                      <select class="form-control" name="warga_negara" >
                                        <option value="{{ old('warga_negara') ? old('warga_negara') : $siswa->warga_negara }}" selected>{{ old('warga_negara') ? old('warga_negara') : $siswa->warga_negara }}</option>
                                        <option value="WNI">WNI</option>
                                        <option value="WNA">WNA</option>
                                      </select>
                                      <x-session-error name="warga_negara"></x-session-error>
                                  </div>
                                  <div class="col-md-6">
                                    <label for="">Agama</label>
                                      <select class="form-control" name="agama" >
                                          <option value="{{ old('agama') ? old('agama') : $siswa->agama }}" selected>{{ old('agama') ? old('agama') : $siswa->agama }}</option>
                                          <option value="Islam">Islam</option>
                                          <option value="Kristen Protestan">Kristen Protestan</option>
                                          <option value="Kristen Katholik">Kristen Katholik</option>
                                          <option value="Hindu">Hindu</option>
                                          <option value="Buddha">Buddha</option>
                                          <option value="Konghucu">Konghucu</option>
                                      </select>
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
                                  <div class="col-md-4 mb-4">
                                    <label for="">Asal Sekolah</label>
                                    <input class="form-control" value="{{ old('asal_sekolah') ? old('asal_sekolah') : $siswa->asal_sekolah }}" placeholder="Asal Sekolah" type="text" name="asal_sekolah" >
                                    <x-session-error name="asal_sekolah"></x-session-error>
                                  </div>
                                  <div class="col-md-4 mb-4">
                                    <label for="">No Ijazah</label>
                                    <input class="form-control" value="{{ old('no_ijazah') ? old('no_ijazah') : $siswa->no_ijazah }}" type="text" name="no_ijazah" >
                                    <x-session-error name="no_ijazah"></x-session-error>
                                  </div>
                                  <div class="col-md-4 mb-4">
                                    <label for="">Tahun Lulus</label>
                                    <input class="form-control" type="text" value="{{ old('tahun_lulus') ? old('tahun_lulus') : $siswa->tahun_lulus }}" name="tahun_lulus" >
                                    <x-session-error name="tahun_lulus"></x-session-error>
                                  </div>
                                  <div class="col-md-6 mb-4">
                                    <label for="">Alamat Sekolah</label>
                                    <textarea class="form-control" name="alamat_sekolah"  cols="30">{{ old('alamat_sekolah') ? old('alamat_sekolah') : $siswa->alamat_sekolah }}</textarea>
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
                                <div class="row">
                                  <div class="col-md-4 mb-4">
                                    <div class="form-group">
                                      <label for="">Nama Ayah</label>
                                      <input class="form-control" value="{{ old('ayah') ? old('ayah') : $siswa->ayah }}" type="text" name="ayah" >
                                      <x-session-error name="ayah"></x-session-error>
                                    </div>
                                  </div>
                                  <div class="col-md-4 mb-4">
                                    <div class="form-group">
                                      <label for="">Nama Ibu</label>
                                      <input class="form-control" value="{{ old('ibu') ? old('ibu') : $siswa->ibu }}" type="text" name="ibu" >
                                      <x-session-error name="ibu"></x-session-error>
                                    </div>
                                  </div>
                                  <div class="col-md-4 mb-4">
                                    <label for="">Nama Wali</label>
                                      <input class="form-control" value="{{ old('nama_wali') ? old('nama_wali') : $siswa->wali }}" type="text" name="nama_wali" >
                                      <x-session-error name="nama_wali"></x-session-error>
                                  </div>
                                  <div class="col-md-4 mb-4">
                                    <label for="">Pekerjaan Ayah</label>
                                      <select class="form-control select2" name="kerja_ayah">
                                          @if (old('kerja_ayah'))
                                            <option value="{{ old('kerja_ayah') }}" selected disabled>{{ old('kerja_ayah') }}</option>
                                          @else
                                            <option selected disabled>- {{ $siswa->pekerjaan_ayah }} -</option>
                                          @endif
                                          @foreach ($pekerjaan as $row)
                                          <option value="{{ $row->pekerjaan }}">{{$row->pekerjaan}}</option>
                                          @endforeach
                                      </select>
                                      <x-session-error name="kerja_ayah"></x-session-error>
                                  </div>
                                  <div class="col-md-4 mb-4">
                                    <label for="">Pekerjaan Ibu</label>
                                      <select class="form-control select2" name="kerja_ibu">
                                        @if (old('kerja_ibu'))
                                        <option value="{{ old('kerja_ibu') }}" selected disabled>{{  old('kerja_ibu') }}</option>
                                        @else
                                          <option selected disabled>- {{ $siswa->pekerjaan_ibu }} -</option>
                                        @endif
                                        @foreach ($pekerjaan as $row)
                                        <option value="{{ $row->pekerjaan }}">{{$row->pekerjaan}}</option>
                                        @endforeach
                                      </select>
                                      <x-session-error name="kerja_ibu"></x-session-error>
                                  </div>
                                  <div class="col-md-4 mb-4">
                                    <label for="">Pekerjaan Wali</label>
                                      <select class="form-control select2" name="kerja_wali">
                                        @if (old('kerja_wali'))
                                          <option value="{{ old('kerja_wali') }}" selected disabled>{{  old('kerja_wali') }}</option>
                                          @else
                                          <option selected disabled>- {{ $siswa->kerja_wali }} -</option>
                                        @endif
                                        @foreach ($pekerjaan as $row)
                                        <option value="{{ $row->pekerjaan }}">{{$row->pekerjaan}}</option>
                                        @endforeach
                                    </select>
                                      <x-session-error name="kerja_wali"></x-session-error>
                                  </div>
                                  <div class="col-md-4 mb-4">
                                    <label for="">Alamat Wali</label>
                                      <textarea class="form-control" name="alamat_wali" cols="30">{{ old('alamat_wali') ? old('alamat_wali') : $siswa->alamat_wali }}</textarea>
                                      <x-session-error name="alamat_wali"></x-session-error>
                                  </div>
                                  <div class="col-md-4 mb-4">
                                    <div class="form-group">
                                      <label for="">Alamat Orangtua</label>
                                      <textarea class="form-control" name="alamat_ortu"  cols="30">{{ old('alamat_ortu') ? old('alamat_ortu') : $siswa->alamat_ortu }}</textarea>
                                      <x-session-error name="alamat_ortu"></x-session-error>
                                    </div>
                                  </div>
                                  <div class="col-md-4 mb-4">
                                    <label for="">Hubungan Wali</label>
                                      <input class="form-control" value="{{ old('hubungan_wali') ? old('hubungan_wali') : $siswa->hubungan_wali }}" type="text" name="hubungan_wali" >
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

      <!-- Custom Script -->
      <div class="modal fade" id="updateFoto" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Ubah foto</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="" enctype="multipart/form-data" method="POST" >
                    <div class="modal-body">
                        <div class="foto-user text-center mb-4">
                            <img src="../assets/dist/img/jeni2.jpeg" class="img-thumbnail img-preview rounded-circle" style="height: 200px; width:200px; object-fit:cover;">
                        </div>
                        <span class="text-small text-danger p-3">*Max upload gambar 2MB</span>
                        <input type="file" onchange="gambarpreview()" class="form-control gambar-file" name="foto"  id="customFile">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Kembali</button>
                        <button type="submit" class="btn btn-dark">Ubah</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    @include('backend.lib.select2')
    @push('script')
    <script src="{{ asset('assets/dist/js/pages/siswa/create-update.js') }}"></script>
    @endpush
</x-layout>