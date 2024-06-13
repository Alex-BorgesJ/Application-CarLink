<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_Home.aspx.cs" Inherits="Pages_UserDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class=" d-flex justify-content-center align-items-center p-3">
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 card-deck">

            <a class="col d-flex justify-content-center my-1 p-0 text-decoration-none" href="CarLink_Cadastro.aspx">
                <div class="card btn-home bg_img ">

                    <div class="card-body d-flex justify-content-center align-items-center">
                        <h1 class="card-title text-white">Cadastro</h1>
                    </div>
                </div>
            </a>

            <a class="col d-flex justify-content-center my-1 p-0 text-decoration-none" href="CarLink_Ordem.aspx">
                <div class="card btn-home bg_img ">
                    <div class="card-body d-flex justify-content-center align-items-center">
                        <h1 class="card-title text-white">Ordem de Serviço</h1>
                    </div>
                </div>
            </a>

            <a class="col d-flex justify-content-center my-1 p-0 text-decoration-none" href="#">
                <div class="card btn-home bg_img ">
                    <div class="card-body d-flex justify-content-center align-items-center">
                        <h1 class="card-title text-white">Desempenho</h1>
                    </div>
                </div>
            </a>

            <a class="col d-flex justify-content-center my-1 p-0 text-decoration-none" href="#">
                <div class="card btn-home bg_img">
                    <div class="card-body d-flex justify-content-center align-items-center">
                        <h1 class="card-title text-white">Registros</h1>
                    </div>
                </div>
            </a>

            <a class="col d-flex justify-content-center my-1 p-0 text-decoration-none" href="#">
                <div class="card btn-home bg_img">
                    <div class="card-body d-flex justify-content-center align-items-center">
                        <h1 class="card-title text-white">Consultas</h1>
                    </div>
                </div>
            </a>

            <a class="col d-flex justify-content-center my-1 p-0 text-decoration-none" href="#">
                <div class="card btn-home bg_img">
                    <div class="card-body d-flex justify-content-center align-items-center">
                        <h1 class="card-title text-white">Administrar</h1>
                    </div>
                </div>
            </a>

        </div>
    </div>

</asp:Content>

