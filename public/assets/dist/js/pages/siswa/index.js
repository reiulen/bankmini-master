$.ajaxSetup({
    headers: {
        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
    },
});

const domStrings = {
    inputFilter: $(".filter"),
};
domStrings.inputFilter.select2();

var table = $("#example1").DataTable({
    responsive: true,
    lengthChange: true,
    autoWidth: false,
    serverSide: true,
    ajax: {
        url: `${url}/siswa/ajax/dataTable`,
        method: "POST",
        data: function (data) {
            data.kelas = domStrings.inputFilter.val();
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

domStrings.inputFilter.on("change", function () {
    table.draw();
});
