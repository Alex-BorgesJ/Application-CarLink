<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_Dashboard.aspx.cs" Inherits="Paginas_CarLink_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
    #formDesempenho {
        padding: 20px;
    }

    .col-4, .col-8 {
        padding: 15px;
    }

    @media (min-width: 992px) {
        .col-4 {
            flex: 0 0 33.3333%;
            max-width: 33.3333%;
        }

        .col-8 {
            flex: 0 0 66.6667%;
            max-width: 66.6667%;
        }
    }

    @media (max-width: 991px) {
        .col-4, .col-8 {
            flex: 0 0 100%;
            max-width: 100%;
        }
    }

    .row {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
    }

    .card {
        background: #fff;
        border-radius: 4px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .card-header {
        padding: 10px 20px;
        background: #f8f9fc;
        border-bottom: 1px solid #e3e6f0;
    }

    .card-body {
        width: 100%;
        text-align: center;
    }

    .chart-bar {
        position: relative;
        height: 400px; /* Ajuste conforme necessário */
        width: 100%;
    }

    canvas {
        width: 100% !important;
        height: 100% !important;
    }
</style>


    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <form id="formDesempenho" runat="server" class="mt-2" >
        <div class="row">
            <div class="col-4 ">
                <div class="card shadow">
                    <div class="card-header">
                        <h3 class="m-0 font-weight-bold text-primary text-center">Status de Serviços</h3>
                    </div>
                    <div class="card-body ">
                        <div class="chart-bar">
                            <canvas id="myChartDoughnut"></canvas>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-8">
                <div class="card shadow ">
                    <div class="card-header">
                        <h3 class="m-0 font-weight-bold text-primary text-center">Desempenho Anual</h3>
                    </div>
                    <div class="card-body">
                        <div class="chart-bar">
                            <canvas id="myChartBar"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>



    <script>
        var ctx = document.getElementById('myChartDoughnut').getContext('2d');
        var myChartDoughnut = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: labelsJson,
                datasets: [{
                    backgroundColor: colorsJson,
                    data: dataJson
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                title: {
                    display: true,
                    text: 'World Wide Wine Production 2018'
                }
            }
        });

        var ctxBar = document.getElementById('myChartBar').getContext('2d');
        var myChartBar = new Chart(ctxBar, {
            type: 'bar',
            data: {
                labels: labelsJson,
                datasets: [{
                    label: 'Dataset 1',
                    backgroundColor: colorsJson,
                    data: dataJson
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                title: {
                    display: true,
                    text: 'Annual Performance'
                }
            }
        });
    </script>





</asp:Content>


