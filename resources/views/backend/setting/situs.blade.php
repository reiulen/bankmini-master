<div class="form-group row mb-4">
    <label class="col-sm-3 col-form-label">Judul Situs</label>
    <div class="col-sm-9">
        <input type="text" name="judul" value="{{ $setting->judul_situs }}" class="form-control"/>
    </div>
</div>
<div class="form-group row mb-4">
    <label class="col-sm-3 col-form-label">Sekolah</label>
    <div class="col-sm-9">
        <input type="text" name="sekolah" value="{{ $setting->sekolah }}" class="form-control"/>
    </div>
</div>
<div class="form-group row mb-4">
    <label class="col-sm-3 col-form-label">Favicon</label>
    <div class="col-sm-4">
        <div id="image-preview" class="image-preview p-2">
            <div class="gallery gallery-lg">
                <div class="gallery-item img-preview" id="favicon" style="background-image: url('{{ $setting->favicon }}');">
                    <button type="button" class="btn btn-danger float-right btn-remove-image" data-key="favicon">
                        <i class="fa fa-trash"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="form-group row mb-4">
    <label class="col-sm-3 col-form-label">Logo</label>
    <div class="col-sm-4">
        <div id="image-preview" class="image-preview p-2">
            <div class="gallery gallery-lg">
                <div class="gallery-item img-preview" id="logo" style="background-image: url('{{ $setting->logo }}');">
                    <button type="button" class="btn btn-danger float-right btn-remove-image" data-key="logo">
                        <i class="fa fa-trash"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="form-group row mb-4">
    <label class="col-sm-3 col-form-label">Logo Brand</label>
    <div class="col-sm-4">
        <div id="image-preview" class="image-preview p-2">
            <div class="gallery gallery-lg">
                <div class="gallery-item img-preview" id="logobrand" style="background-image: url('{{ $setting->logo_brand }}');">
                    <button type="button" class="btn btn-danger float-right btn-remove-image" data-key="logobrand">
                        <i class="fa fa-trash"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
