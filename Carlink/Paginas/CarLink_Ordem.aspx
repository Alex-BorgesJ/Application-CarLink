<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CarLink_Ordem.aspx.cs" Inherits="Paginas_CarLink_Ordem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <form runat="server">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title" style="color: #06184D">Ordem de serviços</h5>

                <!-- Content Ordem serviços -->
                <div class="row form-group">
                    <div class="col-12 my-2">
                        <asp:Label ID="lblMensagem" runat="server" CssClass="form-label text-danger"></asp:Label>
                    </div>

                    <div class="col-6 my-2">
                        <asp:Label ID="lblDataEntra" runat="server" AssociatedControlID="txtBoxDataEntra" CssClass="form-label">Data de Entrada</asp:Label>
                        <asp:TextBox ID="txtBoxDataEntra" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>

                    <div class="col-6 my-2">
                        <asp:Label ID="lblDataFinalizar" runat="server" AssociatedControlID="txtBoxDataFinalizar" CssClass="form-label">Data de Finalização</asp:Label>
                        <asp:TextBox ID="txtBoxDataFinalizar" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>

                    <div class="col-12 my-2">
                        <asp:Label ID="lblDescri" runat="server" AssociatedControlID="txtBoxDescri" CssClass="form-label">Descrição</asp:Label>
                        <asp:TextBox ID="txtBoxDescri" runat="server" CssClass="form-control" placeholder="...."></asp:TextBox>
                    </div>

                    <div class="col-6 my-2">
                        <asp:Label ID="LabelPeca" runat="server" AssociatedControlID="TextBoxPeca" CssClass="form-label">Peças utilizadas</asp:Label>
                        <asp:TextBox ID="TextBoxPeca" runat="server" CssClass="form-control" placeholder="Peças utilizadas..."></asp:TextBox>
                    </div>

                    <div class="col-6 my-2">
                        <asp:Label ID="LabelQtd" runat="server" AssociatedControlID="TextBoxQtd" CssClass="form-label">Quantidade utilizada</asp:Label>
                        <asp:TextBox ID="TextBoxQtd" runat="server" CssClass="form-control" placeholder="Quantidade..."></asp:TextBox>
                    </div>

                    <div class="col-6 my-2">
                        <asp:Label ID="lblValServ" runat="server" AssociatedControlID="txtBoxValServ" CssClass="form-label">Valor de Serviço</asp:Label>
                        <asp:TextBox ID="txtBoxValServ" runat="server" CssClass="form-control" placeholder="R$ 100.00"></asp:TextBox>
                    </div>

                    <div class="col-6 my-2">
                        <asp:Label ID="lblValorTotal" runat="server" AssociatedControlID="txtBoxValorTotal" CssClass="form-label">Valor Total</asp:Label>
                        <asp:TextBox ID="txtBoxValorTotal" runat="server" CssClass="form-control" placeholder="R$ 250.00"></asp:TextBox>
                    </div>

                    <div class="col-6 my-2">
                        <asp:Label ID="lblVeiculo" runat="server" AssociatedControlID="txtBoxVeiculo" CssClass="form-label">Placa do veículo</asp:Label>
                        <asp:TextBox ID="txtBoxVeiculo" runat="server" CssClass="form-control" placeholder="XXXXXXXXX"></asp:TextBox>
                    </div>

                    <div class="col-6 my-2">
                        <asp:Label ID="lblMecanico" runat="server" AssociatedControlID="txtBoxMecanico" CssClass="form-label">Mecânico</asp:Label>
                        <asp:TextBox ID="txtBoxMecanico" runat="server" CssClass="form-control" placeholder="John Doe"></asp:TextBox>
                    </div>

                    <div class="col-6 my-2">
                        <asp:Label ID="lblIdCliente" runat="server" AssociatedControlID="dropDownIdCliente" CssClass="form-label">Cliente Associado</asp:Label>
                        <asp:DropDownList ID="dropDownIdCliente" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                            <asp:ListItem Text="Selecione o Cliente" Value=""></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="text-center col-12 mt-4">
                        <asp:Button ID="btnSalvarOS" runat="server" Text="Salvar" CssClass="btn btn-primary" OnClick="btnSalvarOS_Click" />
                        <asp:Button ID="btnCancelarOS" runat="server" Text="Cancelar" CssClass="btn btn-secondary" OnClick="btnCancelarOS_Click" />
                    </div>

                </div>
                <!-- End Content Ordem serviços -->
            </div>
        </div>
    </form>
</asp:Content>
