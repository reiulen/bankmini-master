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
                                            <img src="{{ asset('assets/dist/img/jeni2.jpeg') }}" class="rounded-circle img-thumbnail" width="200px"> 
                                            
                                            <div class="text-center mt-3 mb-2" style="font-size: 20px;">Jeni Adi Hidayat</div>
                                        </div>   
                                        <div class="col-lg-6">  
                                            <label class="text-primary">NISN</label>  
                                            <div class="mb-2 isi">192010556</div> 
                                            <label class="text-primary">NIS</label>  
                                            <div class="mb-2 isi">192010556</div> 
                                            <label class="text-primary">Tempat Lahir</label>  
                                            <div class="mb-2 isi">Ciamis</div> 
                                            <label class="text-primary">Tanggal Lahir</label>  
                                            <div class="mb-2 isi">12</div>  
                                            <label class="text-primary">Jenis Kelamin</label>  
                                            <div class="mb-2 isi">Laki Laki</div> 
                                        </div>
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Kelas</label>  
                                            <div class="isi mb-2">12 RPL</div> 
                                        </div>  
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Warga Negara</label>  
                                            <div class="isi mb-2">Malaysia</div> 
                                        </div>  
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Agama</label>  
                                            <div class="isi mb-2">Islam</div> 
                                        </div>  
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Tempat lahir</label>  
                                            <div class="isi mb-2">Rahim ibu</div> 
                                        </div>  
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Tanggal Lahir</label>  
                                            <div class="isi mb-2">12 Juni 2003</div> 
                                        </div> 
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Anak Ke</label>  
                                            <div class="isi mb-2">12</div> 
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
                                            <div class="isi mb-2">SMP 1 Cisaga</div> 
                                        </div>  
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Alamat Sekolah</label>  
                                            <div class="isi mb-2">Cisaga</div> 
                                        </div>  
                                        <div class="col-lg-6">  
                                            <label class="text-primary">No Ijazah</label>  
                                            <div class="isi mb-2">392383</div> 
                                        </div>  
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Tahun Lulus</label>  
                                            <div class="isi mb-2">2022</div> 
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
                                            <div class="isi mb-2">Javascript</div> 
                                        </div>  
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Nama Ibu</label>  
                                            <div class="isi mb-2">Laravel</div> 
                                        </div> 
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Pekerjaan Ayah</label>  
                                            <div class="isi mb-2">Ngoding</div> 
                                        </div>    
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Pekerjaan Ibu</label>  
                                            <div class="isi mb-2">Problem Solving</div> 
                                        </div>
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Alamat Orangtua</label>  
                                            <div class="isi mb-2">Banung</div> 
                                        </div>
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Nama Wali</label>  
                                            <div class="isi mb-2">Hatedok</div> 
                                        </div>  
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Pekerjaan Wali</label>  
                                            <div class="isi mb-2">Membuat Masalah</div> 
                                        </div>  
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Hubungan Dengan Wali</label>  
                                            <div class="isi mb-2">Pacaran</div> 
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
                                            <div class="isi mb-2">Digosting</div> 
                                        </div>  
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Sisa DSP</label>  
                                            <div class="isi mb-2">Rp.500.000</div> 
                                        </div>  
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Sisa Infaq</label>  
                                            <div class="isi mb-2">Rp.200.000</div> 
                                        </div>  
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Sisa Kunjungan Industri</label>  
                                            <div class="isi mb-2">Rp.200.000</div> 
                                        </div> 
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Sisa Prakerin</label>  
                                            <div class="isi mb-2">Rp.200.000</div> 
                                        </div> 
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Sisa Kelas 10</label>  
                                            <div class="isi mb-2">Rp.200.000</div> 
                                        </div> 
                                        <div class="col-lg-6">  
                                            <label class="text-primary">Sisa Kelas 11</label>  
                                            <div class="isi">Rp.200.000</div> 
                                        </div>
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