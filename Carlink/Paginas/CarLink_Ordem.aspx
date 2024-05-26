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

                    <div class="col-6 my-1">
                        <asp:Label ID="lblVeiculo" runat="server" AssociatedControlID="txtBoxVeiculo" CssClass="form-label">Veículo Associado</asp:Label>
                        <div class="input-group my-2">
                            <asp:TextBox ID="txtBoxVeiculo" runat="server" CssClass="form-control" placeholder="Marca" AutoPostBack="True"></asp:TextBox>
                            <div class="input-group-append">
                               <button id="btnProcurarVeic" class="btn btn-primary btn-outline-secondary" type="button" onclick="document.getElementById('<%= btnProcurarVeicHidden.ClientID %>').click();">
                                    <i class="fas fa-search"></i>
                                </button>
                                <asp:Button ID="btnProcurarVeicHidden" runat="server" OnClick="btnProcurarVeic_Click" Style="display:none;" />
                            </div>
                        </div>
                    </div>


                    <div class="col-6 my-2">
                        <asp:Label ID="lblModelo" runat="server" AssociatedControlID="dropDownModelo" CssClass="form-label">Modelo</asp:Label>
                        <asp:DropDownList ID="dropDownModelo" runat="server" CssClass="form-control" AppendDataBoundItems="true">
                            <asp:ListItem Text="-- Selecione --" Value=""></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="col-12 my-2">
                        <h5 class="card-title">Dados do Veículo</h5>
                        <hr />
                        <div class="row">
                            <div class="col-4 my-2">
                                <asp:Label ID="lblNomeVeic" runat="server" CssClass="form-label">Nome</asp:Label>
                                <asp:Label ID="lblmsgNomeVeic" runat="server" CssClass="form-control" Style="border: 1px solid grey; margin-top: 10px"></asp:Label>
                            </div>

                            <div class="col-4 my-2">
                                <asp:Label ID="lblMarca" runat="server" CssClass="form-label">Marca</asp:Label>
                                <asp:Label ID="lblmsgMarca" runat="server" CssClass="form-control" Style="border: 1px solid grey; margin-top: 10px"></asp:Label>
                            </div>

                            <div class="col-4 my-2">
                                <asp:Label ID="Label1" runat="server" CssClass="form-label">Modelo</asp:Label>
                                <asp:Label ID="lblmsgModelo" runat="server" CssClass="form-control" Style="border: 1px solid grey; margin-top: 10px"></asp:Label>
                            </div>

                            <div class="col-4 my-2">
                                <asp:Label ID="lblChassi" runat="server" CssClass="form-label">Chassi</asp:Label>
                                <asp:Label ID="lblmsgChassi" runat="server" CssClass="form-control" Style="border: 1px solid grey; margin-top: 10px"></asp:Label>
                            </div>

                            <div class="col-4 my-2">
                                <asp:Label ID="lblAno" runat="server" CssClass="form-label">Ano</asp:Label>
                                <asp:Label ID="lblmsgAno" runat="server" CssClass="form-control" Style="border: 1px solid grey; margin-top: 10px"></asp:Label>
                            </div>

                            <div class="col-4 my-2">
                                <asp:Label ID="lblKm" runat="server" CssClass="form-label">Quilometragem</asp:Label>
                                <asp:Label ID="lblmsgKm" runat="server" CssClass="form-control" Style="border: 1px solid grey; margin-top: 10px"></asp:Label>
                            </div>
                        </div>
                    </div>

                    <div class="col-6 my-4">
                        <asp:Label ID="lblDataEntra" runat="server" AssociatedControlID="txtBoxDataEntra" CssClass="form-label">Data de Entrada</asp:Label>
                        <asp:TextBox ID="txtBoxDataEntra" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>

                    <div class="col-6 my-4">
                        <asp:Label ID="lblDataFinalizar" runat="server" AssociatedControlID="txtBoxDataFinalizar" CssClass="form-label">Data de Finalização</asp:Label>
                        <asp:TextBox ID="txtBoxDataFinalizar" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>

                    <div class="col-12 my-2">
                        <asp:Label ID="lblObservacao" runat="server" AssociatedControlID="txtBoxObservacao" CssClass="form-label">Observação</asp:Label>
                        <asp:TextBox ID="txtBoxObservacao" runat="server" CssClass="form-control" Style="height: 120px"></asp:TextBox>
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
