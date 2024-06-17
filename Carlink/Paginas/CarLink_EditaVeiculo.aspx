<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_EditaVeiculo.aspx.cs" Inherits="Paginas_CarLink_EditaVeiculo" %>



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
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <form runat="server" class="py-4 ">

        <div class="card ">
            <div class="card-body">
                <h1 class="card-title text-center color-black">Alterar dados do veículo</h1>



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
                                    <div class="col-6 my-2">
                                        <asp:Label ID="lblMarca" runat="server" AssociatedControlID="txtBoxMarca" CssClass="form-label">Marca</asp:Label>
                                        <asp:TextBox ID="txtBoxMarca" runat="server" CssClass="form-control" placeholder="Chevrolet"></asp:TextBox>
                                    </div>
                                    <div class="col-6 my-2">
                                        <asp:Label ID="lblModelo" runat="server" AssociatedControlID="txtBoxModelo" CssClass="form-label">Modelo</asp:Label>
                                        <asp:TextBox ID="txtBoxModelo" runat="server" CssClass="form-control" placeholder="Corsa Classic"></asp:TextBox>
                                    </div>
                                    <div class="col-6 my-2">
                                        <asp:Label ID="lblAno" runat="server" AssociatedControlID="txtBoxAno" CssClass="form-label">Ano</asp:Label>
                                        <asp:TextBox ID="txtBoxAno" runat="server" CssClass="form-control" placeholder="YYYY"></asp:TextBox>
                                    </div>
                                    <div class="col-6 my-2">
                                        <asp:Label ID="lblPlaca" runat="server" AssociatedControlID="txtBoxPlaca" CssClass="form-label">Placa</asp:Label>
                                        <asp:TextBox ID="txtBoxPlaca" runat="server" CssClass="form-control" placeholder="ABC1234 ou AAA1A23"></asp:TextBox>
                                    </div>
                                    <div class="col-6 my-2">
                                        <asp:Label ID="lblKm" runat="server" AssociatedControlID="txtBoxKm" CssClass="form-label">Quilometragem</asp:Label>
                                        <asp:TextBox ID="txtBoxKm" runat="server" CssClass="form-control" placeholder="40000 (km)"></asp:TextBox>
                                    </div>
                                    <div class="col-6 my-2">
                                        <asp:Label ID="lblChassi" runat="server" AssociatedControlID="txtBoxChassi" CssClass="form-label">Chassi</asp:Label>
                                        <asp:TextBox ID="txtBoxChassi" runat="server" CssClass="form-control" placeholder="ABC12345678901234"></asp:TextBox>
                                    </div>


                                </div>



                            </div>
                        </div>

                        <div class="text-center col-12 mt-4 color-black">
                            <asp:Button ID="btnSalvarVeic" runat="server" Text="Alterar" CssClass="btn btn-primary" OnClick="btnSalvarVeic_Click" />
                            <asp:Button ID="btnCancelarVeic" runat="server" Text="Cancelar" CssClass="btn btn-secondary" OnClick="btnCancelarVeic_Click" />
                        </div>

                        <div class="col-12 my-2 text-center">
                            <asp:Label ID="lblMensagem_veic" runat="server" CssClass="form-label text-success "></asp:Label>
                        </div>

                    </div>          

                </div>
        <!-- End Content Ordem serviços -->

        <script type="text/javascript">
    

        </script>
    </form>
</asp:Content>
