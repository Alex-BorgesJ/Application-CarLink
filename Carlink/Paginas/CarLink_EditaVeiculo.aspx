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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid mb-5">
        <h1 class="my-4 mb-2 titulo">Veículos registrados</h1>
        <form id="form1" runat="server">

            <asp:HiddenField ID="AcionaModal" runat="server" />

            <!-- Modal Confirmar Veiculo -->
            <div id="ModalConfirm" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="ModalDeConfirm"
                aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Tem certeza que deseja excluir o veiculo?</h5>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-12">
                                    <h6 class="col-12">Ao confirmar os dados serão excluídos, tenha certeza antes de concluir a ação!</h6>
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="btnConfirmar" runat="server" CssClass="btn btn-danger" Text="Confirmar" OnClick="onClick_Yes" />
                            <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-secondary" Text="Cancelar" data-dismiss="modal" />
                        </div>
                    </div>
                    >>>>>>> Stashed changes
                </div>
            </div>
            <!-- End Modal Confirmar Veiculo -->

            <div class="card-body shadow-lg rounded">
                <div class="table-responsive ">
                    <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView_RowCommand" class="table table-bordered">
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
                                            CommandArgument='<%# Bind("VEI_ID")%>' CssClass="btn btn-success mx-2 d-inline-block w-auto">
                                            <i class='bx bx-pencil'></i>Alterar
                                        </asp:LinkButton>

                                        <asp:LinkButton ID="lbDeletar" runat="server" CommandName="Deletar"
                                            CommandArgument='<%# Bind("VEI_ID")%>' CssClass="btn btn-danger mx-2 d-inline-block w-auto">
                                            <i class='bx bxs-trash'></i>Excluir
                                        </asp:LinkButton>
                                    </div>
                                </itemtemplate>
                            </asp:TemplateField>
                        </columns>
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
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</asp:Content>
