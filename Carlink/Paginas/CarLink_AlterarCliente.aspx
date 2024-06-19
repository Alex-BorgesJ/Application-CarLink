<%@ Page Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_AlterarCliente.aspx.cs" Inherits="Paginas_CarLink_AlterarCliente" %>

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

                        <asp:label id="lblNome" text="Nome" runat="server"></asp:label>
                        <asp:textbox class="form-control" id="txtNome" runat="server"></asp:textbox>

                        <asp:label id="lblEmail" text="Email" runat="server"></asp:label>
                        <asp:textbox class="form-control" id="txtEmail" runat="server"></asp:textbox>

                        <asp:label id="lblTelefone" text="Telefone" runat="server"></asp:label>
                        <asp:textbox class="form-control" id="txtTelefone" runat="server"></asp:textbox>

                        <asp:label id="lblCPF" text="CPF" runat="server"></asp:label>
                        <asp:textbox class="form-control" id="txtCpf" runat="server"></asp:textbox>
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
