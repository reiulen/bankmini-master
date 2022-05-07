$("#summernote").summernote({
    dialogsInBody: true,
    minHeight: 150,
    toolbar: [
        ["style", ["style"]],
        ["font", ["bold", "underline", "clear"]],
        ["fontname", ["fontname"]],
        ["color", ["color"]],
        ["para", ["ul", "ol", "paragraph"]],
        ["table", ["table"]],
    ],
});

domStrings = {
    form: $("form"),
    btnSubmit: $(".btn-submit"),
};

domStrings.btnSubmit.on("click", function (e) {
    e.preventDefault();
    Swal.fire({
        title: "Apakah yakin?",
        text: `Setting akan diubah?`,
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#6492b8da",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yakin",
        cancelButtonText: "Batal",
    }).then((result) => {
        if (result.isConfirmed) {
            $("#form-setting").submit();
        }
    });
});
