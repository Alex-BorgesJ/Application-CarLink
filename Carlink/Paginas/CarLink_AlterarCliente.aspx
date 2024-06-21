<%@ Page Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_AlterarCliente.aspx.cs" Inherits="Paginas_CarLink_AlterarCliente" %>

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
        <h1 class="h3 mt-4 titulo">Atualizar informações do cliente</h1>
        <div class="row justify-content-center">
            <div class="card col-md-4 border-0 shadow-lg mt-3 mb-5">
                <form id="form1" runat="server">
                    <div class="form-group my-3 mx-4 inicial">
                        <asp:label id="lblIdentificador" text="Identificador" class="infos" runat="server"></asp:label>
                        <asp:label id="lblId" class="form-control espaco" runat="server"></asp:label>                      

                        <asp:label id="lblNome" text="Nome" class="infos" runat="server"></asp:label>
                        <asp:textbox class="form-control espaco" id="txtNome" runat="server"></asp:textbox>
                        <asp:Label ID="lblNomeError"  runat="server" CssClass="form-label text-danger "></asp:Label>

                        <asp:label id="lblEmail" text="Email" class="infos" runat="server"></asp:label>
                        <asp:textbox class="form-control espaco" id="txtEmail" runat="server"></asp:textbox>
                        <asp:Label ID="lblEmailError"  runat="server" CssClass="form-label text-danger "></asp:Label>

                        <asp:label id="lblTelefone" text="Telefone" class="infos" runat="server"></asp:label>
                        <asp:textbox class="form-control espaco" id="txtTelefone" runat="server"></asp:textbox>
                        <asp:Label ID="lblTelError"  runat="server" CssClass="form-label text-danger "></asp:Label>

                        <asp:label id="lblCPF" text="CPF" class="infos" runat="server"></asp:label>
                        <asp:textbox class="form-control espaco" id="txtCpf" runat="server"></asp:textbox>
                        <asp:Label ID="lblCpfError"  runat="server" CssClass="form-label text-danger "></asp:Label>

                    </div>
                    <div class="px-5 mt-4">
                        <asp:button class="btn btn-primary btn-block" id="btnSalvar" text="Atualizar dados" runat="server" onclick="btnSalvar_Click" />
                        <br>
                    </div>
                    <br>
                    <div class="text-center my-2" role="alert">
                        <asp:label id="lblMensagem" text="" CssClass="form-label text-success" runat="server"></asp:label>
                        <asp:Label ID="lblError"  runat="server" CssClass="form-label text-danger "></asp:Label>

                    </div>
                </form>
            </div>
        </div>
    </div>

    
</asp:Content>
