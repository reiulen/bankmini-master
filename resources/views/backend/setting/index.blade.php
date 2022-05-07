<x-layout title="Setting">
    <x-content-header>
        <div class="col-sm-6">
            <h1>Setting</h1>
        </div>

        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">Home</a></li>
            <li class="breadcrumb-item item">{{ __('Setting') }}</li>
        </x-breadcumb>
    </x-content-header>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card card-outline">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3">
                                <ul class="nav nav-pills flex-column" id="myTab4" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="tab" href="#situs" role="tab"
                                            aria-controls="home" aria-selected="true">Situs</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#header" role="tab"
                                            aria-controls="profile" aria-selected="false">Header</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" data-toggle="tab" href="#bottom" role="tab"
                                            aria-controls="profile" aria-selected="false">Bottom</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-9">
                                <form action="{{ route('setting.store') }}" method="post" id="form-setting" enctype="multipart/form-data">
                                @csrf
                                    <div class="tab-content" id="nav-tabContent">
                                        <div id="situs" class="tab-pane fade show active">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h5>Situs</h5>
                                                </div>
                                                <div class="card-body">
                                                    @include('backend.setting.situs')
                                                </div>
                                            </div>
                                        </div>
                                        <div id="header" class="tab-pane">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h5>Header</h5>
                                                </div>
                                                <div class="card-body">
                                                    @include('backend.setting.header')
                                                </div>
                                            </div>
                                        </div>
                                        <div id="bottom" class="tab-pane">
                                            <div class="card">
                                                <div class="card-header">
                                                    <h5>Bottom</h5>
                                                </div>
                                                <div class="card-body">
                                                    @include('backend.setting.bottom')
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group mb-4 row ml-2">
                                        <button class="btn btn-primary btn-submit"><i class="fa fa-save"></i>&nbsp;Simpan</button>
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
    @include('backend.lib.summernote')
    @push('script')
    <script src="{{ asset('assets/plugins/signature/docs/js/signature_pad.umd.js') }}"></script>
    <script src="{{ asset('assets/plugins/signature/docs/js/app.js') }}"></script>
    <script src="{{ asset('assets/dist/js/pages/setting/create-update.js') }}"></script>
    <script src="{{ asset('assets/dist/js/gallery.js') }}"></script>
    @endpush
</x-layout>
