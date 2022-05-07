<div class="d-flex">
    <div class="form-group row mb-4">
        <div id="image-preview" class="image-preview p-2">
            <div class="gallery gallery-lg">
                <div class="gallery-item img-preview" id="logoheader" style="background-image: url('{{ $setting->logo_header }}');">
                    <button type="button" class="btn btn-danger float-right btn-remove-image" data-key="logoheader">
                        <i class="fa fa-trash"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="form-group mb-3">
        <textarea id="summernote" name="header" class="form-control">{{ $setting->header }}</textarea>
    </div>
</div>
