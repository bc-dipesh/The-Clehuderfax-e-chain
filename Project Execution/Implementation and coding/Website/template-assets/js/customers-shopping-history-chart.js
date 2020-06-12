function getMonthName(monthNumber) {
    monthNumber = parseInt(monthNumber);
    const monthNames = ["January", "February", "March", "April", "May", "June",
        "July", "August", "September", "October", "November", "December"
    ];

    return monthNames[monthNumber];
}

// ... send ajax request on window load.
window.onload = function () {

    let shoppingHistoryChart = document.getElementById("shoppingHistoryChart");

    // setup ajax request
    let xhr = new XMLHttpRequest();
    xhr.open('GET', '../../ajax-req-processings/get-customers-shopping-details.php', true);
    xhr.send();

    xhr.onload = function () {
        let data = JSON.parse(this.responseText);
        let months = [];
        let orders = [];

        for (let i in data) {
            months.push(getMonthName(data[i].Month));
            orders.push(data[i].Orders);
        }

        let chartData = {
            labels: months,
            datasets: [{
                label: 'Number of orders',
                data: orders,
                lineTension: 0.3,
                backgroundColor: "rgba(78, 115, 223, 0.05)",
                borderColor: "rgba(78, 115, 223, 1)",
                pointRadius: 3,
                pointBackgroundColor: "rgba(78, 115, 223, 1)",
                pointBorderColor: "rgba(78, 115, 223, 1)",
                pointHoverRadius: 3,
                pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
                pointHoverBorderColor: "rgba(78, 115, 223, 1)",
                pointHitRadius: 10,
                pointBorderWidth: 2,
            }]
        };

        let lineChart = new Chart(shoppingHistoryChart, {
            type: 'bar',
            data: chartData,
            options: {
                maintainAspectRatio: false,
                layout: {
                    padding: {
                        left: 10,
                        right: 25,
                        top: 25,
                        bottom: 0
                    }
                },
                scales: {
                    xAxes: [{
                        time: {
                            unit: 'date'
                        },
                        gridLines: {
                            display: false,
                            drawBorder: false
                        },
                        ticks: {
                            maxTicksLimit: 7
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            maxTicksLimit: 5,
                            padding: 10,
                            // Include a dollar sign in the ticks
                            callback: function (value) {
                                return parseInt(value);
                            }
                        },
                        gridLines: {
                            color: "rgb(234, 236, 244)",
                            zeroLineColor: "rgb(234, 236, 244)",
                            drawBorder: false,
                            borderDash: [2],
                            zeroLineBorderDash: [2]
                        }
                    }],
                },
                legend: {
                    display: false
                }
            }
        });
    }
}