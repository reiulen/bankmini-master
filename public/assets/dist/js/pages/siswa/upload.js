$.ajaxSetup({
    headers: {
        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
    },
});

domStrings.uploadSiswa.submit(function (e) {
    e.preventDefault();
    if ($("input[name='file']").val() == "") {
        Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "File tidak boleh kosong!",
        });
    } else {
        var fd = new FormData(this);
        $(this).addClass("d-none");
        $("#load").html(
            '<div class="spinner-border text-info m-5 p-5" role="status">' +
                '<span class="sr-only">Loading...</span>' +
                "</div>"
        );
        $.ajax({
            url: $(this).attr("action"),
            method: "POST",
            data: fd,
            contentType: false,
            processData: false,
            success: function (data) {
                table.draw();
                Swal.fire(
                    "Berhasil!",
                    "Data siswa berhasil diimport!",
                    "success"
                );
                $("#load").html("");
            },
            error: function (response) {
                Swal.fire(
                    "Gagal disimpan",
                    response.responseJSON.message,
                    "error"
                );
                $("#load").html("");
            },
        });
    }
});
