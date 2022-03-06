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
            <li class="breadcrumb-item"><a href="{{ route('pengguna.index') }}">{{ __('Pengguna') }}</a></li>
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
                        <form action="{{ route('pengguna.store') }}" method="post">
                            @csrf
                            <!-- <div class="form-group mb-4 d-flex justify-content-center">
                                <img src="../assets/dist/img/user2-160x160.jpg" class="img-thumbnail img-preview rounded-circle" style="height: 130px">
                                <input type="file" onchange="gambarpreview()" class="form-control col-md-4 mx-2 gambar-file" name="foto"  id="customFile">
                            </div> -->
                            <div class="form-group mb-4 row justify-content-center">
                                <div class="col-md-4">
                                    <div class="form-floating mt-3">
                                        <input class="form-control @error('nama') is-invalid @enderror" type="text" name="nama" placeholder="nama">
                                        <label for="">Nama</label>
                                        @error('nama')
                                            {{ $message }}
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-floating mt-3">
                                        <input class="form-control @error('email') is-invalid @enderror" type="text" name="email" id="" placeholder="Email" >
                                        <label for="">Email</label>
                                        @error('email')
                                            {{ $message }}
                                        @enderror
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mb-4 row justify-content-center">
                                <div class="col-md-4">
                                    <div class="form-floating mt-3">
                                        <input class="form-control @error('password') is-invalid @enderror" type="password" name="password" id="" placeholder="Password" >
                                        <label for="">Password</label>
                                        @error('password')
                                            {{ $message }}
                                        @enderror
                                    </div>
                                </div>
                                 <div class="col-md-4">
                                    <div class="form-floating mt-3">
                                        <input class="form-control @error('password2') is-invalid @enderror" type="password" name="password2" id="" placeholder="Konfirmasi Password" >
                                        <label for="">Konfirmasi Password</label>
                                        @error('password2')
                                            {{ $message }}
                                        @enderror
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mb-4 row justify-content-center">
                                <div class="col-md-4" >
                                    <div class="form-floating">
                                    <select class="form-control @error('level') is-invalid @enderror" style="height: 55px;" name="level">
                                        <option selected disabled>- Pilih Level -</option>
                                        <option value="Operator">Operator</option>
                                        <option value="Admin Bank">Admin Bank</option>
                                        <option value="Kepala Bank">Kepala Bank</option>
                                        <option value="Komite">Komite</option>
                                    </select>
                                    <label for="">Level</label>
                                    @error('level')
                                        {{ $message }}
                                    @enderror
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


</x-layout>
