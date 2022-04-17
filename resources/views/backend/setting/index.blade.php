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
                    <div class="card-header">
                        <button class="btn btn-primary"><i class="fa fa-eye"></i>&nbsp; Preview</button>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('setting.store') }}" method="post" id="form-setting">
                            @csrf
                            <div class="form-group row justify-content-center mb-3">
                                <div class="col-md-8">
                                    <label>Header</label>
                                    <textarea id="summernote" name="header" class="form-control">{{ $setting->header }}</textarea>
                                </div>
                            </div>
                            <div class="form-group row justify-content-center mb-4">
                                <div class="col-md-8">
                                    <label>Bendahara</label>
                                    <input type="text" name="nama" value="{{ $setting->nama }}" class="form-control"/>
                                </div>
                            </div>
                            <div class="form-group row mb-4 justify-content-center">
                                <div class="col-md-8">
                                    <label>Tanda Tangan</label>
                                    <div id="signature" class="signature border">
                                        <canvas width="700" height="250" style="touch-action: none;" id="sign-pad"></canvas><br/>
                                        <textarea id="signature64" name="signed" style="display:none"></textarea>
                                    </div>
                                    <div class="text-right col-md-12 col-12">
                                        <a class="badge badge-warning signatureclear" id="clear" style="font-weight: 400; cursor:pointer;"><i class="fas fa-eraser"></i>&nbsp;Ulangi tanda tangan</a>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mb-4 row justify-content-center">
                                <div class="col-md-4">
                                    <button class="btn btn-primary btn-submit"><i class="fa fa-save"></i>&nbsp;Simpan</button>
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
    @include('backend.lib.summernote')
    @push('script')
    <script src="{{ asset('assets/plugins/signature/docs/js/signature_pad.umd.js') }}"></script>
    <script src="{{ asset('assets/plugins/signature/docs/js/app.js') }}"></script>
    <script src="{{ asset('assets/dist/js/pages/setting/create-update.js') }}"></script>
    @endpush
</x-layout>
