const domStrings = {
    filterTA: $('select[name="tahun_akademik"]'),
    cardTable: $("#card-table"),
    formFilter: $("#form-filter"),
};

$(".filter").select2();

// domStrings.filterTA.on("change", function () {
//     console.log(`${url}/laporantunggakan/ajax/tables?${$(this).val()}`);
//     domStrings.cardTable.load(
//         `${url}/laporantunggakan/ajax/tables?${$(this).val()}`
//     );
// });

domStrings.formFilter.on("submit", function (e) {
    e.preventDefault();
    if (domStrings.filterTA.val() == "") {
        Swal.fire("Gagal", "Tahun Akademik harus diisi", "error");
    } else {
        domStrings.cardTable.load(
            `${url}/laporantunggakan/ajax/tables?${$(this).serialize()}`
        );
        $("#modalFilter").modal("hide");
    }
});
