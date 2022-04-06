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

var table = $("#example1").DataTable({
    responsive: true,
    lengthChange: true,
    autoWidth: false,
    order: [[3, "asc"]],
    language: {
        processing:
            '<div class="spinner-border text-info" role="status">' +
            '<span class="sr-only">Loading...</span>' +
            "</div>",
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
            name: "no",
            data: "DT_RowIndex",
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

