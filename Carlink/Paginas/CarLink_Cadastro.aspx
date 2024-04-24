<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_Cadastro.aspx.cs" Inherits="Paginas_CarLink_Cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                    <form class="row form-group" runat="server">
                        <div class="col-6 my-2">
                            <asp:Label ID="lblMarca" runat="server" AssociatedControlID="inputMarca" CssClass="form-label">Marca</asp:Label>
                            <asp:TextBox ID="inputMarca" runat="server" CssClass="form-control" placeholder="Chevrolet"></asp:TextBox>
                        </div>
                        <div class="col-6 my-2">
                            <asp:Label ID="lblModelo" runat="server" AssociatedControlID="inputModelo" CssClass="form-label">Modelo</asp:Label>
                            <asp:TextBox ID="inputModelo" runat="server" CssClass="form-control" placeholder="Corsa Classic"></asp:TextBox>
                        </div>
                        <div class="col-6 my-2">
                            <asp:Label ID="lblAno" runat="server" AssociatedControlID="inputAno" CssClass="form-label">Ano</asp:Label>
                            <asp:TextBox ID="inputAno" runat="server" CssClass="form-control" placeholder="YYYY"></asp:TextBox>
                        </div>
                        <div class="col-6 my-2">
                            <asp:Label ID="lblPlaca" runat="server" AssociatedControlID="inputPlaca" CssClass="form-label">Placa</asp:Label>
                            <asp:TextBox ID="inputPlaca" runat="server" CssClass="form-control" placeholder="ABC-1234 ou AAA1A23"></asp:TextBox>
                        </div>
                        <div class="col-6 my-2">
                            <asp:Label ID="lblKm" runat="server" AssociatedControlID="inputKm" CssClass="form-label">Quilometragem</asp:Label>
                            <asp:TextBox ID="inputKm" runat="server" CssClass="form-control" placeholder="40000 (km)"></asp:TextBox>
                        </div>
                        <div class="col-6 my-2">
                            <asp:Label ID="lblChassi" runat="server" AssociatedControlID="inputChassi" CssClass="form-label">Chassi</asp:Label>
                            <asp:TextBox ID="inputChassi" runat="server" CssClass="form-control" placeholder="ABC12345678901234"></asp:TextBox>
                        </div>
                        <div class="row col-6 my-3">
                            <asp:Label ID="lblColor" runat="server" AssociatedControlID="inputColor" CssClass="col-sm-2">Cor do Veículo</asp:Label>
                            <div class="col-sm-4">
                                <asp:TextBox ID="inputColor" runat="server" CssClass="form-control form-control-color" Text="#4154f1"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-6 my-2">
                            <asp:Label ID="lblCliente" runat="server" AssociatedControlID="inputCliente" CssClass="form-label">Dono do Veículo</asp:Label>
                            <asp:DropDownList ID="inputCliente" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                                <asp:ListItem Text="Option 1"></asp:ListItem>
                                <asp:ListItem Text="Option 2"></asp:ListItem>
                                <asp:ListItem Text="Option 3"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:CheckBox ID="checkClienteCadastro" runat="server" Text="Não possui dono cadastrado" CssClass="form-check-input" />
                        </div>
                        <div class="text-center col-12 mt-4">
                            <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CssClass="btn btn-primary" OnClick="btnSalvar_Click" />
                            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-secondary" OnClick="btnCancelar_Click" />
                        </div>
                    </form>
                    <!-- End Carros Form -->
                </div>
                <!-- End Content Tabs - Carros -->

                <!-- Content Tabs - Clietes -->
                <div class="tab-pane fade" id="pills-clientes" role="tabpanel" aria-labelledby="clientes-tab">
                    <!-- Clientes Form -->
                    
                    <!-- End Clientes Form -->
                </div>
                <!-- End Content Tabs - Clietes -->

                <!-- Content Tabs - Mecanicos -->
                <div class="tab-pane fade" id="pills-mecanicos" role="tabpanel" aria-labelledby="mecanicos-tab">
                    Saepe animi et soluta ad odit soluta sunt. Nihil quos omnis animi debitis cumque. Accusantium quibusdam perspiciatis qui qui omnis magnam. Officiis accusamus impedit molestias nostrum veniam. Qui amet ipsum iure. Dignissimos fuga tempore dolor.
                </div>
                <!-- End Content Tabs - Clietes -->

            </div>

            <!-- End Pills Tabs -->

        </div>
    </div>
</asp:Content>

