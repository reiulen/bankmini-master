<x-layout title="Edit Pengguna">
    <x-content-header>
        <div class="col-sm-6">
            <a href="{{ route('pengguna.index') }}" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('pengguna.index') }}">{{ __('Pengguna') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Edit Penguna') }}</li>
        </x-breadcumb>
    </x-content-header>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card card-outline">
                    <div class="card-header">
                        <h5>Edit Pengguna</h5>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <form action="{{ route('pengguna.update', $user->id) }}" method="post">
                            @csrf
                            @method('put')
                            <div class="form-group row justify-content-center">
                                <div class="col-md-4">
                                    <input class="form-control @error('nama') is-invalid @enderror" type="text" name="nama" value="{{ old('nama') ? old('nama') : $user->nama }}">
                                    <label >Nama</label>
                                    <x-session-error name="nama"></x-session-error>
                                </div>
                                <div class="col-md-4">
                                    <input class="form-control @error('email') is-invalid @enderror" value="{{ old('email') ? old('email') : $user->email }}" type="text" name="email">
                                    <label >Email</label>
                                    <x-session-error name="email"></x-session-error>
                                </div>
                            </div>
                            <div class="form-group row justify-content-center">
                                <div class="col-md-4">
                                    <label >Password</label>
                                    <input class="form-control @error('password') is-invalid @enderror" type="password" name="password">
                                    <x-session-error name="password"></x-session-error>
                                </div>
                                <div class="col-md-4">
                                    <label >Konfirmasi Password</label>
                                    <input class="form-control @error('password2') is-invalid @enderror" type="password" name="password2">
                                    <x-session-error name="password2"></x-session-error>
                                </div>
                                </div>
                            </div>
                            <div class="form-group row mb-4 justify-content-center">
                                <div class="col-md-4" >
                                    <label >Level</label>
                                    <select class="form-control @error('level') is-invalid @enderror" name="level">
                                        <option value="{{ $user->level }}"  selected> {{ $user->level }} </option>
                                        <option value="Operator">Operator</option>
                                        <option value="Admin Bank">Admin Bank</option>
                                        <option value="Kepala Bank">Kepala Bank</option>
                                        <option value="Komite">Komite</option>
                                    </select>
                                    <x-session-error name="level"></x-session-error>
                                </div>
                                <div class="col-md-4"></div>
                            </div>
                            <div class="form-group row justify-content-center">
                                <div class="col-md-4">
                                    <button class="btn btn-primary">Simpan</button>
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
