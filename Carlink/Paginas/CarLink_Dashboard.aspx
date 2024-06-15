<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_Dashboard.aspx.cs" Inherits="Paginas_CarLink_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <form id="formDesempenho" runat="server">
        <div class="row">
            <div class="col-6">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Status de Serviços</h6>
                    </div>
                    <div class="card-body">
                        <div class="chart-bar">
                            <canvas id="myChart"></canvas>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-6">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Status de Serviços</h6>
                    </div>
                    <div class="card-body">
                        <div class="chart-bar">
                            <canvas id="myChartDoughnut"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="col-6 align-items-center">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Desempenho Anual</h6>
                        </div>
                        <div class="card-body">
                            <div class="chart-bar">
                                <canvas id="myChartBar"></canvas>
                            </div>
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

