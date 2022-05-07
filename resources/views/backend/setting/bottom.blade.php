<div class="form-group row mb-4">
    <label class="col-sm-3 col-form-label">Yang Bertanda Tangan</label>
    <div class="col-sm-9">
        <input type="text" name="ybtt" value="{{ $setting->ybtt }}" class="form-control"/>
    </div>
</div>
<div class="form-group row mb-4">
    <label class="col-sm-3 col-form-label">Nama</label>
    <div class="col-sm-9">
        <input type="text" name="nama" value="{{ $setting->nama }}" class="form-control"/>
    </div>
</div>
<div class="form-group row mb-4">
    <label class="col-sm-3 col-form-label">Tanda Tangan</label>
    <div class="col-sm-9">
        <div id="signature" class="signature border">
            <canvas width="550" height="250" style="touch-action: none;" id="sign-pad"></canvas><br/>
        </div>
        <div class="text-right col-md-12 col-12">
            <a class="badge badge-warning signatureclear" id="clear" style="font-weight: 400; cursor:pointer;"><i class="fas fa-eraser"></i>&nbsp;Ulangi tanda tangan</a>
        </div>
    </div>
</div>
