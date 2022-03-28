<x-layout title="Tambah Role">
    <x-content-header>
        <div class="col-sm-6">
            <a href="{{ route('role.index') }}" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('role.index') }}">{{ __('Role') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Tambah Role') }}</li>
        </x-breadcumb>
    </x-content-header>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card card-outline">
                    <div class="card-header">
                        <h5>Tambah Role</h5>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <form action="{{ route('role.store') }}" method="post">
                            @csrf
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label>Role</label>
                                    <input type="text" name="role" class="form-control @error('role') is-invalid @enderror" value="{{ old('role') }}" required>
                                    <x-session-error name="role"></x-session-error>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-4">
                                    <button class="btn btn-primary">Tambah</button>
                                </div>
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
