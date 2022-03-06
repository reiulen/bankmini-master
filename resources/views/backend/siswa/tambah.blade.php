<x-layout title="Tambah Siswa">

    @push('css')
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <!-- Select 2 -->
        <link href="{{ asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet" />
        <link href="{{ asset('assets/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css') }}" rel="stylesheet" />
        
        <link rel="stylesheet" href="{{ asset('assets/dist/css/stylemultipage.css') }}" />
    @endpush


    <x-content-header>
        <div class="col-sm-6">
            <a href="/siswa" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
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
                            <div class="step">
                              <p>Hal-5</p>
                              <div class="bullet">
                                <span>5</span>
                              </div>
                              <div class="check fas fa-check"></div>
                            </div>
                          </div>
                          <div class="form-outer">
                            <form action="{{ route('siswa.store') }}" method="post">
                              @csrf
                              <!-- page 1 -->
                              <div class="page slide-page">
                                <div class="field-1">
                                  <div class="row">
                                    <div class="col-md-6">  
                                      <div class="text-center">
                                      <img src="{{ asset('assets/dist/img/jeni2.jpeg') }}" class="rounded-circle" style="height: 130px;" data-toggle="modal" data-target="#updateFoto">  
                                      <div>
                                  </div>
                                  <div class="form-floating mt-3">
                                <input class="form-control" type="text" name="nama" id="" >
                                <label for="">Nama</label>
                                @error('nama')
                                    {{ $message }}
                                @enderror
                              </div>
                                
                                <div class="form-floating mt-3">
                                  <input class="form-control" type="text" name="nisn" id="">
                                  <label for="">NISN</label>
                                  @error('nisn')
                                    {{ $message }}
                                @enderror
                                </div>
                                </div>
                                    </div>
                                    <div class="col-md-6">
                                    <div class="form-floating mt-3">
                                      <input class="form-control" type="text" name="nis" id="">
                                      <label for="">NIS</label>
                                      @error('nis')
                                        {{ $message }}
                                    @enderror
                                    </div>
                                    <div class="form-floating mt-3">
                                      <input class="form-control" type="text" name="tahun_masuk" id="">
                                      <label for="">Tahun Masuk</label>
                                        @error('tahun_masuk')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                   <div class="form-floating mt-3">
                              <select class="form-select" name="tingkat_kelas" id="">
                              <option value="X">X</option>
                              <option value="XI">XI</option>
                              <option value="XII">XII</option>
                            </select>
                            <label for="">Kelas</label>
                                @error('tingkat_kelas')
                                    {{ $message }}
                                @enderror
                          </div>
                          <div class="form-floating mt-3">
                        <select class="form-select" name="jenis_kelamin" id="">
                        <option value="Laki-Laki" selected>Laki-Laki</option>
                          <option value="Perempuan">Perempuan</option>
                        </select>
                        <label for="">Jenis Kelamin</label>
                        @error('jenis_kelamin')
                        {{ $message }}
                        @enderror
                      </div>
                          <div class="form-floating mt-3">
                        <select class="form-select" name="kelas_id" id="">
                        <option value="Laki-Laki" selected>- Pilih Jurusan -</option>
                        @foreach ($kelas as $row)
                        <option value="{{ $row->id }}">{{ $row->nama_kelas }} {{ $row->urut_kelas }}</option>
                        @endforeach
                        </select>
                        <label for="">Jurusan</label>
                                @error('kelas_id')
                                    {{ $message }}
                                @enderror
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
                                        <div class="form-floating">
                                        <input class="form-control" type="text" name="tempat_lahir" id="">
                                        <label for="">Tempat Lahir</label>
                                        @error('tempat_lahir')
                                            {{ $message }}
                                        @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                        <input class="form-control" type="date" name="tgl_lahir" id=""> 
                                        <label for="">Tanggal Lahir</label>
                                        @error('tgl_lahir')
                                            {{ $message }}
                                        @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                        <textarea class="form-control" name="alamat" id="" cols="3"></textarea>
                                        <label for="">Alamat</label>
                                        @error('alamat')
                                            {{ $message }}
                                        @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                        <input class="form-control" type="text" name="anak_ke">
                                        <label for="">Anak ke</label>
                                        @error('anak_ke')
                                            {{ $message }}
                                        @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                        <select class="form-select" name="warga_negara" id="">
                                            <option value="WNI">WNI</option>
                                            <option value="WNA">WNA</option>
                                          </select>
                                          <label for="">Warga Negara</label>
                                          @error('warga_negara')
                                              {{ $message }}
                                          @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                        <select class="form-select" name="agama" id="">
                                            <option value="Islam">Islam</option>
                                            <option value="Kristen Protestan">Kristen Protestan</option>
                                            <option value="Kristen Katholik">Kristen Katholik</option>
                                            <option value="Hindu">Hindu</option>
                                            <option value="Buddha">Buddha</option>
                                            <option value="Konghucu">Konghucu</option>
                                          </select>
                                          <label for="">Agama</label>
                                          @error('agama')
                                              {{ $message }}
                                          @enderror
                                        </div>
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
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="asal_sekolah" id="">
                                      <label for="">Asal Sekolah</label>
                                      @error('asal_sekolah')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="no_ijazah" id="">
                                      <label for="">No. Ijazah</label>
                                      @error('no_ijazah')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="tahun_lulus" id="">
                                      <label for="">Tahun Lulus</label>
                                      @error('tahun_lulus')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                      <textarea class="form-control" name="alamat_sekolah" id="" cols="30"></textarea>
                                      <label for="">Alamat Sekolah</label>
                                      @error('alamat_sekolah')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="nilai_un">
                                      <label for="">Jumlah Nilai UN</label>
                                      @error('nilai_un')
                                          {{ $message }}
                                      @enderror
                                    </div>
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
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="ayah" id="">
                                      <label for="">Nama Ayah</label>
                                      @error('ayah')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="ibu" id="">
                                      <label for="">Nama Ibu</label>
                                      @error('ibu')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <textarea class="form-control" name="alamat_ortu" id="" cols="30"></textarea>
                                      <label for="">Alamat Orang Tua</label>
                                      @error('alamat_ortu')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="kerja_ayah" id="">
                                      <label for="">Pekerjaan Ayah</label>
                                      @error('kerja_ayah')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="kerja_ibu" id="">
                                      <label for="">Pekerjaan Ibu</label>
                                      @error('kerja_ibu')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="nama_wali" id="">
                                      <label for="">Nama Wali</label>
                                      @error('nama_wali')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <textarea class="form-control" name="alamat_wali" id="" cols="30"></textarea>
                                      <label for="">Alamat Wali</label>
                                      @error('alamat_wali')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="kerja_wali" id="">
                                      <label for="">Pekerjaan Wali</label>
                                      @error('kerja_wali')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="hubungan_wali" id="">
                                      <label for="">Hubungan dengan Wali</label>
                                      @error('hubungan_wali')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                  </div>
                                  <div class="row">
                                    <div class="col-md-6">
                                      <button class="prev-3 prev btn btn-primary">Sebelumnya</button>
                                    </div>
                                    <div class="col-md-6">
                                      <button class="next-3 next btn btn-primary">Selanjutnya</button>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <!-- page 5 -->
                              <div class="page">
                                <div class="field">
                                  <div class="row">
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="status" id="">
                                      <label for="">Status</label>
                                      @error('status')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="sisa_dsp" id="">
                                      <label for="">Sisa DSP</label>
                                      @error('sisa_dsp')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="sisa_infaq" id="">
                                      <label for="">Sisa Infaq</label>
                                      @error('sisa_infaq')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="sisa_ki" id="">
                                      <label for="">Sisa Kunjungan Industri</label>
                                      @error('sisa_ki')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="sisa_pkl" id="">
                                      <label for="">Sisa Prakerin</label>
                                      @error('sisa_pkl')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="sisa_kelas_10" id="">
                                      <label for="">Sisa Kelas 10</label>
                                      @error('sisa_kelas_10')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="sisa_kelas_11" id="">
                                      <label for="">Sisa Kelas 11</label>
                                      @error('sisa_kelas_11')
                                          {{ $message }}
                                      @enderror
                                    </div>
                                    </div>
                                  </div>
                                  <div class="row">
                                    <div class="col-md-6">
                                      <button class="prev-4 prev btn btn-primary">Sebelumnya</button>
                                    </div>
                                    <div class="col-md-6">
                                      <button type="submit" class="simpan btn btn-primary">Simpan</button>
                                    </div>
                                  </div>
                                </div>
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

    <!-- Select 2 -->
    <script src="{{ asset('assets/plugins/select2/js/select2.min.js') }}"></script>
    <script src="{{ asset('assets/dist/js/pages/script-edit.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
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
                      <div class="foto-user text-center mb-3">
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

  <script>

    $('#submit').click(function(){  
    Swal.fire({
      title: "Apakah yakin?",
      text: `Profil akan diubah`,
      icon: "warning",
      showCancelButton: true,
      confirmButtonColor: "#6492b8da",
      cancelButtonColor: "#d33",
      confirmButtonText: "Hapus",
      cancelButtonText: "Batal",
    }).then((result) => {
      if (result.isConfirmed) {
          $('#form').submit();
      }
    });
    });
    
    function gambarpreview(){
    const sampul = document.querySelector('#customFile');
    const preview = document.querySelector('.img-preview');
    
    const fileSampul = new FileReader();
    fileSampul.readAsDataURL(sampul.files[0]);
    
    fileSampul.onload = function(e){
    preview.src = e.target.result;
    }
    }

    $(document).ready(function(){
            $('.kelas').select2();
            $('.tahunAkademik').select2();
        });
  </script>




</x-layout>