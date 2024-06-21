<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_AlterarOS.aspx.cs" Inherits="Paginas_CarLink_AlterarOS" %>

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
        <h1 class="h3 mt-3 titulo">Atualizar ordem de serviços</h1>
        <div class="row justify-content-center">
            <div class="card col-md-4 border-0 shadow-lg mt-3 mb-5">
                <form id="form1" runat="server">
                    <div class="form-group my-3 mx-4">
                        <asp:label id="lblIdentificador" text="Identificador" class="infos" runat="server"></asp:label>
                        <asp:label id="lblId" class="form-control espaco" runat="server"></asp:label>
                        
                        <asp:label id="lblDescri" text="Descrição" class="infos" runat="server"></asp:label>
                        <asp:textbox class="form-control espaco" id="txtDescricao" runat="server"></asp:textbox>
                        <asp:Label ID="lblDescriError"  runat="server" CssClass="form-label text-danger "></asp:Label>


                        <asp:label id="lblStatus" text="Status" class="infos" runat="server"></asp:label>
                        <asp:textbox class="form-control espaco" id="txtStatus" runat="server"></asp:textbox>
                        <asp:Label ID="lblStatusError"  runat="server" CssClass="form-label text-danger "></asp:Label>

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
