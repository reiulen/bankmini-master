$.ajaxSetup({
    headers: {
        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
    },
});

const domStrings = {
    form: $("#form"),
    formInputan: $(".form-inputan"),
    btnTambah: $(".btn-tambah"),
    btnKembali: $(".btn-kembali"),
    inputVal: $("input[name='id']"),
    formJurusan: $('select[name="jurusan"]'),
    alertError: $(".alert-error"),
};

domStrings.formJurusan.select2();

var table = $("#example1").DataTable({
    pagingType: "full_numbers",
    language: {
        search: "_INPUT_",
        searchPlaceholder: "Cari...",
        processing:
            '<div class="spinner-border text-info" role="status">' +
            '<span class="sr-only">Loading...</span>' +
            "</div>",
        paginate: {
            Search: '<i class="icon-search"></i>',
            first: "<i class='fas fa-angle-double-left'></i>",
            previous: "<i class='fas fa-angle-left'></i>",
            next: "<i class='fas fa-angle-right'></i>",
            last: "<i class='fas fa-angle-double-right'></i>",
        },
    },
    oLanguage: {
        sSearch: "",
    },
    processing: true,
    responsive: true,
    lengthChange: true,
    autoWidth: false,
    order: [[2, "ASC"]],
    serverSide: true,
    ajax: {
        url: `${url}/kelas/ajax/data`,
        method: "POST",
    },
    columns: [
        {
            name: "created_at",
            data: "DT_RowIndex",
            searchable: false,
        },
        {
            name: "kelas",
            data: "kelas",
        },
        {
            name: "jurusan",
            data: "jurusan",
        },
        {
            name: "nama_kelas",
            data: "nama_kelas",
        },
        {
            name: "aksi",
            data: "aksi",
            searchable: false,
            orderable: false,
        },
    ],
});

domStrings.btnTambah.on("click", function (e) {
    e.preventDefault();
    domStrings.form.trigger("reset");
    domStrings.inputVal.val("0");
    domStrings.formJurusan.val(null).trigger("change");
    domStrings.formInputan.slideDown();
});

domStrings.btnKembali.on("click", function () {
    domStrings.formInputan.slideUp();
    domStrings.form.trigger("reset");
});

table.on("click", "a.btn-edit", function (e) {
    e.preventDefault();
    const id = $(this).data("id");
    domStrings.formInputan.slideDown();
    domStrings.inputVal.val(id);
    $.getJSON(`${url}/kelas/ajax/getdata/${id}`, function (res) {
        domStrings.form.find("select[name='kelas']").val(res.kelas);
        $("select[name='jurusan'] option").remove("option[data='select']");
        domStrings.form
            .find("select[name='jurusan']")
            .append(
                '<option value="' +
                    res.jurusan.id +
                    '" selected data="select">' +
                    res.jurusan.jurusan +
                    " " +
                    "( " +
                    res.jurusan.nama +
                    " )" +
                    "</option>"
            );
        domStrings.form.find("select[name='urut_kelas']").val(res.urut_kelas);
    });
});

domStrings.form.on("submit", function (e) {
    e.preventDefault();
    $.ajax({
        url: $(this).attr("action"),
        method: $(this).attr("method"),
        data: $(this).serialize(),
        success: function (response) {
            if (!response.error) {
                table.draw();
                domStrings.form.trigger("reset");
                domStrings.formInputan.slideUp();
                Swal.fire("Berhasil disimpan", response.success, "success");
            }
        },
        error: function (response) {
            console.log(response);
            Swal.fire("Gagal disimpan", response.responseJSON.message, "error");
        },
    });
});

function tanggal(tgl) {
    console.log(tgl);
    document.getElementById("tgl_akhir").min = tgl;
}

table.on("click", ".btn-hapus", function (e) {
    e.preventDefault();
    var id = $(this).data("id");
    var nama = $(this).data("nama");
    Swal.fire({
        title: "Apakah yakin?",
        text: `Kelas ${nama} akan dihapus`,
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#6492b8da",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yakin",
        cancelButtonText: "Batal",
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: `${url}/kelas/${id}`,
                method: "post",
                data: [{ name: "_method", value: "DELETE" }],
                success: function (res) {
                    table.draw();
                    Swal.fire(`Berhasil dihapus`, res.success, "success");
                },
                error: function (res) {
                    console.log(res);
                    Swal.fire(`Gagal`, `${res.responseJSON.message}`, "error");
                },
            });
        }
    });
});
