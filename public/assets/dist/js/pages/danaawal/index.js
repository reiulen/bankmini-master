$.ajaxSetup({
    headers: {
        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
    },
});

const domStrings = {
    form: $("#form"),
    formInputan: $(".form-inputan"),
    btnTambah: $(".btn-tambah"),
    btnKembali: $(".btn-kembali"),
    inputVal: $("input[name='id']"),
    formTahunAkademik: $('select[name="tahun_akademik"]'),
    alertError: $(".alert-error"),
};

domStrings.formTahunAkademik.select2();

var table = $("#example1").DataTable({
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
    responsive: true,
    lengthChange: true,
    autoWidth: false,
    order: [[1, "DESC"]],
    processing: true,
    serverSide: true,
    ajax: {
        url: `${url}/danaawal/ajax/data`,
        method: "POST",
    },
    columns: [
        {
            name: "created_at",
            data: "DT_RowIndex",
            searchable: false,
        },
        {
            name: "tahun_akademik",
            data: "tahun_akademik",
        },
        {
            name: "dana",
            data: "dana",
        },
        {
            name: "nominal",
            data: "nominal",
        },
        {
            name: "aksi",
            data: "aksi",
            searchable: false,
            orderable: false,
        },
    ],
});

domStrings.btnTambah.on("click", function (e) {
    e.preventDefault();
    domStrings.form.trigger("reset");
    domStrings.inputVal.val("0");
    domStrings.formTahunAkademik
        .val("- Pilih Tahun Akademik -")
        .trigger("change");
    domStrings.formInputan.slideDown();
});

domStrings.btnKembali.on("click", function () {
    domStrings.formTahunAkademik
        .val("- Pilih Tahun Akademik -")
        .trigger("change");
    domStrings.formInputan.slideUp();
    domStrings.form.trigger("reset");
});

table.on("click", "a.btn-edit", function (e) {
    e.preventDefault();
    const id = $(this).data("id");
    domStrings.formInputan.slideDown();
    domStrings.inputVal.val(id);
    $.getJSON(`${url}/danaawal/ajax/getdata/${id}`, function (res) {
        $("select[name='tahun_akademik'] option").remove(
            "option[data='select']"
        );
        if (domStrings.form.find("option[data='select']").length < 1) {
            domStrings.form
                .find("select[name='tahun_akademik']")
                .append(
                    '<option value="' +
                        res.data.tahun_akademik_id +
                        '" selected data="select">' +
                        res.awal +
                        " - " +
                        res.akhir +
                        " " +
                        "</option>"
                );
        }
        domStrings.form.find("input[name='dana']").val(res.data.dana);
        domStrings.form
            .find("input[name='nominal']")
            .val("Rp. " + formatRupiah(res.data.nominal));
    });
});

domStrings.form.on("submit", function (e) {
    e.preventDefault();
    $.ajax({
        url: $(this).attr("action"),
        method: $(this).attr("method"),
        data: $(this).serialize(),
        success: function (response) {
            if (!response.error) {
                table.draw();
                domStrings.form.trigger("reset");
                domStrings.formInputan.slideUp();
                Swal.fire("Berhasil disimpan", response.success, "success");
            }
            console.log(response);
        },
        error: function (response) {
            console.log(response);
            Swal.fire("Gagal disimpan", response.responseJSON.message, "error");
        },
    });
});

table.on("click", ".btn-hapus", function (e) {
    e.preventDefault();
    var id = $(this).data("id");
    var nama = $(this).data("nama");
    Swal.fire({
        title: "Apakah yakin?",
        text: `Dana ${nama} akan dihapus`,
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#6492b8da",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yakin",
        cancelButtonText: "Batal",
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                url: `${url}/danaawal/${id}`,
                method: "post",
                data: [{ name: "_method", value: "DELETE" }],
                success: function (res) {
                    table.draw();
                    Swal.fire(`Berhasil dihapus`, res.success, "success");
                },
                error: function (res) {
                    console.log(res);
                    Swal.fire(`Gagal`, `${res.responseJSON.message}`, "error");
                },
            });
        }
    });
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
    return prefix == undefined ? rupiah : rupiah ? "Rp. " + rupiah : "";
}
