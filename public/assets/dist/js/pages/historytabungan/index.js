$.ajaxSetup({
    headers: {
        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
    },
});

const domStrings = {
    inputSelect: $(".filter"),
    formFilter: $("#form-filter"),
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
    ajax: {
        url: `${url}/historytabungan/ajax/dataTable`,
        method: "POST",
        data: function (data) {
            data.filter = filter;
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
            name: "nis",
            data: "siswa.nis",
        },
        {
            name: "siswa",
            data: "siswa.nama",
        },
        {
            name: "keterangan",
            data: "keterangan",
        },
        {
            name: "petugas",
            data: "petugas.nama",
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
