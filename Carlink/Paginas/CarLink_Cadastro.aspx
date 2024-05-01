<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_Cadastro.aspx.cs" Inherits="Paginas_CarLink_Cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Cadastros Hub</h5>

                <!-- Pills Tabs -->
                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <a class="nav-link active" id="pills-carros-tab" data-toggle="pill" href="#pills-carros" role="tab" aria-controls="pills-carros" aria-selected="true">Carros</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="pills-clientes-tab" data-toggle="pill" href="#pills-clientes" role="tab" aria-controls="pills-clientes" aria-selected="false">Clientes</a>
                    </li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" id="pills-mecanicos-tab" data-toggle="pill" href="#pills-mecanicos" role="tab" aria-controls="pills-mecanicos" aria-selected="false">Mecânicos</a>
                    </li>
                </ul>
                <div class="tab-content pt-2" id="myTabContent">
                    <!-- Content Tabs - Carros -->
                    <div class="tab-pane fade show active" id="pills-carros" role="tabpanel" aria-labelledby="carros-tab">
                        <!-- Carros Form -->

                        <div class="row form-group">
                            <div class="col-6 my-2">
                                <asp:label id="lblMarca" runat="server" associatedcontrolid="txtBoxMarca" cssclass="form-label">Marca</asp:label>
                                <asp:textbox id="txtBoxMarca" runat="server" cssclass="form-control" placeholder="Chevrolet"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblModelo" runat="server" associatedcontrolid="txtBoxModelo" cssclass="form-label">Modelo</asp:label>
                                <asp:textbox id="txtBoxModelo" runat="server" cssclass="form-control" placeholder="Corsa Classic"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblAno" runat="server" associatedcontrolid="txtBoxAno" cssclass="form-label">Ano</asp:label>
                                <asp:textbox id="txtBoxAno" runat="server" cssclass="form-control" placeholder="YYYY"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblPlaca" runat="server" associatedcontrolid="txtBoxPlaca" cssclass="form-label">Placa</asp:label>
                                <asp:textbox id="txtBoxPlaca" runat="server" cssclass="form-control" placeholder="ABC-1234 ou AAA1A23"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblKm" runat="server" associatedcontrolid="txtBoxKm" cssclass="form-label">Quilometragem</asp:label>
                                <asp:textbox id="txtBoxKm" runat="server" cssclass="form-control" placeholder="40000 (km)"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblChassi" runat="server" associatedcontrolid="txtBoxChassi" cssclass="form-label">Chassi</asp:label>
                                <asp:textbox id="txtBoxChassi" runat="server" cssclass="form-control" placeholder="ABC12345678901234"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblColor" runat="server" associatedcontrolid="txtBoxColor" cssclass="form-label">Cor do Veículo</asp:label>
                                <asp:textbox id="txtBoxColor" runat="server" cssclass="form-control form-control-color" text="Vermelho"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblCliente" runat="server" associatedcontrolid="dropDownCliente" cssclass="form-label">Dono do Veículo</asp:label>
                                <asp:dropdownlist id="dropDownCliente" runat="server" cssclass="form-control" appenddatabounditems="true">
                                    <asp:ListItem Text="Option 1"></asp:ListItem>
                                    <asp:ListItem Text="Option 2"></asp:ListItem>
                                    <asp:ListItem Text="Option 3"></asp:ListItem>
                                </asp:dropdownlist>
                                <asp:checkbox id="checkClienteCadastro" runat="server" text="Não possui dono cadastrado" cssclass="form-check m-2" />
                            </div>
                            <div class="text-center col-12 mt-4">
                                <asp:button id="btnSalvarCarros" runat="server" text="Salvar" cssclass="btn btn-primary" onclick="btnSalvarCarros_Click" />
                                <asp:button id="btnCancelarCarros" runat="server" text="Cancelar" cssclass="btn btn-secondary" onclick="btnCancelarCarros_Click" />
                            </div>
                        </div>
                        <!-- End Carros Form -->
                    </div>
                    <!-- End Content Tabs - Carros -->

                    <!-- Content Tabs - Clietes -->
                    <div class="tab-pane fade" id="pills-clientes" role="tabpanel" aria-labelledby="clientes-tab">
                        <!-- Clientes Form -->
                        <div class="row form-group">
                            <div class="col-6 my-2">
                                <asp:label id="lblNomeCliente" runat="server" associatedcontrolid="txtBoxNomeCliente" cssclass="form-label">Nome</asp:label>
                                <asp:textbox id="txtBoxNomeCliente" runat="server" cssclass="form-control" placeholder="Ex: Andresa Borges"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblEmailCliente" runat="server" associatedcontrolid="txtBoxEmailCliente" cssclass="form-label">Email</asp:label>
                                <asp:textbox id="txtBoxEmailCliente" runat="server" cssclass="form-control" placeholder="cliente@gmail.com"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblCPFCliente" runat="server" associatedcontrolid="txtBoxCPF" cssclass="form-label">CPF</asp:label>
                                <asp:textbox id="txtBoxCPF" runat="server" cssclass="form-control" placeholder="12345678910"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblTelefoneCliente" runat="server" associatedcontrolid="txtBoxTelefoneCLiente" cssclass="form-label">Telefone</asp:label>
                                <asp:textbox id="txtBoxTelefoneCliente" runat="server" cssclass="form-control" placeholder="(12) 5 5555-5555"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblCEP" runat="server" associatedcontrolid="txtBoxCEP" cssclass="form-label">CEP</asp:label>
                                <asp:textbox id="txtBoxCEP" runat="server" cssclass="form-control" placeholder="12345-678"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblEstado" runat="server" associatedcontrolid="dropDownEstado" cssclass="form-label">Estado</asp:label>
                                <asp:dropdownlist id="dropDownEstado" runat="server" cssclass="form-control">
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

                                </asp:dropdownlist>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblCidade" runat="server" associatedcontrolid="txtBoxCidade" cssclass="form-label">Cidade</asp:label>
                                <asp:textbox id="txtBoxCidade" runat="server" cssclass="form-control" placeholder="Ex: São Paulo"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblBairro" runat="server" associatedcontrolid="txtBoxBairro" cssclass="form-label">Bairro</asp:label>
                                <asp:textbox id="txtBoxBairro" runat="server" cssclass="form-control" placeholder="Ex: Centro"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblRua" runat="server" associatedcontrolid="txtBoxRua" cssclass="form-label">Rua</asp:label>
                                <asp:textbox id="txtBoxRua" runat="server" cssclass="form-control" placeholder="Ex: Rua das Flores"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblNumero" runat="server" associatedcontrolid="txtBoxNumero" cssclass="form-label">Número</asp:label>
                                <asp:textbox id="txtBoxNumero" runat="server" cssclass="form-control" placeholder="Ex: 123"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblCarrosAssoci" runat="server" associatedcontrolid="dropDownCarros" cssclass="form-label">Veículo Associado</asp:label>
                                <asp:dropdownlist id="dropDownCarros" runat="server" cssclass="form-control" appenddatabounditems="true">
                                    <asp:ListItem Text="Option 1"></asp:ListItem>
                                    <asp:ListItem Text="Option 2"></asp:ListItem>
                                    <asp:ListItem Text="Option 3"></asp:ListItem>
                                </asp:dropdownlist>
                                <asp:checkbox id="checkCarrosAssoci" runat="server" text="Não possui carro cadastrado" cssclass="form-check m-2" />
                            </div>
                            <div class="text-center col-12 mt-4">
                                <asp:button id="btnSalvarClientes" runat="server" text="Salvar" cssclass="btn btn-primary" onclick="btnSalvarClientes_Click" />
                                <asp:button id="btnCancelarClientes" runat="server" text="Cancelar" cssclass="btn btn-secondary" onclick="btnCancelarClientes_Click" />
                            </div>
                            <br>
                            <div class=" col-12 text-center text-success my-2" role="alert">
                                <asp:label id="lblMensagem_Clientes" text="" runat="server"></asp:label>
                            </div>
                        </div>
                        <!-- End Clientes Form -->
                    </div>
                    <!-- End Content Tabs - Clietes -->

                    <!-- Content Tabs - Mecanicos -->
                    <div class="tab-pane fade" id="pills-mecanicos" role="tabpanel" aria-labelledby="mecanicos-tab">
                        <!-- Mecânicos Form -->
                        <div class="row form-group">
                            <div class="col-6 my-2">
                                <asp:label id="lblNomeMecanico" runat="server" associatedcontrolid="txtBoxNomeMecanico" cssclass="form-label">Nome</asp:label>
                                <asp:textbox id="txtBoxNomeMecanico" runat="server" cssclass="form-control" placeholder="Ex: João Silva"></asp:textbox>
                            </div>
                            <div class="col-6 my-2">
                                <asp:label id="lblNumeroCracha" runat="server" associatedcontrolid="txtBoxNumeroCracha" cssclass="form-label">Número de Crachá</asp:label>
                                <asp:textbox id="txtBoxNumeroCracha" runat="server" cssclass="form-control" placeholder="Ex: 123456"></asp:textbox>
                            </div>
                            <div class="text-center col-12 mt-4">
                                <asp:button id="btnSalvarMecanicos" runat="server" text="Salvar" cssclass="btn btn-primary" onclick="btnSalvarMecanicos_Click" />
                                <asp:button id="btnCancelarMecanicos" runat="server" text="Cancelar" cssclass="btn btn-secondary" onclick="btnCancelarMecanicos_Click" />
                            </div>
                        </div>
                        <!--End Mecânicos Form-->
                    </div>
                    <!-- End Content Tabs - Clietes -->

                </div>

                <!-- End Pills Tabs -->

            </div>
        </div>
    </form>
</asp:Content>

