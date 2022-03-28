<x-layout title="Tambah Permission">
    <x-content-header>
        <div class="col-sm-6">
            <a href="{{ route('permission.index') }}" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('permission.index') }}">{{ __('Permission') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Tambah Permission') }}</li>
        </x-breadcumb>
    </x-content-header>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card card-outline">
                    <div class="card-header">
                        <h5>Tambah Permission</h5>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <form action="{{ route('permission.store') }}" method="post">
                            @csrf
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label>Permission</label>
                                    <input type="text" name="permission" class="form-control @error('permission') is-invalid @enderror" value="{{ old('permission') }}" required>
                                    <x-session-error name="permission"></x-session-error>
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
