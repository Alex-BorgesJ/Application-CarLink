<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_Ordem.aspx.cs" Inherits="Paginas_CarLink_Ordem" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .color-black {
            color: black;
        }

        .centralizar {
            display: flex;
            justify-content: center; /* Centraliza horizontalmente */
            align-items: center; /* Centraliza verticalmente */
        }

        /* Remove background and border for the search button */
        .input-group .btn {
            background-color: transparent;
            border: none;
            padding: 0.375rem 0.75rem;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <form runat="server" class="py-4 ">

        <div class="card ">
            <div class="card-body">
                <h1 class="card-title text-center color-black">Ordem de serviços</h1>



                <!-- Content Ordem serviços -->
                <div class="row form-group centralizar ">

                    <div class="col-5 my-2 color-black">
                        <asp:Label ID="lblVeiculo" runat="server" AssociatedControlID="txtBoxVeiculo" CssClass="form-label">Pesquisar Veiculo</asp:Label>
                        <div class="input-group-append ">
                            <asp:TextBox ID="txtBoxVeiculo" runat="server" CssClass="form-control" placeholder="Marca e/ou Modelo" AutoPostBack="True"></asp:TextBox>                         
                            <div class="input-group-append">
                                <button id="btnProcurarVeic" class="btn" type="button" onclick="document.getElementById('<%= btnProcurarVeicHidden.ClientID %>').click();">
                                    <i class="fas fa-search"></i>
                                </button>
                                <asp:Button ID="btnProcurarVeicHidden" runat="server" OnClick="btnProcurarVeic_Click" Style="display: none" />
                                <asp:Label ID="lblProcuraErro"  runat="server" CssClass="form-label text-danger "></asp:Label>
                            </div>
                        </div>
                    </div>

                    <div class="col-5 my-2 color-black">
                        <asp:Label ID="lblEscolha" runat="server" AssociatedControlID="dropDownModelo" CssClass="form-label">Veículo Associado</asp:Label>
                        <asp:DropDownList ID="dropDownModelo" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="dropDownModelo_SelectedIndexChanged">
                            <asp:ListItem Text="Selecione o veículo" Value="0"></asp:ListItem>
                        </asp:DropDownList>

                    </div>

                    <div class="col-10 my-2 color-black text-start">
                        <asp:Label ID="lblMensagemProcurar" runat="server" CssClass="form-label text-danger "></asp:Label>
                    </div>

                    <div class="card col-10 mt-2 ">

                        <div class="mt-2">
                            <h4 class=" text-center color-black">Dados do Veículo</h4>
                            <hr />
                        </div>

                        <div class="row color-black">

                            <div class="col-4 my-2 text-center">
                                <asp:Label ID="lblMarca" runat="server">Marca: </asp:Label>
                                <asp:Label ID="lblmsgMarca" runat="server"></asp:Label>
                            </div>

                            <div class="col-4 my-2 text-center">
                                <asp:Label ID="lblModelo" runat="server">Modelo: </asp:Label>
                                <asp:Label ID="lblmsgModelo" runat="server"></asp:Label>
                            </div>

                            <div class="col-4 my-2 text-center">
                                <asp:Label ID="lblAno" runat="server">Ano: </asp:Label>
                                <asp:Label ID="lblmsgAno" runat="server"></asp:Label>
                            </div>

                            <div class="col-4 my-2 text-center">
                                <asp:Label ID="lblPlaca" runat="server">Placa: </asp:Label>
                                <asp:Label ID="lblmsgPlaca" runat="server"></asp:Label>
                            </div>

                            <div class="col-4 my-2 text-center">
                                <asp:Label ID="lblChassi" runat="server">Chassi: </asp:Label>
                                <asp:Label ID="lblmsgChassi" runat="server"></asp:Label>
                            </div>

                            <div class="col-4 my-2 text-center">
                                <asp:Label ID="lblKm" runat="server">Quilometragem: </asp:Label>
                                <asp:Label ID="lblmsgKm" runat="server"></asp:Label>
                            </div>


                        </div>



                    </div>
                </div>

                <div class="centralizar row ">

                    <div class=" col-10 form-group my-2 text-center color-black ">
                        <asp:Label ID="lblObservacao" runat="server" AssociatedControlID="txtBoxObservacao" CssClass="form-label">
                            <h4>Descrição do defeito </h4>
                        </asp:Label>
                        <asp:TextBox ID="txtBoxObservacao" runat="server" CssClass="form-control" placeholder="Descreva o defeito que carro apresenta..." TextMode="MultiLine" Rows="3" Columns="40"></asp:TextBox>
                        <asp:Label ID="lblDescriErro"  runat="server" CssClass="form-label text-danger "></asp:Label>
                    </div>

                </div>

                <div class="centralizar ">

                    <div class=" my-2 text-center color-black">
                        <asp:Label ID="lblDataEmissao" runat="server" AssociatedControlID="txtBoxDataEmissao" CssClass="form-label">Data de Emissão</asp:Label>
                        <asp:TextBox ID="txtBoxDataEmissao" runat="server" CssClass="form-control " placeholder="dd/mm/yyyy" AutoPostBack="false"></asp:TextBox>
                        <asp:Label ID="lblDataErro"  runat="server" CssClass="form-label text-danger "></asp:Label>
                    </div>

                </div>

                <asp:HiddenField ID="AcionaModal" runat="server" />

                <div class="text-center col-12 mt-4 color-black">
                    <asp:Button ID="btnSalvarOS" runat="server" Text="Salvar" CssClass="btn btn-primary" OnClick="btnSalvarOS_Click" />
                    <asp:Button ID="btnCancelarOS" runat="server" Text="Cancelar" CssClass="btn btn-secondary" OnClick="btnCancelarOS_Click" />
                </div>

                <div class="col-12 my-2 text-center">
                    <asp:Label ID="lblMensagem" runat="server" CssClass="form-label text-success "></asp:Label>
                    <asp:Label ID="lblError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                </div>

            </div>

            <!-- Modal Confirmar Cadastro -->
            <div id="ModalConfirm" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="ModalDeConfirm"
                aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Cadastro realizado com sucesso</h5>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-6 col-12">
                                    <asp:Image ID="imgCar" runat="server" CssClass="img-fluid" />
                                </div>
                                <div class="col-md-6 col-12">
                                    <h6 class="col-12">Resumo da Ordem de serviço</h6>
                                    <p>
                                        Marca e modelo do veículo:
                                        <asp:Label ID="lblMarcaModelo" runat="server"></asp:Label>
                                    </p>
                                    <p>
                                        Nome do dono:
                                        <asp:Label ID="lblNomeDono" runat="server"></asp:Label>
                                    </p>
                                    <p>
                                        Data de Emissão:
                                        <asp:Label ID="lblDataModal" runat="server"></asp:Label>
                                    </p>
                                    <p class="text-truncate d-inline-block">
                                        <asp:Label ID="lblObservacaoModal" CssClass="text-truncate d-inline-block w-100" Style="max-width: 200px;" runat="server"></asp:Label>
                                    </p>
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="btnEditar" runat="server" CssClass="btn btn-secondary" Text="Editar" OnClick="btnRedirectOS_Click"/>
                            <asp:Button ID="btnFechar" runat="server" CssClass="btn btn-primary" Text="Fechar" data-dismiss="modal" OnClick="btnFecharModal_Click"/>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Modal Confirmar Cadastro -->

        </div>
        <!-- End Content Ordem serviços -->

        <script type="text/javascript">

            document.getElementById('<%= txtBoxDataEmissao.ClientID %>').onkeyup = (event) => {
                handleDate(event);
            };

            $(document).ready(function () {
                var showModal = document.getElementById('<%= AcionaModal.ClientID %>').value;
                if (showModal === 'True') {
                    $("#ModalConfirm").modal('show');
                    showModal = "False";
                }
            });

        </script>
    </form>
</asp:Content>
