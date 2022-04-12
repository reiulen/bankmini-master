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

var table = $("#example1").DataTable({
    lengthMenu: [
        [10, 25, 50, 100, 500, -1],
        [10, 25, 50, 100, 500, "All"],
    ],
    order: [],
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
    processing: true,
    serverSide: true,
    ajax: {
        url: `${url}/laporantabungan/ajax/dataTables`,
        method: "POST",
        data: function (d) {
            d.filter = filter;
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

$.getJSON(
    `${url}/laporantabungan/ajax/dataTables?sisa_saldo=true&${domStrings.inputForm.serialize()}`,
    function (data) {
        $(".total_saldo").html("Rp. " + formatRupiah(`${data}`));
    }
);

domStrings.inputForm.submit(function (e) {
    e.preventDefault();
    $.getJSON(
        `${url}/laporantabungan/ajax/dataTables?sisa_saldo=true&${$(
            this
        ).serialize()}`,
        function (data) {
            $(".total_saldo").html("Rp. " + formatRupiah(`${data}`));
        }
    );

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
    $(".laporan").slideDown();
    $("#modalFilter").modal("hide");
    table.draw();
    $(".cetak-excel").attr(
        "href",
        `${url}/laporantabungan/cetak-excel?${$("#form-filter").serialize()}`
    );
    $(".cetak-pdf").attr(
        "href",
        `${url}/laporantabungan/cetak-pdf?${$("#form-filter").serialize()}`
    );
});

function formatRupiah(angka, prefix) {
    var number_string = angka.replace(/[^,\d]/g, "").toString(),
        split = number_string.split(","),
        sisa = split[0].length % 3,
        rupiah = split[0].substr(0, sisa),
        ribuan = split[0].substr(sisa).match(/\d{3}/gi);

    // tambahkan titik jika yang di input sudah menjadi angka ribuan
    if (ribuan) {
        separator = sisa ? "." : "";
        rupiah += separator + ribuan.join(".");
    }

    rupiah = split[1] != undefined ? rupiah + "," + split[1] : rupiah;
    return prefix == undefined ? rupiah : rupiah ? "Rp. " + rupiah : "";
}
