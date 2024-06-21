<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_AlterarVeiculo.aspx.cs" Inherits="Paginas_CarLink_AlterarVeiculo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .titulo{
            color: #06184D;
            font-weight: bold;
            text-align: center;

        }

        .infos{
            color: #06184D;
            text-align: center;
        }

        .espaco{
            margin-top: 5px;
            margin-bottom: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <h1 class="h3 mt-3 titulo">Atualizar dados do veículo</h1>
        <div class="row justify-content-center">
            <div class="card col-md-4 border-0 shadow-lg mt-3 mb-5">
                <form id="form1" runat="server">
                    <div class="form-group my-3 mx-4">
                        <asp:label id="lblIdentificador" text="Nome" class="infos" runat="server"></asp:label>
                        <asp:label id="lblId" class="form-control espaco" text="Nome" runat="server"></asp:label>

                        <asp:label id="lblAno" text="Ano" class="infos" runat="server"></asp:label>
                        <asp:textbox class="form-control espaco" id="txtAno" runat="server"></asp:textbox>
                        <asp:Label ID="lblAnoError"  runat="server" CssClass="form-label text-danger "></asp:Label>


                        <asp:label id="lblMarca" text="Marca" class="infos" runat="server"></asp:label>
                        <asp:textbox class="form-control espaco" id="txtMarca" runat="server"></asp:textbox>
                        <asp:Label ID="lblMarcaError"  runat="server" CssClass="form-label text-danger "></asp:Label>

                        <asp:label id="lblModelo" text="Modelo" class="infos" runat="server"></asp:label>
                        <asp:textbox class="form-control espaco" id="txtModelo" runat="server"></asp:textbox>
                        <asp:Label ID="lblModeloError"  runat="server" CssClass="form-label text-danger "></asp:Label>

                        <asp:label id="lblPlaca" text="Placa" class="infos" runat="server"></asp:label>
                        <asp:textbox class="form-control espaco" id="txtPlaca" runat="server"></asp:textbox>
                        <asp:Label ID="lblPlacaError"  runat="server" CssClass="form-label text-danger "></asp:Label>

                        <asp:label id="lblChassi" text="Chassi" class="infos" runat="server"></asp:label>
                        <asp:textbox class="form-control espaco" id="txtChassi" runat="server"></asp:textbox>
                        <asp:Label ID="lblChassiError"  runat="server" CssClass="form-label text-danger "></asp:Label>

                        <asp:label id="lblKm" text="Quilometragem" class="infos" runat="server"></asp:label>
                        <asp:textbox class="form-control espaco" id="txtKm" runat="server"></asp:textbox>
                        <asp:Label ID="lblKmError"  runat="server" CssClass="form-label text-danger "></asp:Label>

                    </div>
                    <div class="px-5 mt-4">
                        <asp:button class="btn btn-primary btn-block" id="btnSalvar" text="Atualizar dados" runat="server" onclick="btnSalvar_Click" />
                        <br>
                    </div>
                    <br>
                    <div class="text-center my-2" role="alert">
                        <asp:Label ID="lblMensagem"  runat="server" CssClass="form-label text-success "></asp:Label>
                        <asp:Label ID="lblError"  runat="server" CssClass="form-label text-danger "></asp:Label>

                        
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
