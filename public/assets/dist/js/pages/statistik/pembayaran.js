$.ajaxSetup({
    headers: {
        "X-CSRF-TOKEN": $("meta[name='csrf-token']").attr("content"),
    },
});

let filter = { status: [] };

const domStrings = {
    form: $("form"),
    chartPembayaran: $(".chartPembayaran"),
    tablePembayaran: $("#table-pembayaran"),
    tablePembayaranBody: $("#tablePembayaran"),
};

const chartPemabayaran = new ApexCharts(document.querySelector("#pembayaran"), {
    series: [
        {
            name: "Total",
            data: [],
        },
    ],
    chart: {
        height: 350,
        type: "bar",
    },
    plotOptions: {
        bar: {
            borderRadius: 10,
            dataLabels: {
                position: "top", // top, center, bottom
            },
        },
    },

    xaxis: {
        categories: [],
        position: "top",
        axisBorder: {
            show: false,
        },
        axisTicks: {
            show: false,
        },
        crosshairs: {
            fill: {
                type: "gradient",
                gradient: {
                    colorFrom: "#D8E3F0",
                    colorTo: "#BED1E6",
                    stops: [0, 100],
                    opacityFrom: 0.4,
                    opacityTo: 0.5,
                },
            },
        },
        tooltip: {
            enabled: true,
        },
    },
    yaxis: {
        axisBorder: {
            show: false,
        },
        axisTicks: {
            show: false,
        },
        labels: {
            show: false,
            formatter: function (val) {
                return val + "%";
            },
        },
    },
});
chartPemabayaran.render();

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
    domStrings.chartPembayaran.slideDown();
    domStrings.tablePembayaranBody.slideDown();
    chartPembayaran($(this).serialize());
    table.draw();
});

function chartPembayaran(input) {
    $.ajax({
        url: `${url}/statistik/pembayaran/getData`,
        method: "POST",
        data: input,
        success: function (data) {
            domStrings.chartPembayaran.find(".card-header")
                .html(`<h3 class="card-title">
                            <i class="fas fa-chart-pie mr-1"></i>
                            Statistik Pembayaran ${data.tampil}
                        </h3>`);

            chartPemabayaran.updateOptions({
                series: [
                    {
                        name: "Total",
                        data: data.data,
                    },
                ],
                chart: {
                    height: 350,
                    type: "bar",
                },
                plotOptions: {
                    bar: {
                        borderRadius: 10,
                        dataLabels: {
                            position: "top", // top, center, bottom
                        },
                    },
                },
                xaxis: {
                    categories: data.kategori,
                    position: "top",
                    axisBorder: {
                        show: false,
                    },
                    axisTicks: {
                        show: false,
                    },
                    crosshairs: {
                        fill: {
                            type: "gradient",
                            gradient: {
                                colorFrom: "#D8E3F0",
                                colorTo: "#BED1E6",
                                stops: [0, 100],
                                opacityFrom: 0.4,
                                opacityTo: 0.5,
                            },
                        },
                    },
                    tooltip: {
                        enabled: true,
                    },
                },
                yaxis: {
                    axisBorder: {
                        show: false,
                    },
                    axisTicks: {
                        show: false,
                    },
                    labels: {
                        show: false,
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
var table = $("#table-pembayaran").DataTable({
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
        url: `${url}/statistik/pembayaran/getDatatable`,
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
            name: "data",
            data: "data",
        },
    ],
});
