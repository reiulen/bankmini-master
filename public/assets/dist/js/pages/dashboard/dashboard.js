const domStrings = {
    btnFilterTs: $("#filterTsChart"),
    dsFilterTs: $("#dropfilterTsChart .dropdown-item"),
    btnFilterTab: $("#filterTabChart"),
    dsFilterTab: $("#dropfilterTabChart .dropdown-item"),
};

domStrings.dsFilterTs.click(function (e) {
    e.preventDefault();
    domStrings.btnFilterTs.text($(this).text());
    $(this).addClass("active").siblings().removeClass("active");
    var chart = $(this).text().toLowerCase();
    $(`#transaksiChart${chart}`).show("slow").siblings().hide("slow");
});

domStrings.dsFilterTab.click(function (e) {
    e.preventDefault();
    domStrings.btnFilterTs.text($(this).text());
    $(this).addClass("active").siblings().removeClass("active");
    var chart = $(this).text().toLowerCase();
    $(`#kreditChart${chart}`).show("slow").siblings().hide("slow");
});

$.getJSON(`${url}/dashboard/getDatats/tanggal`, function (data) {
    var ctx = document.getElementById("transaksiCharthari").getContext("2d");
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
});

$.getJSON(`${url}/dashboard/getDatats/bulan`, function (data) {
    var ctx = document.getElementById("transaksiChartbulan").getContext("2d");
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
});

$.getJSON(`${url}/dashboard/getDatats/tahun`, function (data) {
    var ctx = document.getElementById("transaksiCharttahun").getContext("2d");
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
});

$.getJSON(`${url}/dashboard/getDatatab/tanggal`, function (data) {
    var statistics_chart = document
        .getElementById("kreditCharthari")
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
});

$.getJSON(`${url}/dashboard/getDatatab/bulan`, function (data) {
    var statistics_chart = document
        .getElementById("kreditChartbulan")
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
});

$.getJSON(`${url}/dashboard/getDatatab/tahun`, function (data) {
    var statistics_chart = document
        .getElementById("kreditCharttahun")
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
});

// domStrings.dsFilterTs.click(function (e) {
//     e.preventDefault();
//     domStrings.btnFilterTs.text($(this).text());
//     $(this).addClass("active").siblings().removeClass("active");
//     var by = $(this).text().toLowerCase();
//     $.getJSON(`${url}/dashboard/getDatats/${by}`, function (data) {
//         var ctx = document
//             .getElementById("transaksiCharthari")
//             .getContext("2d");
//         var myChart = new Chart(ctx, {
//             type: "bar",
//             data: {
//                 labels: data.labels,
//                 datasets: [
//                     {
//                         label: "Transaksi",
//                         data: data.jumlah,
//                         backgroundColor: "#6091ba",
//                         pointBackgroundColor: "#ffffff",
//                         pointRadius: 4,
//                     },
//                 ],
//             },
//             options: {
//                 legend: {
//                     display: false,
//                 },
//                 scales: {
//                     yAxes: [
//                         {
//                             gridLines: {
//                                 drawBorder: false,
//                                 color: "#f2f2f2",
//                             },
//                             ticks: {
//                                 beginAtZero: true,
//                                 stepSize: 150,
//                             },
//                         },
//                     ],
//                     xAxes: [
//                         {
//                             ticks: {
//                                 display: false,
//                             },
//                             gridLines: {
//                                 display: false,
//                             },
//                         },
//                     ],
//                 },
//             },
//         });
//     });
// });

// domStrings.dsFilterTab.click(function (e) {
//     e.preventDefault();
//     domStrings.btnFilterTab.text($(this).text());
//     $(this).addClass("active").siblings().removeClass("active");
//     var by = $(this).text().toLowerCase();
//     $.getJSON(`${url}/dashboard/getDatatab/${by}`, function (data) {
//         var statistics_chart = document
//             .getElementById("kreditChart")
//             .getContext("2d");
//         var myChart = new Chart(statistics_chart, {
//             type: "line",
//             data: {
//                 labels: data.labels,
//                 datasets: [
//                     {
//                         label: "Kredit",
//                         data: data.jumlahkredit,
//                         borderWidth: 5,
//                         borderColor: "#6091ba",
//                         backgroundColor: "transparent",
//                         pointBackgroundColor: "#fff",
//                         pointBorderColor: "#6091ba",
//                         pointRadius: 4,
//                     },
//                     {
//                         label: "Debit",
//                         data: data.jumlahdebit,
//                         borderWidth: 5,
//                         borderColor: "#343a40",
//                         backgroundColor: "transparent",
//                         pointBackgroundColor: "#fff",
//                         pointBorderColor: "#343a40",
//                         pointRadius: 4,
//                     },
//                 ],
//             },
//             options: {
//                 legend: {
//                     display: false,
//                 },
//                 scales: {
//                     yAxes: [
//                         {
//                             gridLines: {
//                                 display: false,
//                                 drawBorder: false,
//                             },
//                             ticks: {
//                                 stepSize: 150,
//                             },
//                         },
//                     ],
//                     xAxes: [
//                         {
//                             gridLines: {
//                                 color: "#0000",
//                                 lineWidth: 2,
//                             },
//                         },
//                     ],
//                 },
//             },
//         });
//     });
// });
