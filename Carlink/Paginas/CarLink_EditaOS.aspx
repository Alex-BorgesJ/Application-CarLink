<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_EditaOS.aspx.cs" Inherits="Paginas_CarLink_EditaOS" %>

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
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <h1 class="h3 my-4 mb-2 titulo">Ordem de serviços registradas</h1>
        <form id="form1" runat="server">

            <div class="card-body shadow-lg">
                <div class="table-responsive">
                    <asp:gridview id="GridView" runat="server" autogeneratecolumns="False" onrowcommand="GridView_RowCommand" class="table table-bordered">
            <Columns>
                <asp:BoundField HeaderText="Identificador" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="ODS_ID" />
                <asp:BoundField HeaderText="Status" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="ODS_STATUS" />
                <asp:BoundField HeaderText="Descrição do Serviço" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="ODS_DESCRICAO" />

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Alterar"
                            CommandArgument='<%# Bind("ODS_ID")%>' class="btn btn-success mx-4"><i class='bx bx-pencil'></i> Alterar</asp:LinkButton>
                 
                        <asp:LinkButton ID="lbDeletar" runat="server" CommandName="Deletar"
                            CommandArgument='<%# Bind("ODS_ID")%>' class="btn btn-danger"><i class='bx bxs-trash' ></i> Excluir</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:gridview>
                </div>
            </div>
        </form>
    </div>

</asp:Content>

