<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_EditaVeiculo.aspx.cs" Inherits="Paginas_CarLink_EditaVeiculo" %>

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
        <h1 class="my-4 mb-2 titulo">Veículos registrados</h1>
        <form id="form1" runat="server">
            <div class="card-body shadow-lg rounded">
                <div class="table-responsive">
                    <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView_RowCommand" CssClass="table table-bordered">
                        <columns>
                            <asp:BoundField HeaderText="Identificador" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="VEI_ID" />
                            <asp:BoundField HeaderText="Ano" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="VEI_ANO" />
                            <asp:BoundField HeaderText="Marca" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="VEI_MARCA" />
                            <asp:BoundField HeaderText="Modelo" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="VEI_MODELO" />
                            <asp:BoundField HeaderText="Placa" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="VEI_PLACA" />
                            <asp:BoundField HeaderText="Chassi" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="VEI_CHASSI" />
                            <asp:BoundField HeaderText="Quilometragem" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="VEI_QUILOMETRAGEM" />

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
