$.ajaxSetup({
    headers: {
        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
    },
});

const domStrings = {
    inputSelect: $(".filter"),
    formFilter: $("#form-filter"),
    btnCari: $(".btn-cari"),
};

domStrings.inputSelect.select2();

let filter = {};

var table = $("#example1").DataTable({
    responsive: true,
    lengthChange: true,
    autoWidth: false,
    order: [],
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
    serverSide: true,
    ajax: {
        url: `${url}/historytabungan/ajax/dataTable`,
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
            name: "tanggal",
            data: "tanggal",
        },
        {
            name: "kode",
            data: "kode",
        },
        {
            name: "siswa.nis",
            data: "siswa.nis",
            orderable: false,
        },
        {
            name: "siswa.nama",
            data: "siswa.nama",
            orderable: false,
        },
        {
            name: "keterangan",
            data: "keterangan",
        },
        {
            name: "petugas.nama",
            data: "petugas.nama",
            orderable: false,
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
    ],
});

domStrings.btnCari.on("click", function (e) {
    $(".cetak-excel").attr(
        "href",
        `${url}/historytabungan/cetak-excel?dari=${$(
            "#tgl_awal"
        ).val()}&sampai=${$("#tgl_akhir").val()}&${$(
            "#form-filter"
        ).serialize()}`
    );
    $(".cetak-pdf").attr(
        "href",
        `${url}/historytabungan/cetak-pdf?dari=${$(
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
        `${url}/historytabungan/cetak-excel?dari=${$(
            "#tgl_awal"
        ).val()}&sampai=${$("#tgl_akhir").val()}&${$(
            "#form-filter"
        ).serialize()}`
    );
    $(".cetak-pdf").attr(
        "href",
        `${url}/historytabungan/cetak-pdf?dari=${$(
            "#tgl_awal"
        ).val()}&sampai=${$("#tgl_akhir").val()}&${$(
            "#form-filter"
        ).serialize()}`
    );
});




