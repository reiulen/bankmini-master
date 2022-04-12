domStrings = {
    btnSiswa: $(".btn-siswa"),
    btnPengelola: $(".btn-pengelola"),
    cPengelola: $("#pengelola"),
    cSiswa: $("#siswa"),
    inputTglLahir: $('input[name="tgl_lahir"]'),
    inputNis: $('input[name="nis"]'),
};

domStrings.btnPengelola.on("click", function () {
    $(this).addClass("active");
    domStrings.btnSiswa.removeClass("active");
    domStrings.cSiswa.slideUp();
    domStrings.cPengelola.slideDown();
});

domStrings.btnSiswa.on("click", function () {
    $(this).addClass("active");
    domStrings.btnPengelola.removeClass("active");
    domStrings.cPengelola.slideUp();
    domStrings.cSiswa.slideDown();
});

Inputmask({ alias: "datetime", inputFormat: "yyyy-mm-dd" }).mask(
    domStrings.inputTglLahir
);

Inputmask({ mask: "999999999" }).mask(domStrings.inputNis);

