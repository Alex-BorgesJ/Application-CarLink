<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CarLink_Registro.aspx.cs" Inherits="Paginas_CarLink_Cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/style_registro.css" rel="stylesheet"/>
    <link href="../vendor_landpage/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../vendor_landpage/bootstrap/js/bootstrap.bundle.min.js" rel="stylesheet"/>
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'/>
</head>
<body class="form-body">
    <form id="form1" runat="server">
        <div class="estrutura">
            <div class="row form-group form rounded">
                <div class="row">
                    <div class="col-6">
                        <a class="collapse-item" href="<%= ("CarLink_Landing.aspx") %>"><i class='bx bx-left-arrow-alt'></i> Voltar</a>
                           <div class="col-12 my-4">
                                <asp:Label ID="lblNomeRegistro" runat="server" AssociatedControlID="txtBoxNomeRegistro" CssClass="form-label">Nome</asp:Label>
                                <asp:TextBox ID="txtBoxNomeRegistro" runat="server" CssClass="form-control" placeholder="John"></asp:TextBox>
                                <asp:Label ID="lblNomeError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                            </div>


                            <div class="col-12 my-2">
                                <asp:Label ID="lblSobrenomeRegistro" runat="server" AssociatedControlID="txtBoxSobrenomeRegistro" CssClass="form-label">Sobrenome</asp:Label>
                                <asp:TextBox ID="txtBoxSobrenomeRegistro" runat="server" CssClass="form-control" placeholder="Doe"></asp:TextBox>
                                <asp:Label ID="lblSobrenomeError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                            </div>


                            <div class="col-12 my-2">
                                <asp:Label ID="lblEmpresa" runat="server" AssociatedControlID="txtBoxEmpresa" CssClass="form-label">Empresa</asp:Label>
                                <asp:TextBox ID="txtBoxEmpresa" runat="server" CssClass="form-control" placeholder="Carlink"></asp:TextBox>
                                <asp:Label ID="lblEmpresaError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                            </div>
                            

                            <div class="col-12 my-2">
                                <asp:Label ID="lblCNPJ" runat="server" AssociatedControlID="txtBoxCNPJ" CssClass="form-label">CNPJ</asp:Label>
                                <asp:TextBox ID="txtBoxCNPJ" runat="server" CssClass="form-control" placeholder="xxx.xxxx.xxx.xxx-xx"></asp:TextBox>
                                <asp:Label ID="lblCnpjError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                            </div>


                            <div class="col-12 my-2">
                                <asp:Label ID="lblCPF" runat="server" AssociatedControlID="txtBoxCPF" CssClass="form-label">CPF</asp:Label>
                                <asp:TextBox ID="txtBoxCPF" runat="server" CssClass="form-control" placeholder="xxx.xxxx.xxx.xxx-xx"></asp:TextBox>
                                <asp:Label ID="lblCpfError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                            </div>


                            <div class="col-12 my-2">
                                <asp:Label ID="lblEmailCorp" runat="server" AssociatedControlID="txtBoxEmailCorp" CssClass="form-label">Email Corporativo</asp:Label>
                                <asp:TextBox ID="txtBoxEmailCorp" runat="server" CssClass="form-control" type="email" placeholder="email@gmail.com"></asp:TextBox>
                                <asp:Label ID="lblEmailError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                            </div>


                            <div class="col-12 my-2">
                                <asp:Label ID="lblTelCorp" runat="server" AssociatedControlID="txtBoxTelCorp" CssClass="form-label">Telefone corportativo</asp:Label>
                                <asp:TextBox ID="txtBoxTelCorp" runat="server" CssClass="form-control" placeholder="(12) 34567-8910 "></asp:TextBox>
                                <asp:Label ID="lblTelError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                            </div>

                            <div class="col-12 my-2">
                                <asp:Label ID="lblSenha" runat="server" AssociatedControlID="txtBoxSenha" CssClass="form-label">Senha</asp:Label>
                                <asp:TextBox ID="txtBoxSenha" runat="server" CssClass="form-control" type="password" placeholder="********"></asp:TextBox>
                                <asp:Label ID="lblSenhaError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                            </div>
                           

                            <div class="col-12 my-2">
                                <asp:Label ID="lblConfSenha" runat="server" AssociatedControlID="txtBoxConfSenha" CssClass="form-label">Confirmar Senha</asp:Label>
                                <asp:TextBox ID="txtBoxConfSenha" runat="server" CssClass="form-control" type="password" placeholder="********"></asp:TextBox>
                                <asp:Label ID="lblConfError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                            </div>


                            <div class="text-center col-12 mt-4">
                                <asp:Button ID="btnSalvarCarros" runat="server" Text="Salvar" CssClass="btn btn-primary" OnClick="btnSalvarCarros_Click" />
                                <asp:Button ID="btnCancelarCarros" runat="server" Text="Cancelar" CssClass="btn btn-secondary" OnClick="btnCancelarCarros_Click"/>
                            </div>

                           <div class="col-12 my-2 text-center">
                                <asp:Label ID="lblSucess" runat="server" CssClass="form-label text-success "></asp:Label>
                                <asp:Label ID="lblError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                            </div>
                    </div>
                    
                </div>
                            
             </div>
         </div>
    </form>
</body>
</html>