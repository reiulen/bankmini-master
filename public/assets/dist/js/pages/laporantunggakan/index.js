$.ajaxSetup({
    headers: {
        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
    },
});

var table = $("#example1").DataTable({
    responsive: true,
    autoWidth: false,
    serverSide: true,
    ajax: {
        url: `${url}/laporantunggakan/ajax/dataTables`,
        method: "post",
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
    ],
});
