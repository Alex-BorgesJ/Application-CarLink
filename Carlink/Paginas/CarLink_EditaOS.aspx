<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_EditaOS.aspx.cs" Inherits="Paginas_CarLink_EditaOS" %>

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
        <h1 class="my-4 mb-2 titulo">Ordem de serviços registradas</h1>
        <form id="form1" runat="server">
            <div class="card-body shadow-lg rounded">
                <div class="table-responsive">
                    <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView_RowCommand" CssClass="table table-bordered">
                        <Columns>
                            <asp:BoundField HeaderText="Identificador" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="ODS_ID" />
                            <asp:BoundField HeaderText="Status" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="ODS_STATUS" />
                            <asp:BoundField HeaderText="Descrição do Serviço" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="ODS_DESCRICAO" />

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div class="d-flex justify-content-start">
                                        <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Alterar"
                                            CommandArgument='<%# Bind("ODS_ID")%>' CssClass="btn btn-success mx-2 d-inline-block w-auto">
                                            <i class='bx bx-pencil'></i>Alterar
                                        </asp:LinkButton>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </form>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</asp:Content>

