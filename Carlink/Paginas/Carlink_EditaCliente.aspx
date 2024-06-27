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
            <asp:HiddenField ID="AcionaModal" runat="server" />
            <!-- Modal Confirmar Cliente -->
            <div id="ModalConfirm" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="ModalDeConfirm"
                aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Tem certeza que deseja excluir cliente?</h5>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-12">
                                    <h6 class="col-12">Ao confirmar os dados serão excluídos, tenha certeza antes de concluir a ação!</h6>
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="btnConfirmar" runat="server" CssClass="btn btn-danger" Text="Confirmar" OnClick="OnClick_Yes" />
                            <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-secondary" Text="Cancelar" data-dismiss="modal" />
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Modal Confirmar Cliente -->

            <div class="card-body shadow-lg rounded">
                <div class="table-responsive">
                    <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView_RowCommand" class="table table-bordered">
                        <Columns>
                            <asp:BoundField HeaderText="Identificador" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="CLI_ID" />
                            <asp:BoundField HeaderText="Nome" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="CLI_NOME" />
                            <asp:BoundField HeaderText="Email" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="CLI_EMAIL" />
                            <asp:BoundField HeaderText="Telefone" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="CLI_TELEFONE" />
                            <asp:BoundField HeaderText="CPF" HeaderStyle-CssClass="titulo" ItemStyle-CssClass="infos" DataField="CPF_FORMATADO" />

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div class="d-flex justify-content-start">

                                        <asp:LinkButton ID="lbAlterar" runat="server" CommandName="Alterar"
                                            CommandArgument='<%# Bind("CLI_ID")%>' CssClass="btn btn-success mx-2 d-inline-block w-auto"><i class='bx bx-pencil'></i>Alterar
                                        </asp:LinkButton>

                                        <asp:LinkButton ID="lbDeletar" runat="server" CommandName="Deletar"
                                            CommandArgument='<%# Bind("CLI_ID")%>' CssClass="btn btn-danger mx-2 d-inline-block w-auto"><i class='bx bxs-trash'></i>Excluir
                                        </asp:LinkButton>

                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <script type="text/javascript">
                $(document).ready(function () {
                    var showModal = document.getElementById('<%= AcionaModal.ClientID %>').value;
                    if (showModal === 'True') {
                        $("#ModalConfirm").modal('show');
                        showModal = "False";
                    }
                });
            </script>
        </form>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</asp:Content>
