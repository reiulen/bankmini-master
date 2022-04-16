$.ajaxSetup({
    headers: {
        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
    },
});

const domStrings = {
    inputSelect: $(".filter"),
    formFilter: $("#form-filter"),
    btnCetak: $(".btn-cetak"),
};

domStrings.inputSelect.select2();

let filter = {};

var table = $("#example1").DataTable({
    responsive: true,
    lengthChange: true,
    autoWidth: false,
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
    order: [],
    processing: true,
    serverSide: true,
    ajax: {
        url: `${url}/siswa/tabungan/ajax/${nis}/dataTable`,
        method: "POST",
        data: function (data) {
            data.filter = filter;
            return data;
        },
    },
    columns: [
        {
            name: "checked",
            data: function (data) {
                return `<div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input pilih" value="${data.id}" id="checkbox-${data.id}">
                            <label class="custom-control-label" for="checkbox-${data.id}"></label>
                        </div>`;
            },
            orderable: false,
            searchlable: false,
        },
        {
            name: "tanggal",
            data: "tanggal",
        },
        {
            name: "kode",
            data: "kode",
        },
        {
            name: "petugas.nama",
            data: "petugas.nama",
        },
        {
            name: "keterangan",
            data: "keterangan",
        },
        {
            name: "tipe",
            data: "tipe",
        },
        {
            name: "nominal",
            data: "nominal",
        },
        {
            name: "saldo",
            data: "saldo",
        },
        {
            name: "aksi",
            data: "aksi",
            searchable: false,
            orderlable: false,
        },
    ],
});

domStrings.formFilter.on("submit", function (e) {
    e.preventDefault();
    let data = $(this).serializeArray();
    data = data.reduce((obj, item) => {
        if (obj.hasOwnProperty(item.name)) {
            temp = obj[item.name];
            obj[item.name] = Array.isArray(temp)
                ? temp.concat(item.value)
                : [temp, item.value];
        } else {
            obj[item.name] = item.value;
        }
        return obj;
    }, {});
    filter = data;
    table.draw();
    $("#modalFilter").modal("hide");
});

table.on("click", ".btn-hapus", function (e) {
    e.preventDefault();
    var id = $(this).data("id");
    var nama = $(this).data("nama");
    Swal.fire({
        title: "Apakah yakin?",
        text: `Transaksi ${nama} akan dihapus`,
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#6492b8da",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yakin",
        cancelButtonText: "Batal",
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: `${url}/siswa/tabungan/${id}/${nis}`,
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

$("#pilih").on("click", function () {
    var checked = $("#pilih").prop("checked");
    $("tbody tr .pilih").prop("checked", checked);
});

table.on("click", ".pilih", function () {
    if ($(this).prop("checked") != true) {
        $("#pilih").prop("checked", false);
    }
});

domStrings.btnCetak.on("click", function () {
    var checked = $("tbody tr .pilih:checked");
    if (checked.length > 0) {
        var id = [];
        checked.each(function () {
            id.push($(this).val());
        });
        window.open(`${url}/siswa/tabungan/${nis}/cetak?cetak=${id}`, "_blank");
    } else {
        Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "Pilih data terlebih dahulu!",
        });
    }
});

