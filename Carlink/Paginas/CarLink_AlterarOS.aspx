<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_AlterarOS.aspx.cs" Inherits="Paginas_CarLink_AlterarOS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <h1 class="h3 mb-2 text-gray-800">Alterar</h1>
        <div class="row justify-content-center">
            <div class="card col-md-4 border-0 shadow-lg my-5">
                <form id="form1" runat="server">
                    <div class="form-group mb-3">
                        <asp:label id="lblIdentificador" text="Identificador" runat="server"></asp:label>
                        <asp:label id="lblId" class="form-control" runat="server"></asp:label>
                        

                        <asp:label id="lblSalario" text="Descrição" runat="server"></asp:label>
                        <asp:textbox class="form-control" id="txtDescricao" runat="server"></asp:textbox>

                        <asp:label id="lblCracha" text="Status" runat="server"></asp:label>
                        <asp:textbox class="form-control" id="txtStatus" runat="server"></asp:textbox>
                    </div>
                    <div class="px-5">
                        <asp:button class="btn btn-primary btn-block" id="btnSalvar" text="Salvar" runat="server" onclick="btnSalvar_Click" />
                        <br>
                    </div>
                    <br>
                    <div class="text-center text-success my-2" role="alert">
                        <asp:label id="lblMensagem" text="" runat="server"></asp:label>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
