<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_EditaVeiculo.aspx.cs" Inherits="Paginas_CarLink_EditaVeiculo" %>

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
        <h1 class="h3 my-4 mb-2 titulo">Veiculos registrados</h1>
        <form id="form1" runat="server">

            <div class="card-body shadow-lg">
                <div class="table-responsive">
                    <asp:gridview id="GridView" runat="server" autogeneratecolumns="False" onrowcommand="GridView_RowCommand" class="table table-bordered">
            <Columns>
                <asp:BoundField HeaderText="Identificador" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="VEI_ID" />
                <asp:BoundField HeaderText="Ano" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="VEI_ANO" />
                <asp:BoundField HeaderText="Marca" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="VEI_MARCA" />
                <asp:BoundField HeaderText="Modelo" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="VEI_MODELO" />
                <asp:BoundField HeaderText="Placa" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="VEI_PLACA" />
                <asp:BoundField HeaderText="Chassi" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="VEI_CHASSI" />
                <asp:BoundField HeaderText="Quilometragem" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="VEI_QUILOMETRAGEM" />

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Alterar"
                            CommandArgument='<%# Bind("VEI_ID")%>' class="btn btn-success mx-4"> <i class='bx bx-pencil'></i> Alterar</asp:LinkButton>
                 
                        <asp:LinkButton ID="lbDeletar" runat="server" CommandName="Deletar"
                            CommandArgument='<%# Bind("VEI_ID")%>' class="btn btn-danger"><i class='bx bxs-trash' ></i> Excluir</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:gridview>
                </div>
            </div>
        </form>
    </div>

</asp:Content>
