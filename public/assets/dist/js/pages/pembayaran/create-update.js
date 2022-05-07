const domStrings = {
    inputPembayaran: $(".pembayaran"),
    inputNominal: $("#nominal"),
    sisTagihan: $(".sisa-tagihan"),
    btnSaveCetak: $(".btn-save-cetak"),
};

domStrings.inputPembayaran.select2();
domStrings.inputPembayaran.on("change", function () {
    const valId = $(this).val();
    $.getJSON(
        `${url}/siswa/pembayaran/ajax/${nis}/getdata/${valId}`,
        function (data) {
            if (data.data.nominal == 0) {
                domStrings.sisTagihan.html("Lunas");
                domStrings.inputNominal.val("Lunas");
                domStrings.inputNominal.attr("disabled", true);
            } else {
                domStrings.sisTagihan.html(
                    formatRupiah(`${data.data.nominal}`)
                );
                domStrings.inputNominal.attr("disabled", false);
                domStrings.inputNominal.val(
                    "Rp. " + formatRupiah(`${data.data.nominal}`)
                );
            }
        }
    );
});

var rupiah = document.getElementById("nominal");
rupiah.addEventListener("keyup", function (e) {
    rupiah.value = formatRupiah(this.value, "Rp. ");
});

/* Fungsi formatRupiah */
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
    return prefix == undefined ? rupiah : rupiah ? rupiah : "";
}

$("#example1").DataTable({
    responsive: true,
    autoWidth: false,
    responsive: true,
    order: [],
    lengthMenu: [
        [5, 10, 25, 100, -1],
        [5, 10, 25, 100, "All"],
    ],
});

domStrings.btnSaveCetak.click(function () {
    $('input[name="cetak"]').val(1);
});

