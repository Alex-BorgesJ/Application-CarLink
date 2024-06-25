<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="Carlink_EditaCliente.aspx.cs" Inherits="Paginas_CarLink_EditaCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .titulo {
            color: #06184D;
            font-weight: bold;
            text-align: center;
        }

        .infos {
            color: #06184D;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid mb-5">
        <h1 class="my-4 mb-2 titulo">Clientes registrados</h1>
        <form id="form1" runat="server">
            <div class="card-body shadow-lg rounded">
                <div class="table-responsive">
                    <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView_RowCommand" CssClass="table table-bordered">
                        <columns>
                            <asp:BoundField HeaderText="Identificador" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="CLI_ID" />
                            <asp:BoundField HeaderText="Nome" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="CLI_NOME" />
                            <asp:BoundField HeaderText="Email" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="CLI_EMAIL" />
                            <asp:BoundField HeaderText="Telefone" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="CLI_TELEFONE" />
                            <asp:BoundField HeaderText="CPF" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="CLI_CPF" />

                            <asp:TemplateField>
                                <itemtemplate>
                                    <div class="d-flex justify-content-start">
                                        <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Alterar"
                                            CommandArgument='<%# Bind("CLI_ID")%>' CssClass="btn btn-success mx-2 d-inline-block w-auto">
                                            <i class='bx bx-pencil'></i>Alterar
                                       
                                        </asp:LinkButton>

                                        <asp:LinkButton ID="lbDeletar" runat="server" CommandName="Deletar"
                                            CommandArgument='<%# Bind("CLI_ID")%>' CssClass="btn btn-danger mx-2 d-inline-block w-auto">
                                            <i class='bx bxs-trash'></i>Excluir
                                       
                                        </asp:LinkButton>
                                    </div>
                                </itemtemplate>
                            </asp:TemplateField>
                        </columns>
                    </asp:GridView>
                </div>
            </div>
        </form>
    </div>

</asp:Content>
