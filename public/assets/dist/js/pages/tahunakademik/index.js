$(function () {
    $("#example1").DataTable({
        responsive: true,
        lengthChange: true,
        autoWidth: false,
    });
});

function tanggal(tgl) {
    console.log(tgl);
    document.getElementById("tgl_akhir").min = tgl;
}
