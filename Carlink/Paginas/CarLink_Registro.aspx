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

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- jQuery Mask Plugin -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js"></script>

    <style>
        .lateral {
            background-color:#243B8C;
            border-top-right-radius: 20px;
            border-bottom-right-radius: 20px;
            position: relative;
            left:-2%;
            z-index: 1;
        }

        .formulario {
            background-color:white;
            border-radius: 20px;
            padding-top: 30px;
            padding-bottom: 30px;
            padding-left: 50px;
            padding-right: 70px;
        }

        .imagem{
            display: flex;
            justify-content: center; /* Centraliza horizontalmente */
            align-items: center;    /* Centraliza verticalmente */
            height: auto;
            max-width: 100%;
        }
    </style>
</head>
<body class="form-body">
    <form id="form1" runat="server">
        <div class="estrutura">
            <div class="row form-group">
                <div class="row">
                    <div class="col-12 col-lg-6 formulario">             
                        <a class="collapse-item" style="text-decoration:none ;" href="<%= ("CarLink_Landing.aspx") %>"><i class='bx bx-chevron-left'></i>  Voltar</a>
                           
                        <h3 class="mt-3" style="color:#243B8C">Venha fazer parte do nosso time!</h3>
                        <h5 class="" style="line-height:15px; font-weight:400; color:#243B8C">Registre-se agora para experimentar nossos serviços</h5>
                        <div class="row">
                                <div class="col-6 my-4">
                                    <asp:Label ID="lblNomeRegistro" runat="server" AssociatedControlID="txtBoxNomeRegistro" CssClass="form-label" style="color: #06184D; font-weight:500">Nome</asp:Label>
                                    <asp:TextBox ID="txtBoxNomeRegistro" runat="server" CssClass="form-control" placeholder="John"></asp:TextBox>
                                    <asp:Label ID="lblNomeError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                                </div>


                                <div class="col-6 my-4">
                                    <asp:Label ID="lblSobrenomeRegistro" runat="server" AssociatedControlID="txtBoxSobrenomeRegistro" CssClass="form-label" style="color: #06184D; font-weight:500">Sobrenome</asp:Label>
                                    <asp:TextBox ID="txtBoxSobrenomeRegistro" runat="server" CssClass="form-control" placeholder="Doe"></asp:TextBox>
                                    <asp:Label ID="lblSobrenomeError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                                </div>


                                <div class="col-6 my-2">
                                    <asp:Label ID="lblEmpresa" runat="server" AssociatedControlID="txtBoxEmpresa" CssClass="form-label" style="color: #06184D; font-weight:500">Empresa</asp:Label>
                                    <asp:TextBox ID="txtBoxEmpresa" runat="server" CssClass="form-control" placeholder="Carlink"></asp:TextBox>
                                    <asp:Label ID="lblEmpresaError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                                </div>
                            

                                <div class="col-6 my-2">
                                    <asp:Label ID="lblCNPJ" runat="server" AssociatedControlID="txtBoxCNPJ" CssClass="form-label" style="color: #06184D; font-weight:500">CNPJ</asp:Label>
                                    <asp:TextBox ID="txtBoxCNPJ" runat="server" CssClass="form-control" placeholder="xxx.xxxx.xxx.xxx-xx"></asp:TextBox>
                                    <asp:Label ID="lblCnpjError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                                </div>


                                <div class="col-6 my-2">
                                    <asp:Label ID="lblCPF" runat="server" AssociatedControlID="txtBoxCPF" CssClass="form-label" style="color: #06184D; font-weight:500">CPF</asp:Label>
                                    <asp:TextBox ID="txtBoxCPF" runat="server" CssClass="form-control" placeholder="xxx.xxxx.xxx.xxx-xx"></asp:TextBox>
                                    <asp:Label ID="lblCpfError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                                </div>


                                <div class="col-6 my-2">
                                    <asp:Label ID="lblEmailCorp" runat="server" AssociatedControlID="txtBoxEmailCorp" CssClass="form-label" style="color: #06184D; font-weight:500">Email Corporativo</asp:Label>
                                    <asp:TextBox ID="txtBoxEmailCorp" runat="server" CssClass="form-control" type="email" placeholder="email@gmail.com"></asp:TextBox>
                                    <asp:Label ID="lblEmailError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                                </div>


                                <div class="col-12 my-2">
                                    <asp:Label ID="lblTelCorp" runat="server" AssociatedControlID="txtBoxTelCorp" CssClass="form-label" style="color: #06184D; font-weight:500">Telefone corportativo</asp:Label>
                                    <asp:TextBox ID="txtBoxTelCorp" runat="server" CssClass="form-control" placeholder="(12) 34567-8910 "></asp:TextBox>
                                    <asp:Label ID="lblTelError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                                </div>

                                <div class="col-6 my-2">
                                    <asp:Label ID="lblSenha" runat="server" AssociatedControlID="txtBoxSenha" CssClass="form-label" style="color: #06184D; font-weight:500">Senha</asp:Label>
                                    <asp:TextBox ID="txtBoxSenha" runat="server" CssClass="form-control" type="password" placeholder="********"></asp:TextBox>
                                    <asp:Label ID="lblSenhaError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                                </div>
                           

                                <div class="col-6 my-2">
                                    <asp:Label ID="lblConfSenha" runat="server" AssociatedControlID="txtBoxConfSenha" CssClass="form-label" style="color: #06184D; font-weight:500">Confirmar Senha</asp:Label>
                                    <asp:TextBox ID="txtBoxConfSenha" runat="server" CssClass="form-control" type="password" placeholder="********"></asp:TextBox>
                                    <asp:Label ID="lblConfError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                                </div>


                                <div class="text-center col-12 mt-4">
                                    <asp:Button ID="btnSalvarCarros" runat="server" Text="Registrar" CssClass="btn btn-primary" OnClick="btnSalvarRegistro_Click" />
                                    <asp:Button ID="btnCancelarCarros" runat="server" Text="Cancelar" CssClass="btn btn-secondary" OnClick="btnCancelarRegistro_Click"/>
                                </div>

                               <div class="col-12 my-2 text-center">
                                    <asp:Label ID="lblSucess" runat="server" CssClass="form-label text-success "></asp:Label>
                                    <asp:Label ID="lblError"  runat="server" CssClass="form-label text-danger "></asp:Label>
                                </div>
                            </div>
                    </div>
                    <div class="col-lg-6 d-none d-lg-block lateral" >
                        <figure>
                            <img src="../img_landpage/img_CarLink-removebg-preview-C.png" class="img-fluid imagem" alt="">
                            
                        </figure>
                    </div>
                </div>
                            
             </div>
         </div>

        <script type="text/javascript">
            $(document).ready(function(){
                $('#<%= txtBoxTelCorp.ClientID %>').mask('(00) 0 0000-0000');
                $('#<%= txtBoxCNPJ.ClientID %>').mask('00.000.000/0000-00');
                $('#<%= txtBoxCPF.ClientID %>').mask('000.000.000-00');
            });
        </script>
    </form>
</body>
</html>