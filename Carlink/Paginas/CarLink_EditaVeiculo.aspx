<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_EditaVeiculo.aspx.cs" Inherits="Paginas_CarLink_EditaVeiculo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <h1 class="h3 mt-2 mb-2 text-gray-800">Veiculos registrados</h1>
        <form id="form1" runat="server">

            <div class="card-body shadow-lg">
                <div class="table-responsive">
                    <asp:gridview id="GridView" runat="server" autogeneratecolumns="False" onrowcommand="GridView_RowCommand" class="table table-bordered">
            <Columns>
                <asp:BoundField HeaderText="Identificador" DataField="VEI_ID" />
                <asp:BoundField HeaderText="Ano" DataField="VEI_ANO" />
                <asp:BoundField HeaderText="Marca" DataField="VEI_MARCA" />
                <asp:BoundField HeaderText="Modelo" DataField="VEI_MODELO" />
                <asp:BoundField HeaderText="Placa" DataField="VEI_PLACA" />
                <asp:BoundField HeaderText="Chassi" DataField="VEI_CHASSI" />
                <asp:BoundField HeaderText="Quilometragem" DataField="VEI_QUILOMETRAGEM" />

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Alterar"
                            CommandArgument='<%# Bind("VEI_ID")%>' class="btn btn-info mx-4">Alterar</asp:LinkButton>
                 
                        <asp:LinkButton ID="lbDeletar" runat="server" CommandName="Deletar"
                            CommandArgument='<%# Bind("VEI_ID")%>' class="btn btn-danger">Excluir</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:gridview>
                </div>
            </div>
        </form>
    </div>

</asp:Content>
