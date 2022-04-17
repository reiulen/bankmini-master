$.ajaxSetup({
    headers: {
        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
    },
});

const domStrings = {
    inputSelect: $(".filter"),
    formFilter: $("#form-filter"),
    btnCari: $(".btn-cari"),
    btnCetak: $(".btn-cetak"),
};

domStrings.inputSelect.select2();

let filter = {};

var table = $("#example1").DataTable({
    responsive: true,
    lengthChange: true,
    autoWidth: false,
    pagingType: "full_numbers",
    order: [],
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
    serverSide: true,
    ajax: {
        url: `${url}/historytransaksi/ajax/dataTable`,
        method: "POST",
        data: function (data) {
            data.filter = filter;
            data.dari = $("#tgl_awal").val();
            data.sampai = $("#tgl_akhir").val();
            return data;
        },
    },
    columns: [
        {
            name: "checkbox",
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
            name: "danaawal.dana",
            data: "danaawal.dana",
            orderable: false,
        },
        {
            name: "petugas.nama",
            data: "petugas.nama",
            orderable: false,
        },
        {
            name: "keterangan",
            data: "keterangan",
        },
        {
            name: "nominal",
            data: "nominal",
        },
        {
            name: "sisa_tagihan",
            data: "sisa_tagihan",
        },
    ],
});

domStrings.btnCari.on("click", function (e) {
    $(".cetak-excel").attr(
        "href",
        `${url}/historytransaksi/cetak-excel?dari=${$(
            "#tgl_awal"
        ).val()}&sampai=${$("#tgl_akhir").val()}&${$(
            "#form-filter"
        ).serialize()}`
    );
    $(".cetak-pdf").attr(
        "href",
        `${url}/historytransaksi/cetak-pdf?dari=${$(
            "#tgl_awal"
        ).val()}&sampai=${$("#tgl_akhir").val()}&${$(
            "#form-filter"
        ).serialize()}`
    );
    table.draw();
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
    $(".cetak-excel").attr(
        "href",
        `${url}/historytransaksi/cetak-excel?dari=${$(
            "#tgl_awal"
        ).val()}&sampai=${$("#tgl_akhir").val()}&${$(
            "#form-filter"
        ).serialize()}`
    );
    $(".cetak-pdf").attr(
        "href",
        `${url}/historytransaksi/cetak-pdf?dari=${$(
            "#tgl_awal"
        ).val()}&sampai=${$("#tgl_akhir").val()}&${$(
            "#form-filter"
        ).serialize()}`
    );
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

$("#pilih").on("click", function () {
    var checked = $(this).prop("checked");
    $("tbody tr .pilih").prop("checked", checked);
});

table.on("click", ".pilih", function () {
    var checked = $(this).prop("checked");
    if (checked != true) {
        $("#pilih").prop("checked", false);
    }
});

domStrings.btnCetak.on("click", function () {
    var checked = $("tbody tr .pilih:checked");
    if (checked.length > 0) {
        id = [];
        checked.each(function () {
            id.push($(this).val());
        });
        window.open(`${url}/historytransaksi/cetakkwitansi?cetak=${id}`);
    } else {
        Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "Pilih data yang akan dicetak!",
        });
    }
});
