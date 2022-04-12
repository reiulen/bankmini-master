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
    alertError: $(".alert-error"),
};

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
    order: [[1, "ASC"]],
    serverSide: true,
    ajax: {
        url: `${url}/jurusan/ajax/data`,
        method: "POST",
    },
    columns: [
        {
            name: "created_at",
            data: "DT_RowIndex",
            searchable: false,
        },
        {
            name: "jurusan",
            data: "jurusan",
        },
        {
            name: "nama",
            data: "nama",
        },
        {
            name: "aksi",
            data: function (item) {
                return `
                    <div class="dropdown">
                        <button class="btn btn-none" id="edit${item.id}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-ellipsis-v"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="edit${item.id}">
                            <a class="dropdown-item btn-edit" data-id="${item.id}" data-nama="${item.nama}" data-jurusan="${item.jurusan}"><i class="fas fa-pencil-alt text-primary pr-1" ></i> Edit</a>
                            <a class="dropdown-item btn-hapus" role="button" data-id="${item.id}" data-nama="${item.jurusan}"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                        </div>
                    </div>
                `;
            },
            searchable: false,
            orderable: false,
        },
    ],
});

domStrings.btnTambah.on("click", function (e) {
    e.preventDefault();
    domStrings.form.trigger("reset");
    domStrings.inputVal.val("0");
    domStrings.formInputan.slideDown();
});

domStrings.btnKembali.on("click", function () {
    domStrings.formInputan.slideUp();
    domStrings.form.trigger("reset");
});

table.on("click", "a.btn-edit", function (e) {
    e.preventDefault();
    const id = $(this).data("id");
    const jurusan = $(this).data("jurusan");
    const nama = $(this).data("nama");
    domStrings.formInputan.slideDown();
    domStrings.inputVal.val(id);
    domStrings.form.find("#jurusan").val(jurusan);
    domStrings.form.find("#nama").val(nama);
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
        text: `Jurusan ${nama} akan dihapus`,
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#6492b8da",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yakin",
        cancelButtonText: "Batal",
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: `${url}/jurusan/${id}`,
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
