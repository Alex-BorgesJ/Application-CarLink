﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_Cadastro.aspx.cs" Inherits="Paginas_CarLink_Cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .color-black {
            color: black;
        }

        .centralizar {
            display: flex;
            justify-content: center;
            align-items: center;
        }


        .bg_img {
            background: linear-gradient(rgba(2, 5, 161, 0.91), rgba(2, 5, 161, 0.91)), url('../img_landpage/');
        }

        .nav-pills .nav-link {
            color: var(--bs-nav-link-color);
            background-color: transparent;
            border-radius: 5px;
            transition: color 0.3s, background-color 0.3s;
        }

            .nav-pills .nav-link.active {
                color: var(--bs-nav-pills-link-active-color);
                background-color: var(--bs-nav-pills-link-active-bg);
            }

            .nav-pills .nav-link:hover {
                color: var(--bs-nav-pills-link-active-color);
                background-color: var(--bs-nav-pills-link-active-bg);
            }

        .nav-pills .nav-link {
            text-align: center;
            font-size: 20px;
        }



        .cursor-auto {
            cursor: auto !important;
        }

        .cursor-pointer {
            cursor: pointer !important;
        }

        .cursor-grab {
            cursor: grab !important;
        }

        .custom-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #0000FF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
    </style>

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="../vendor_landpage/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <div class="card my-4">
            <div class="card-body">



                <h1 class="color-black text-center">Cadastrar</h1>


                <!-- Botões de navegação de abas -->
                <ul class="nav nav-pills nav-fill gap-2 p-1 small bg_img rounded-5 shadow-sm container my-3" id="pillNav2" role="tablist" style="--bs-nav-link-color: var(--bs-white); --bs-nav-pills-link-active-color: rgba(2, 5, 161, 0.91); --bs-nav-pills-link-active-bg: var(--bs-white);">
                    <li class="nav-item" role="presentation">
                        <a class="nav-link active  rounded-5" id="pills-carros-tab" data-toggle="pill" href="#pills-carros" role="tab" aria-controls="pills-carros" aria-selected="true" onclick="persistActiveTab('pills-carros-tab')">Carros</a>
                    </li>

                    <li class="nav-item" role="presentation">
                        <a class="nav-link  rounded-5" id="pills-clientes-tab" data-toggle="pill" href="#pills-clientes" role="tab" aria-controls="pills-clientes" aria-selected="false" onclick="persistActiveTab('pills-clientes-tab')">Clientes</a>
                    </li>

                    <li class="nav-item" role="presentation">
                        <a class="nav-link  rounded-5" id="pills-mecanicos-tab" data-toggle="pill" href="#pills-mecanicos" role="tab" aria-controls="pills-mecanicos" aria-selected="false" onclick="persistActiveTab('pills-mecanicos-tab')">Mecânicos</a>
                    </li>
                </ul>



                <div class="tab-content pt-2" id="myTabContent">
                    <!-- Content Tabs - Carros -->
                    <div class="tab-pane fade show active" id="pills-carros" role="tabpanel" aria-labelledby="carros-tab">
                        <!-- Carros Form -->

                        <div class="row form-group color-black">
                            <div class="col-4 my-2">
                                <asp:Label ID="lblMarca" runat="server" AssociatedControlID="txtBoxMarca" CssClass="form-label">Marca</asp:Label>
                                <asp:TextBox ID="txtBoxMarca" runat="server" CssClass="form-control" placeholder="Digite a marca..."></asp:TextBox>
                            </div>
                            <div class="col-4 my-2">
                                <asp:Label ID="lblModelo" runat="server" AssociatedControlID="txtBoxModelo" CssClass="form-label">Modelo</asp:Label>
                                <asp:TextBox ID="txtBoxModelo" runat="server" CssClass="form-control" placeholder="Digite o modelo..."></asp:TextBox>
                            </div>
                            <div class="col-4 my-2">
                                <asp:Label ID="lblAno" runat="server" AssociatedControlID="txtBoxAno" CssClass="form-label">Ano de fabricação</asp:Label>
                                <asp:TextBox ID="txtBoxAno" runat="server" CssClass="form-control" placeholder="Digite o ano..."></asp:TextBox>
                            </div>
                            <div class="col-4 my-2">
                                <asp:Label ID="lblPlaca" runat="server" AssociatedControlID="txtBoxPlaca" CssClass="form-label">Placa</asp:Label>
                                <asp:TextBox ID="txtBoxPlaca" runat="server" CssClass="form-control" placeholder="Digite a placa..."></asp:TextBox>
                            </div>
                            <div class="col-4 my-2">
                                <asp:Label ID="lblKm" runat="server" AssociatedControlID="txtBoxKm" CssClass="form-label">Quilometragem</asp:Label>
                                <asp:TextBox ID="txtBoxKm" runat="server" CssClass="form-control" placeholder="Digite a quilometragem..."></asp:TextBox>
                            </div>
                            <div class="col-4 my-2">
                                <asp:Label ID="lblChassi" runat="server" AssociatedControlID="txtBoxChassi" CssClass="form-label">Chassi</asp:Label>
                                <asp:TextBox ID="txtBoxChassi" runat="server" CssClass="form-control" placeholder="Digite o chassi..."></asp:TextBox>
                            </div>


                            <div class="col-4 my-2">
                                <asp:Label ID="lblColor" runat="server" AssociatedControlID="txtBoxColor" CssClass="form-label">Cor do Veículo</asp:Label>
                                <asp:TextBox ID="txtBoxColor" runat="server" CssClass="form-control " placeholder="Digite a cor..."></asp:TextBox>
                            </div>
                            <div class="col-4 my-2">
                                <asp:Label ID="lblCliente" runat="server" AssociatedControlID="dropDownCliente" CssClass="form-label">Dono do Veículo</asp:Label>
                                <asp:DropDownList ID="dropDownCliente" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                    <asp:ListItem Text="Option 1"></asp:ListItem>
                                    <asp:ListItem Text="Option 2"></asp:ListItem>
                                    <asp:ListItem Text="Option 3"></asp:ListItem>
                                    <asp:ListItem ID="checkClienteCadastro" runat="server" Text="Não possui dono cadastrado" CssClass="form-check m-2" />

                                </asp:DropDownList>
                            </div>



                            <div class="text-center col-12 mt-4">
                                <asp:Button ID="btnSalvarCarros" runat="server" Text="Salvar" CssClass="btn btn-primary btn-lg custom-button " OnClick="btnSalvarCarros_Click" />
                                <asp:Button ID="btnCancelarCarros" runat="server" Text="Cancelar" CssClass="btn btn-secondary btn-lg" OnClick="btnCancelarCarros_Click" />
                            </div>



                            <!--  -->



                            <div class="col-4">

                                <!-- Modal -->
                                <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="staticBackdropLabel">Modal Title</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <!-- Conteúdo do modal -->
                                                <input type="text" id="myInput" class="form-control" placeholder="Digite algo...">
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                                                <button type="button" class="btn btn-primary">Entendido</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-- Botão para abrir o modal -->
                                <button type="button" class="btn btn-primary" onclick="openModal()">Abrir Modal</button>


                            </div>


                            <!--  -->

                            <div class=" col-12 text-center text-danger my-2" role="alert">
                                <asp:Label ID="lblMensagem_Veiculo" Text="" runat="server"></asp:Label>
                            </div>
                        </div>
                        <!-- End Carros Form -->
                    </div>
                    <!-- End Content Tabs - Carros -->

                    <!-- Content Tabs - Clietes -->
                    <div class="tab-pane fade color-black " id="pills-clientes" role="tabpanel" aria-labelledby="clientes-tab">
                        <!-- Clientes Form -->
                        <div class="row form-group">
                            <div class="col-4 my-2">
                                <asp:Label ID="lblNomeCliente" runat="server" AssociatedControlID="txtBoxNomeCliente" CssClass="form-label">Nome</asp:Label>
                                <asp:TextBox ID="txtBoxNomeCliente" runat="server" CssClass="form-control" placeholder="Ex: Andresa Borges"></asp:TextBox>
                            </div>
                            <div class="col-4 my-2">
                                <asp:Label ID="lblEmailCliente" runat="server" AssociatedControlID="txtBoxEmailCliente" CssClass="form-label">Email</asp:Label>
                                <asp:TextBox ID="txtBoxEmailCliente" runat="server" CssClass="form-control" placeholder="cliente@gmail.com"></asp:TextBox>
                            </div>
                            <div class="col-4 my-2">
                                <asp:Label ID="lblCPFCliente" runat="server" AssociatedControlID="txtBoxCPF" CssClass="form-label">CPF</asp:Label>
                                <asp:TextBox ID="txtBoxCPF" runat="server" CssClass="form-control" placeholder="12345678910"></asp:TextBox>
                            </div>
                            <div class="col-4 my-2">
                                <asp:Label ID="lblTelefoneCliente" runat="server" AssociatedControlID="txtBoxTelefoneCLiente" CssClass="form-label">Telefone</asp:Label>
                                <asp:TextBox ID="txtBoxTelefoneCliente" runat="server" CssClass="form-control" placeholder="(12) 5 5555-5555" AutoPostBack="false" MaxLength="15"></asp:TextBox>
                            </div>
                            <div class="col-4 my-2">
                                <asp:Label ID="lblCEP" runat="server" AssociatedControlID="txtBoxCEP" CssClass="form-label">CEP</asp:Label>
                                <asp:TextBox ID="txtBoxCEP" runat="server" CssClass="form-control" placeholder="12345-678"></asp:TextBox>
                            </div>
                            <div class="col-4 my-2">
                                <asp:Label ID="lblEstado" runat="server" AssociatedControlID="dropDownEstado" CssClass="form-label">Estado</asp:Label>
                                <asp:DropDownList ID="dropDownEstado" runat="server" CssClass="form-control">
                                    <asp:ListItem Text="Acre"></asp:ListItem>
                                    <asp:ListItem Text="Alagoas"></asp:ListItem>
                                    <asp:ListItem Text="Amapá"></asp:ListItem>
                                    <asp:ListItem Text="Amazonas"></asp:ListItem>
                                    <asp:ListItem Text="Bahia"></asp:ListItem>
                                    <asp:ListItem Text="Ceará"></asp:ListItem>
                                    <asp:ListItem Text="Distrito Federal"></asp:ListItem>
                                    <asp:ListItem Text="Espírito Santo"></asp:ListItem>
                                    <asp:ListItem Text="Goiás"></asp:ListItem>
                                    <asp:ListItem Text="Maranhão"></asp:ListItem>
                                    <asp:ListItem Text="Mato Grosso"></asp:ListItem>
                                    <asp:ListItem Text="Mato Grosso do Sul"></asp:ListItem>
                                    <asp:ListItem Text="Minas Gerais"></asp:ListItem>
                                    <asp:ListItem Text="Pará"></asp:ListItem>
                                    <asp:ListItem Text="Paraíba"></asp:ListItem>
                                    <asp:ListItem Text="Paraná"></asp:ListItem>
                                    <asp:ListItem Text="Pernambuco"></asp:ListItem>
                                    <asp:ListItem Text="Piauí"></asp:ListItem>
                                    <asp:ListItem Text="Rio de Janeiro"></asp:ListItem>
                                    <asp:ListItem Text="Rio Grande do Norte"></asp:ListItem>
                                    <asp:ListItem Text="Rio Grande do Sul"></asp:ListItem>
                                    <asp:ListItem Text="Rondônia"></asp:ListItem>
                                    <asp:ListItem Text="Roraima"></asp:ListItem>
                                    <asp:ListItem Text="Santa Catarina"></asp:ListItem>
                                    <asp:ListItem Text="São Paulo"></asp:ListItem>
                                    <asp:ListItem Text="Sergipe"></asp:ListItem>
                                    <asp:ListItem Text="Tocantins"></asp:ListItem>

                                </asp:DropDownList>
                            </div>
                            <div class="col-4 my-2">
                                <asp:Label ID="lblCidade" runat="server" AssociatedControlID="txtBoxCidade" CssClass="form-label">Cidade</asp:Label>
                                <asp:TextBox ID="txtBoxCidade" runat="server" CssClass="form-control" placeholder="Ex: São Paulo"></asp:TextBox>
                            </div>
                            <div class="col-4 my-2">
                                <asp:Label ID="lblBairro" runat="server" AssociatedControlID="txtBoxBairro" CssClass="form-label">Bairro</asp:Label>
                                <asp:TextBox ID="txtBoxBairro" runat="server" CssClass="form-control" placeholder="Ex: Centro"></asp:TextBox>
                            </div>
                            <div class="col-4 my-2">
                                <asp:Label ID="lblRua" runat="server" AssociatedControlID="txtBoxRua" CssClass="form-label">Rua</asp:Label>
                                <asp:TextBox ID="txtBoxRua" runat="server" CssClass="form-control" placeholder="Ex: Rua das Flores"></asp:TextBox>
                            </div>



                            <div class="col-4 my-2">
                                <asp:Label ID="lblNumero" runat="server" AssociatedControlID="txtBoxNumero" CssClass="form-label">Número</asp:Label>
                                <asp:TextBox ID="txtBoxNumero" runat="server" CssClass="form-control" placeholder="Ex: 123"></asp:TextBox>
                            </div>
                            <div class="col-4 my-2">
                                <asp:Label ID="lblCarrosAssoci" runat="server" AssociatedControlID="dropDownCarros" CssClass="form-label">Veículo Associado</asp:Label>
                                <asp:DropDownList ID="dropDownCarros" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                    <asp:ListItem Text="Option 1"></asp:ListItem>
                                    <asp:ListItem Text="Option 2"></asp:ListItem>
                                    <asp:ListItem Text="Option 3"></asp:ListItem>
                                    <asp:ListItem ID="checkCarrosAssoc" runat="server" Text="Não possui carro cadastrado" CssClass="form-check m-2" />

                                </asp:DropDownList>
                            </div>

                            <div class="text-center col-12 mt-4">
                                <asp:Button ID="btnSalvarClientes" runat="server" Text="Salvar" CssClass="btn btn-primary btn-lg" OnClick="btnSalvarClientes_Click" />
                                <asp:Button ID="btnCancelarClientes" runat="server" Text="Cancelar" CssClass="btn btn-secondary btn-lg" OnClick="btnCancelarClientes_Click" />
                            </div>



                            <br>

                            <div class=" col-12 text-center text-danger my-2" role="alert">
                                <asp:Label ID="lblMensagem_Clientes" Text="" runat="server"></asp:Label>
                            </div>

                        </div>
                        <!-- End Clientes Form -->
                    </div>
                    <!-- End Content Tabs - Clietes -->

                    <!-- Content Tabs - Mecanicos -->
                    <div class="tab-pane fade color-black" id="pills-mecanicos" role="tabpanel" aria-labelledby="mecanicos-tab">
                        <!-- Mecânicos Form -->
                        <div class="row form-group">

                            <div class="col-4 my-2">
                                <asp:Label ID="lblNomeMecanico" runat="server" AssociatedControlID="txtBoxNomeMecanico" CssClass="form-label">Nome</asp:Label>
                                <asp:TextBox ID="txtBoxNomeMecanico" runat="server" CssClass="form-control" placeholder="Ex: João Silva"></asp:TextBox>
                            </div>

                            <div class="col-4 my-2">
                                <asp:Label ID="lblNumeroCracha" runat="server" AssociatedControlID="txtBoxNumeroCracha" CssClass="form-label">Email</asp:Label>
                                <asp:TextBox ID="txtBoxNumeroCracha" runat="server" CssClass="form-control" placeholder="Ex:exemplo@gmail.com"></asp:TextBox>
                            </div>

                            <div class="col-4 my-2">
                                <asp:Label ID="Label1" runat="server" AssociatedControlID="txtBoxNumeroCracha" CssClass="form-label">Telefone</asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Ex:(12)50515051"></asp:TextBox>
                            </div>


                            <div class="col-4 my-2">
                                <asp:Label ID="Label4" runat="server" AssociatedControlID="dropDownCarros" CssClass="form-label">Função</asp:Label>
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                    <asp:ListItem Text="Selecione sua função..."></asp:ListItem>
                                    <asp:ListItem Text="Mecânico"></asp:ListItem>
                                    <asp:ListItem Text="Administrador"></asp:ListItem>

                                </asp:DropDownList>
                            </div>

                            <div class="col-4 my-2">
                                <asp:Label ID="Label3" runat="server" AssociatedControlID="txtBoxNumeroCracha" CssClass="form-label">Senha</asp:Label>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Digite sua senha..."></asp:TextBox>
                            </div>



                            <div class="text-center col-12 mt-4">
                                <asp:Button ID="btnSalvarMecanicos" runat="server" Text="Salvar" CssClass="btn btn-primary btn-lg" OnClick="btnSalvarMecanicos_Click" />
                                <asp:Button ID="btnCancelarMecanicos" runat="server" Text="Cancelar" CssClass="btn btn-secondary btn-lg" OnClick="btnCancelarMecanicos_Click" />
                            </div>
                        </div>
                        <!--End Mecânicos Form-->
                    </div>
                    <!-- End Content Tabs - Clietes -->

                </div>

                <!-- End Pills Tabs -->

            </div>
        </div>
        <script type="text/javascript">
            document.getElementById('<%= txtBoxTelefoneCliente.ClientID %>').onkeyup = (event) => {
                handlePhone(event);
            }
            document.getElementById('<%= txtBoxCEP.ClientID %>').onchange = (event) => {
                handleCep(event);
            }
            function persistActiveTab(tabId) {
                sessionStorage.setItem('activeTab', tabId);
            }

            // Função para carregar a tab ativa armazenada
            function loadActiveTab() {
                var activeTabId = sessionStorage.getItem('activeTab');
                if (activeTabId) {
                    var activeTabLink = document.getElementById(activeTabId);
                    if (activeTabLink) {
                        activeTabLink.click();
                    }
                }
            }

            // Adicione um evento onload ao body para carregar a tab ativa quando a página é carregada
            window.onload = function () {
                loadActiveTab();
            };



        </script>

        <script>
            function openModal() {
                var myModal = new bootstrap.Modal(document.getElementById('staticBackdrop'));
                myModal.show();

                // Focar no input quando o modal for completamente exibido
                myModal.addEventListener('shown.bs.modal', function () {
                    var myInput = document.getElementById('myInput');
                    if (myInput) {
                        myInput.focus();
                    }
                });
            }
        </script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.0/js/bootstrap.bundle.min.js"></script>
        <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </form>
</asp:Content>

