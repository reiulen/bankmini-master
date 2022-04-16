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
    uploadSiswa: $("#uploadSiswa"),
};
domStrings.inputFilter.select2();

$("#mySearchButton").on("keyup click", function () {
    table.search($("#mySearchText").val()).draw();
});

var table = $("#example1").DataTable({
    lengthMenu: [
        [10, 25, 50, 100, 500, -1],
        [10, 25, 50, 100, 500, "All"],
    ],
    responsive: true,
    lengthChange: true,
    autoWidth: false,
    order: [[3, "desc"]],
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
        url: `${url}/siswa/ajax/dataTable`,
        method: "POST",
        data: function (d) {
            d.filter = filter;
            return d;
        },
    },
    columns: [
        {
            name: "created_at",
            data: "DT_RowIndex",
            searchable: false,
        },
        {
            name: "foto",
            data: "foto",
        },
        {
            name: "nisn",
            data: "nisn",
        },
        {
            name: "nis",
            data: "nis",
        },
        {
            name: "nama",
            data: "nama",
        },
        {
            name: "jenis_kelamin",
            data: "jenis_kelamin",
        },
        {
            name: "kelas",
            data: "kelas",
        },
        {
            name: "tahun_akademik",
            data: "tahun_akademik",
        },
        {
            name: "aksi",
            data: "aksi",
            searchable: false,
            orderable: false,
        },
    ],
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

