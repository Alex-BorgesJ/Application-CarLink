<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_Home.aspx.cs" Inherits="Pages_UserDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .btn-home {
            border: none;
        }

        .icon-large {
            font-size: 5rem; /* ajuste o tamanho conforme necessário */
        }

        .card-body {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 20px; /* ajuste conforme necessário */
        }

        .title {
            margin-top: 0.25rem; /* ajuste conforme necessário */
            font-size: 3rem; /* ajuste o tamanho conforme necessário */
        }
    </style>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class=" d-flex justify-content-center align-items-center py-4">
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 card-deck">


            <a class="col d-flex justify-content-center my-2 p-0 text-decoration-none" href="CarLink_Cadastro.aspx">
                <div class="card btn-home bg_img">
                    <div class="card-body">
                        <div class="icon-large text-white">
                            <i class="fas fa-user-edit "></i>
                            <!-- Ícone para cadastroo -->
                        </div>
                        <h1 class="card-title text-white text-cenetr">Cadastros</h1>
                    </div>
                </div>
            </a>

            

            <a class="col d-flex justify-content-center my-2 p-0 text-decoration-none" href="CarLink_Ordem.aspx">
                <div class="card btn-home bg_img">
                    <div class="card-body">
                        <div class="icon-large text-white">
                            <i class="fas fa-clipboard-list"></i>
                            <!-- Ícone para Ordem de Serviço -->
                        </div>
                        <h1 class="card-title text-white">Ordem de Serviço</h1>
                    </div>
                </div>
            </a>

            <a class="col d-flex justify-content-center my-2 p-0 text-decoration-none" href="CarLink_Dashboard.aspx">
                <div class="card btn-home bg_img">
                    <div class="card-body">
                        <div class="icon-large text-white">
                            <i class="fas fa-chart-line"></i>
                            <!-- Ícone para Desempenho -->
                        </div>
                        <h1 class="card-title text-white">Desempenho</h1>
                    </div>
                </div>
            </a>

            <a class="col d-flex justify-content-center my-2 p-0 text-decoration-none" href="Carlink_EditaCliente.aspx">
                <div class="card btn-home bg_img">
                    <div class="card-body">
                        <div class="icon-large text-white">
                            <i class="far fa-address-card"></i>
                            <!-- Ícone para Registros -->
                        </div>
                        <h1 class="card-title text-white">Registros</h1>
                    </div>
                </div>
            </a>

            <a class="col d-flex justify-content-center my-2 p-0 text-decoration-none" href="Carlink_Consultas.aspx">
                <div class="card btn-home bg_img">
                    <div class="card-body">
                        <div class="icon-large text-white">
                            <i class="fas fa-search"></i>
                            <!-- Ícone para Consultas -->
                        </div>
                        <h1 class="card-title text-white">Consultas</h1>
                    </div>
                </div>
            </a>

            <a class="col d-flex justify-content-center my-2 p-0 text-decoration-none" href="Carlink_Administrar.aspx">
                <div class="card btn-home bg_img">
                    <div class="card-body">
                        <div class="icon-large text-white">
                            <i class="fas fa-cogs"></i>
                            <!-- Ícone para Administrar -->
                        </div>
                        <h1 class="card-title text-white">Administrar</h1>
                    </div>
                </div>
            </a>

        </div>
    </div>

</asp:Content>

