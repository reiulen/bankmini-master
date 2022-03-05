<x-layout title="Edit Siswa">
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
                            <div class="step">
                              <p>Hal-5</p>
                              <div class="bullet">
                                <span>5</span>
                              </div>
                              <div class="check fas fa-check"></div>
                            </div>
                          </div>
                          <div class="form-outer">
                            <form action="#">
                              <!-- page 1 -->
                              <div class="page slide-page">
                                <div class="field-1">
                                  <div class="row">
                                    <div class="col-md-6">  <div class="text-center">
                                      <img src="{{ asset('assets/dist/img/jeni2.jpeg') }}" class="rounded-circle" style="height: 130px;" data-toggle="modal" data-target="#updateFoto">  
                                      <div>
                                  </div>
                                  <div class="form-floating mt-3">
                                <input class="form-control" type="text" name="" id="" placeholder="Nama" value="Sataria Kemal Pasha">
                                <label for="">Nama</label></div>
                                
                                <div class="form-floating mt-3">
                                  <input class="form-control" type="text" name="" id="" placeholder="Nama" value="192010556">
                                  <label for="">NISN</label></div>
                                </div>
                                    </div>
                                    <div class="col-md-6">
                                    <div class="form-floating mt-3">
                                      <input class="form-control" type="text" name="" id="" placeholder="NIS" value="192010571">
                                      <label for="">NIS</label></div>
                                    <div class="form-floating mt-3">
                                      <input class="form-control" type="text" name="" id="" placeholder="Tahun Masuk" value="2019">
                                      <label for="">Tahun Masuk</label></div>
                                   <div class="form-floating mt-3">
                              <select class="form-select" name="" id="">
                              <option value="XII" selected>XII</option>
                              <option value="">X</option>
                              <option value="">XI</option>
                              <option value="">XII</option>
                            </select>
                            <label for="">Kelas</label>
                          </div>
                          <div class="form-floating mt-3">
                        <select class="form-select" name="" id="">
                        <option value="Laki-Laki" selected>Laki-Laki</option>
                        <option value="Laki-Laki">Laki-Laki</option>
                          <option value="Perempuan">Perempuan</option>
                        </select>
                        <label for="">Jenis Kelamin</label>
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
                                        <input class="form-control" type="text" name="" id="" placeholder="Tempat Lahir" value="Ciamis">
                                        <label for="">Tempat Lahir</label>
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                        <input class="form-control" type="date" name="" id=""  placeholder="Tanggal Lahir" value="2003-01-10"> 
                                        <label for="">Tanggal Lahir</label>
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                        <textarea class="form-control" name="" id="" cols="30" placeholder="Alamat">Ciamis, RT/Rw. 03/02</textarea>
                                        <label for="">Alamat</label>
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                        <input class="form-control" type="text" name="" id="" placeholder="Anak ke" value="2">
                                        <label for="">Anak ke</label>
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                        <select class="form-select" name="" id="">
                                            <option value="WNI" selected>WNI</option>
                                            <option value="">WNI</option>
                                            <option value="">WNA</option>
                                          </select>
                                          <label for="">Warga Negara</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                        <select class="form-select" name="" id="">
                                            <option value="" selected>Islam</option>
                                            <option value="">Islam</option>
                                            <option value="">Kristen Protestan</option>
                                            <option value="">Kristen Katholik</option>
                                            <option value="">Hindu</option>
                                            <option value="">Buddha</option>
                                            <option value="">Konghucu</option>
                                          </select>
                                          <label for="">Agama</label>
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
                                      <input class="form-control" type="text" name="" id="" placeholder="Asal Sekolah" value="SMPN 2 Ciamis">
                                      <label for="">Asal Sekolah</label>
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="" id="" placeholder="No.Ijazah" value="8877612">
                                      <label for="">No. Ijazah</label>
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="" id="" placeholder="Tahun Lulus" value="2019">
                                      <label for="">Tahun Lulus</label>
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                      <textarea class="form-control" name="" id="" cols="30" placeholder="Alamat Sekolah">Ciamis, Jl. Jendral Sudirman</textarea>
                                      <label for="">Alamat Sekolah</label>
                                    </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="" id="" placeholder="Jumlah Nilai UN" value="320">
                                      <label for="">Jumlah Nilai UN</label>
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
                                      <input class="form-control" type="text" name="" id="" placeholder="Nama Ayah" value="Sunandar">
                                      <label for="">Nama Ayah</label>
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="" id="" placeholder="Nama Ibu" value="Elin Herlina">
                                      <label for="">Nama Ibu</label>
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <textarea class="form-control" name="" id="" cols="30" placeholder="Alamat Orang Tua">Ciamis, Jl. Jendral Sudirman</textarea>
                                      <label for="">Alamat Orang Tua</label>
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="" id="" placeholder="Pekerjaan Ayah" value="Wiraswasta">
                                      <label for="">Pekerjaan Ayah</label>
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="" id="" placeholder="Pekerjaan Ibu" value="Guru">
                                      <label for="">Pekerjaan Ibu</label>
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="" id="" placeholder="Nama Wali">
                                      <label for="">Nama Wali</label>
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <textarea class="form-control" name="" id="" cols="30" placeholder="Alamat Wali"></textarea>
                                      <label for="">Alamat Wali</label>
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="" id="" placeholder="Pekerjaan Wali">
                                      <label for="">Pekerjaan Wali</label>
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="" id="" placeholder="Hubungan dengan Wali">
                                      <label for="">Hubungan dengan Wali</label>
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
                                      <input class="form-control" type="text" name="" id="" placeholder="Status" value="Aktif">
                                      <label for="">Status</label>
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="" id="" placeholder="Sisa DSP" value="Rp. 0,-">
                                      <label for="">Sisa DSP</label>
                                    </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="" id="" placeholder="Sisa Infaq" value="Rp. 0,-">
                                      <label for="">Sisa Infaq</label>
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="" id="" placeholder="Sisa Kunjungan Industri" value="Rp. 0,-">
                                      <label for="">Sisa Kunjungan Industri</label>
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="" id="" placeholder="Sisa Prakerin" value="Rp. 0,-">
                                      <label for="">Sisa Prakerin</label>
                                    </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="" id="" placeholder="Sisa Kelas 10" value="Rp. 0,-">
                                      <label for="">Sisa Kelas 10</label>
                                    </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-floating">
                                      <input class="form-control" type="text" name="" id="" placeholder="Sisa Kelas 11" value="Rp. 0,-">
                                      <label for="">Sisa Kelas 11</label>
                                    </div>
                                    </div>
                                  </div>
                                  <div class="row">
                                    <div class="col-md-6">
                                      <button class="prev-4 prev btn btn-primary">Sebelumnya</button>
                                    </div>
                                    <div class="col-md-6">
                                      <button class="submit simpan btn btn-primary">Simpan</button>
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