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
        url: `${url}/laporantunggakan/ajax/dataTables`,
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
            name: "tunggakan",
            data: "tunggakan",
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
                            <a class="dropdown-item" href="${url}/laporantunggakan/sisatagihan/${item.nis}"><i class="fas fa-eye text-primary pr-1"></i> Sisa Tagihan</a>
                        </div>
                    </div>
                `;
            },
            orderable: false,
            searchable: false,
        },
    ],
});

domStrings.inputForm.submit(function (e) {
    e.preventDefault();
    $.getJSON(
        `${url}/data/laporantunggakan/ajax/tables?hasil=true&${$(
            this
        ).serialize()}`,
        function (data) {
            $(".sisatunggakan").html(`Total : ${data.tunggakan}`);
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
        `${url}/laporantunggakan/cetak-excel?${$("#form-filter").serialize()}`
    );
    $(".cetak-pdf").attr(
        "href",
        `${url}/laporantunggakan/cetak-pdf?${$("#form-filter").serialize()}`
    );
});

// domStrings.filterTA.on("change", function () {
//     console.log(`${url}/laporantunggakan/ajax/tables?${$(this).val()}`);
//     domStrings.cardTable.load(
//         `${url}/laporantunggakan/ajax/tables?${$(this).val()}`
//     );
// });

// domStrings.formFilter.on("submit", function (e) {
//     e.preventDefault();
//     if (domStrings.filterTA.val() == "") {
//         Swal.fire("Gagal", "Tahun Akademik harus diisi", "error");
//     } else {
//         domStrings.cardTable.load(
//             `${url}/laporantunggakan/ajax/tables?${$(this).serialize()}`
//         );
//         $("#modalFilter").modal("hide");
//     }
// });
