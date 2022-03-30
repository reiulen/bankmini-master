$.ajaxSetup({
    headers: {
        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
    },
});

let filter = { status: [] };

const domStrings = {
    inputFilter: $(".filter"),
    inputForm: $("#form-filter"),
    jKelamin: $('input[name="j_kelamin"]').val(),
    jurusan: $('input[name="jurusan"]').val(),
    kelas: $('input[name="kelas"]').val(),
    tahunAkademik: $('input[name="tahun_akademik"]').val(),
    formTanggal: $("#form-tgl"),
    btnCari: $(".btn-cari"),
};
domStrings.inputFilter.select2();
console.log($("#dari"));

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
        url: `${url}/laporantabungan/ajax/dataTables`,
        method: "POST",
        data: function (d) {
            d.filter = filter;
            d.dari = $("#tgl_awal").val();
            d.sampai = $("#tgl_akhir").val();
            console.log(d.sampai);
            return d;
        },
    },
    columns: [
        {
            name: "nis",
            data: "nis",
        },
        {
            name: "nama",
            data: "nama",
        },
        {
            name: "kelas",
            data: "kelas",
        },
        {
            name: "debit",
            data: "debit",
        },
        {
            name: "kredit",
            data: "kredit",
        },
        {
            name: "saldo",
            data: function (data) {
                return `<p class="total-saldo">${data.saldo}</p>`;
            },
        },
    ],
});

$("#dari").on("change", function (e) {
    $("#sampai").min = $(this).val();
});

domStrings.btnCari.on("click", function (e) {
    table.draw();
});

domStrings.inputForm.submit(function (e) {
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
    $("#modalFilter").modal("hide");
    table.draw();
});

const totalSaldo = $("tbody tr td p.total-saldo");
let total_saldo = [];
$.each(totalSaldo, function (index, value) {
    total_saldo.push($(value).text());
});
console.log(total_saldo);
