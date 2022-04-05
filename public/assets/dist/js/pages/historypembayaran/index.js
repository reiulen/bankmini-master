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
    language: {
        processing:
            '<div class="spinner-border text-info" role="status">' +
            '<span class="sr-only">Loading...</span>' +
            "</div>",
    },
    processing: true,
    serverSide: true,
    order: [],
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
            name: "tanggal",
            data: "tanggal",
        },
        {
            name: "nis",
            data: "siswa.nis",
        },
        {
            name: "nama",
            data: "siswa.nama",
        },
        {
            name: "pembayaran",
            data: "danaawal.dana",
        },
        {
            name: "petugas",
            data: "petugas.nama",
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
