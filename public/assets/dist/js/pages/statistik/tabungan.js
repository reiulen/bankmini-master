$.ajaxSetup({
    headers: {
        "X-CSRF-TOKEN": $("meta[name='csrf-token']").attr("content"),
    },
});

let filter = { status: [] };

const domStrings = {
    form: $("form"),
    chartTabungan: $(".chartTabungan"),
    tableTabungan: $("#table-tabungan"),
    tableTabunganBody: $("#tableTabungan"),
};

const chartTab = new ApexCharts(document.querySelector("#tabungan"), {
    series: [
        {
            name: "Debit",
            data: [0],
        },
        {
            name: "Kredit",
            data: [0],
        },
    ],
    chart: {
        type: "bar",
        height: 350,
    },
    plotOptions: {
        bar: {
            horizontal: false,
            columnWidth: "55%",
            endingShape: "rounded",
        },
    },
    dataLabels: {
        enabled: false,
    },
    stroke: {
        show: true,
        width: 2,
        colors: ["transparent"],
    },
    xaxis: {
        categories: ["hari"],
    },
    fill: {
        opacity: 1,
    },
    tooltip: {
        y: {
            formatter: function (val) {
                return formatRupiah(`${val}`);
            },
        },
    },
});
chartTab.render();

domStrings.form.on("submit", function (e) {
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
    domStrings.chartTabungan.slideDown();
    domStrings.tableTabunganBody.slideDown();
    chartTabungan($(this).serialize());
    table.draw();
});

function chartTabungan(input) {
    $.ajax({
        url: `${url}/statistik/tabungan/getData`,
        method: "POST",
        data: input,
        success: function (data) {
            domStrings.chartTabungan.find(".card-header")
                .html(`<h3 class="card-title">
                            <i class="fas fa-chart-pie mr-1"></i>
                            Statistik Tabungan ${data.tampil}
                        </h3>`);

            chartTab.updateOptions({
                series: [
                    {
                        name: "Debit",
                        data: data.debit,
                    },
                    {
                        name: "Kredit",
                        data: data.kredit,
                    },
                ],
                chart: {
                    type: "bar",
                    height: 350,
                },
                plotOptions: {
                    bar: {
                        horizontal: false,
                        columnWidth: "55%",
                        endingShape: "rounded",
                    },
                },
                dataLabels: {
                    enabled: false,
                },
                stroke: {
                    show: true,
                    width: 2,
                    colors: ["transparent"],
                },
                xaxis: {
                    categories: data.kategori,
                },
                fill: {
                    opacity: 1,
                },
                tooltip: {
                    y: {
                        formatter: function (val) {
                            return formatRupiah(`${val}`);
                        },
                    },
                },
            });
        },
        error: function (err) {
            console.log(err.responseJSON.message);
        },
    });
}

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
var table = $("#table-tabungan").DataTable({
    responsive: true,
    lengthChange: true,
    autoWidth: false,
    pagingType: "full_numbers",
    searching: false,
    ordering: false,
    paginate: false,
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
        url: `${url}/statistik/tabungan/getDatatable`,
        method: "POST",
        data: function (data) {
            data.filter = filter;
            return data;
        },
    },
    columns: [
        {
            name: "no",
            data: "DT_RowIndex",
        },
        {
            name: "laporan",
            data: "laporan",
        },
        {
            name: "debit",
            data: "debit",
        },
        {
            name: "kredit",
            data: "kredit",
        },
    ],
});
