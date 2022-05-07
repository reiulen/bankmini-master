const imgPreview = $(".img-preview");

imgPreview.on("change", "input[type='file']", function () {
    const sampul = $(this);
    const preview = $(this).parent().find(".img-preview");
    const fileSampul = new FileReader();
    fileSampul.readAsDataURL(sampul[0].files[0]);

    fileSampul.onload = function (e) {
        preview["prevObject"].attr(
            "style",
            `background-image: url('${e.target.result}')`
        );
    };
});

imgPreview.on("click", ".btn-remove-image", function () {
    const key = $(this).data("key");
    const name = $(`#${key}`);
    name.attr("style", "");
    $(this).hide();
    name.html(
        '<label for="image-upload">Pilih Gambar</label>' +
            `<input type="file" name="${key}" />`
    );
});
