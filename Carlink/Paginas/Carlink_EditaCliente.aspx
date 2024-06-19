<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="Carlink_EditaCliente.aspx.cs" Inherits="Paginas_CarLink_EditaCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <h1 class="h3 mt-2 mb-2 text-gray-800">Clientes registrados</h1>
        <form id="form1" runat="server">

            <div class="card-body shadow-lg">
                <div class="table-responsive">
                    <asp:gridview id="GridView" runat="server" autogeneratecolumns="False" onrowcommand="GridView_RowCommand" class="table table-bordered">
            <Columns>
                <asp:BoundField HeaderText="Identificador" DataField="CLI_ID" />
                <asp:BoundField HeaderText="Nome" DataField="CLI_NOME" />
                <asp:BoundField HeaderText="Email" DataField="CLI_EMAIL" />
                <asp:BoundField HeaderText="Telefone" DataField="CLI_TELEFONE" />
                <asp:BoundField HeaderText="CPF" DataField="CLI_CPF" />

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Alterar"
                            CommandArgument='<%# Bind("CLI_ID")%>' class="btn btn-info mx-4">Alterar</asp:LinkButton>
                 
                        <asp:LinkButton ID="lbDeletar" runat="server" CommandName="Deletar"
                            CommandArgument='<%# Bind("CLI_ID")%>' class="btn btn-danger">Excluir</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:gridview>
                </div>
            </div>
        </form>
    </div>

</asp:Content>
