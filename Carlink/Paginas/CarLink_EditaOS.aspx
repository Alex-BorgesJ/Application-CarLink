<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_EditaOS.aspx.cs" Inherits="Paginas_CarLink_EditaOS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <h1 class="h3 mt-2 mb-2 text-gray-800">Ordem de serviços registradas</h1>
        <form id="form1" runat="server">

            <div class="card-body shadow-lg">
                <div class="table-responsive">
                    <asp:gridview id="GridView" runat="server" autogeneratecolumns="False" onrowcommand="GridView_RowCommand" class="table table-bordered">
            <Columns>
                <asp:BoundField HeaderText="Identificador" DataField="ODS_ID" />
                <asp:BoundField HeaderText="Status" DataField="ODS_STATUS" />
                <asp:BoundField HeaderText="Descrição do Serviço" DataField="ODS_DESCRICAO" />

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Alterar"
                            CommandArgument='<%# Bind("ODS_ID")%>' class="btn btn-info mx-4">Alterar</asp:LinkButton>
                 
                        <asp:LinkButton ID="lbDeletar" runat="server" CommandName="Deletar"
                            CommandArgument='<%# Bind("ODS_ID")%>' class="btn btn-danger">Excluir</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:gridview>
                </div>
            </div>
        </form>
    </div>

</asp:Content>

