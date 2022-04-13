$.ajaxSetup({
    headers: {
        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
    },
});
const domStrings = {
    btnFilterTs: $("#filterTsChart"),
    dsFilterTs: $("#dropfilterTsChart .dropdown-item"),
    btnFilterTab: $("#filterTabChart"),
    dsFilterTab: $("#dropfilterTabChart .dropdown-item"),
};

let filter = { by: "tanggal" };
window.onload = function () {
    responseChartTs(filter);
    responseChartTab(filterTab);
};
function responseChartTs(filter) {
    $.ajax({
        url: `${url}/dashboard/getDatats`,
        method: "POST",
        data: filter,
        success: function (data) {
            var ctx = document
                .getElementById("transaksiChart")
                .getContext("2d");
            var myChart = new Chart(ctx, {
                type: "bar",
                data: {
                    labels: data.labels,
                    datasets: [
                        {
                            label: "Transaksi",
                            data: data.jumlah,
                            backgroundColor: "#6091ba",
                            pointBackgroundColor: "#ffffff",
                            pointRadius: 4,
                        },
                    ],
                },
                options: {
                    legend: {
                        display: false,
                    },
                    scales: {
                        yAxes: [
                            {
                                gridLines: {
                                    drawBorder: false,
                                    color: "#f2f2f2",
                                },
                                ticks: {
                                    beginAtZero: true,
                                    stepSize: 150,
                                },
                            },
                        ],
                        xAxes: [
                            {
                                ticks: {
                                    display: false,
                                },
                                gridLines: {
                                    display: false,
                                },
                            },
                        ],
                    },
                },
            });
        },
    });
}
domStrings.dsFilterTs.click(function (e) {
    e.preventDefault();
    domStrings.btnFilterTs.text($(this).text());
    $(this).addClass("active").siblings().removeClass("active");
    var chart = $(this).text().toLowerCase();
    filter.by = chart;
    responseChartTs(filter);
});

//kredit dan debit
let filterTab = { by: "tanggal" };
function responseChartTab(filterTab) {
    $.ajax({
        url: `${url}/dashboard/getDatatab`,
        method: "POST",
        data: filterTab,
        success: function (data) {
            var statistics_chart = document
                .getElementById("kreditChart")
                .getContext("2d");
            var myChart = new Chart(statistics_chart, {
                type: "line",
                data: {
                    labels: data.labels,
                    datasets: [
                        {
                            label: "Kredit",
                            data: data.jumlahkredit,
                            borderWidth: 5,
                            borderColor: "#6091ba",
                            backgroundColor: "transparent",
                            pointBackgroundColor: "#fff",
                            pointBorderColor: "#6091ba",
                            pointRadius: 4,
                        },
                        {
                            label: "Debit",
                            data: data.jumlahdebit,
                            borderWidth: 5,
                            borderColor: "#343a40",
                            backgroundColor: "transparent",
                            pointBackgroundColor: "#fff",
                            pointBorderColor: "#343a40",
                            pointRadius: 4,
                        },
                    ],
                },
                options: {
                    legend: {
                        display: false,
                    },
                    scales: {
                        yAxes: [
                            {
                                gridLines: {
                                    display: false,
                                    drawBorder: false,
                                },
                                ticks: {
                                    stepSize: 150,
                                },
                            },
                        ],
                        xAxes: [
                            {
                                gridLines: {
                                    color: "#0000",
                                    lineWidth: 2,
                                },
                            },
                        ],
                    },
                },
            });
        },
    });
}
domStrings.dsFilterTab.click(function (e) {
    e.preventDefault();
    domStrings.btnFilterTab.text($(this).text());
    $(this).addClass("active").siblings().removeClass("active");
    var chart = $(this).text().toLowerCase();
    filterTab.by = chart;
    responseChartTab(filterTab);
});
