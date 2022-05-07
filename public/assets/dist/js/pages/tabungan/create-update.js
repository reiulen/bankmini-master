const domStrings = {
    inputTipe: $('input[name="tipe"]'),
    sisaSaldo: $(".sisa-saldo"),
    sisaSaldoEdit: $(".sisa-saldo-edit"),
    valueInputTipe: $("input[type='radio']:checked").val(),
    btnSaveCetak: $(".btn-save-cetak"),
};

function replaceString(val) {
    return val.replace(/[^0-9]/g, "");
}

domStrings.sisaSaldo.text("Rp. " + formatRupiah(sisaSaldo));
var rupiah = document.getElementById("nominal");

rupiah.addEventListener("keyup", function (e) {
    rupiah.value = formatRupiah(this.value, "");
});
rupiah.addEventListener("keyup", function (e) {
    const jumlah = parseInt(replaceString(this.value)) + parseInt(sisaSaldo);
    domStrings.sisaSaldo.html("Rp. " + formatRupiah(`${jumlah}`));
});
domStrings.inputTipe.on("change", function () {
    if (this.value == 1) {
        rupiah.addEventListener("keyup", function (e) {
            const jumlah =
                parseInt(replaceString(this.value)) +
                parseInt(sisaSaldo) -
                parseInt(inputNominal);
            domStrings.sisaSaldo.text("Rp. " + formatRupiah(`${jumlah}`));
        });
    } else {
        rupiah.addEventListener("keyup", function (e) {
            if (sisaSaldo < inputNominal) {
                const jumlah =
                    parseInt(sisaSaldo) -
                    parseInt(inputNominal) -
                    parseInt(replaceString(this.value));
                domStrings.sisaSaldo.text("Rp. " + formatRupiah(`${jumlah}`));
                if (jumlah < 0) {
                    domStrings.sisaSaldo.text("Saldo tidak mencukupi");
                }
            } else {
                const jumlah =
                    parseInt(sisaSaldo) +
                    parseInt(inputNominal) -
                    parseInt(replaceString(this.value));
                domStrings.sisaSaldo.text("Rp. " + formatRupiah(`${jumlah}`));
                if (jumlah < 0) {
                    domStrings.sisaSaldo.text("Saldo tidak mencukupi");
                }
            }
        });
    }
});

if (domStrings.valueInputTipe) {
    if (domStrings.valueInputTipe == "1") {
        rupiah.addEventListener("keyup", function (e) {
            const jumlah =
                parseInt(replaceString(this.value)) +
                parseInt(sisaSaldo) -
                inputNominal;
            domStrings.sisaSaldo.text("Rp. " + formatRupiah(`${jumlah}`));
        });
    }
    if (domStrings.valueInputTipe == "2") {
        rupiah.addEventListener("keyup", function (e) {
            const jumlah =
                parseInt(sisaSaldo) +
                parseInt(inputNominal) -
                parseInt(replaceString(this.value));
            domStrings.sisaSaldo.text("Rp. " + formatRupiah(`${jumlah}`));
            if (jumlah < 0) {
                domStrings.sisaSaldo.text("Saldo tidak mencukupi");
            }
        });
    }
}

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

domStrings.btnSaveCetak.click(function () {
    $('input[name="cetak"]').val(1);
});
