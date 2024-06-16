<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_Dashboard.aspx.cs" Inherits="Paginas_CarLink_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .color-black {
            color: black;
        }

        .centralizar {
            display: flex;
            justify-content: center; /* Centraliza horizontalmente */
            align-items: center; /* Centraliza verticalmente */
        }

        .chart-bar canvas {
            width: 100% !important;
            height: 100% !important;
        }

        
        @media (max-width: 768px) {
            .centralizar {
                text-align: center;
            }
        }
    </style>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <form id="formDesempenho" runat="server" class="py-4">

        <div class="row">

            <div class="col-8 ">
                <div class="card shadow mb-4 ">
                    <div class="card-header">
                        <h3 class=" font-weight-bold text-primary text-center">Status de Serviços</h3>
                    </div>
                    <div class="card-body">
                        <div class="chart-bar">
                            <canvas id="myChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-4">
                <div class="card shadow mb-4 ">
                    <div class="card-header">
                        <h3 class="font-weight-bold text-primary text-center">Status de Serviços</h3>
                    </div>
                    <div class="card-body">
                        <div class="chart-bar">
                            <canvas id="myChartDoughnut"></canvas>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-12 centralizar ">

                <div class="card shadow ">

                    <div class="card-header">
                        <h3 class=" font-weight-bold text-primary text-center">Desempenho Anual</h3>
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

    <script type="text/javascript">
        // Função para carregar a tab ativa armazenada
        function loadActiveTab() {
            var activeTabId = sessionStorage.getItem('activeTab');
            if (activeTabId) {
                var activeTabLink = document.getElementById(activeTabId);
                if (activeTabLink) {
                    activeTabLink.click();
                }
            }
        }

        // Adicione um evento onload ao body para carregar a tab ativa quando a página é carregada
        window.onload = function () {
            loadActiveTab();
        };
    </script>
</asp:Content>

