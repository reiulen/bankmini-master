<x-layout title="Tambah Pengguna">
    @push('css')
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    @endpush
    <x-content-header>
        <div class="col-sm-6">
            <a href="/pengguna" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li> 
            <li class="breadcrumb-item"><a href="{{ route('pengguna') }}">{{ __('Pengguna') }}</a></li> 
            {{-- <li class="breadcrumb-item active">{{ __('Penguna') }}</li> --}}
            <li class="breadcrumb-item active">{{ __('Tambah Penguna') }}</li>
        </x-breadcumb>
    </x-content-header>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card card-outline">
                    <div class="card-header">
                        <h5>Tambah Pengguna</h5>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <form action="#" method="post">
                            <!-- <div class="form-group mb-4 d-flex justify-content-center">
                                <img src="../assets/dist/img/user2-160x160.jpg" class="img-thumbnail img-preview rounded-circle" style="height: 130px">
                                <input type="file" onchange="gambarpreview()" class="form-control col-md-4 mx-2 gambar-file" name="foto"  id="customFile">
                            </div> -->
                            <div class="form-group mb-4 row justify-content-center">
                                <div class="col-md-4">
                                    <div class="form-floating mt-3">
                                        <input class="form-control" type="text" name="" id="" value="" placeholder="nama">
                                        <label for="">Nama</label>
                                    </div>
                                </div>
                                 <div class="col-md-4">
                                    <div class="form-floating mt-3">
                                        <input class="form-control" type="text" name="" id="" placeholder="Email" value="">
                                        <label for="">Email</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mb-4 row justify-content-center">
                                <div class="col-md-4">
                                    <div class="form-floating mt-3">
                                        <input class="form-control" type="text" name="" id="" placeholder="Password" value="">
                                        <label for="">Password</label>
                                    </div>
                                </div>
                                 <div class="col-md-4">
                                    <div class="form-floating mt-3">
                                        <input class="form-control" type="text" name="" id="" placeholder="Konfirmasi Password" value="">
                                        <label for="">Konfirmasi Password</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mb-4 row justify-content-center">
                                <div class="col-md-4" >
                                    <div class="form-floating">
                                    <select class="form-control" style="height: 55px;" name="level">
                                        <option selected disabled>- Pilih Level -</option>
                                        <option value="Operator">Operator</option>
                                        <option value="Admin Bank">Admin Bank</option>
                                        <option value="Kepala Bank">Kepala Bank</option>
                                        <option value="Komite">Komite</option>
                                    </select>
                                    <label for="">Level</label>
                                </div>
                                </div>
                                <div class="col-md-4"></div>
                            </div>
                            <div class="form-group mb-4 row justify-content-center">
                                <div class="col-md-4">
                                    <button class="btn btn-primary">Tambah</button>
                                </div>
                                <div class="col-md-4"></div>
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
    <!-- /.content -->
    @push('script')

    @endpush

</x-layout>