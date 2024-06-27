<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CarLink_Login.aspx.cs" Inherits="Paginas_CarLink_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">


    <link href="../css/sb-admin-2.min.css" rel="stylesheet">
    <link href="../css/style_login.css" rel="stylesheet">

    <link href="../img_landpage/img_CarLink-removebg-preview-C.png" rel="icon">
    <link href="../img_landpage/img_CarLink-removebg-preview-C.png" rel="apple-touch-icon">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css" rel="stylesheet">
</head>
<body>

    <div class="container ">
        <div class="row justify-content-center">

            <div class="card o-hidden border-0 shadow-lg shadow-md my-5">

                <div class="card-body p-0">

                    <div class="row">

                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Bem vindo de volta ao CarLink</h1>
                                </div>

                                <form id="form" runat="server">

                                    <div class="form-group">
                                        <asp:Label ID="lblEmailCorp" runat="server" AssociatedControlID="txtBoxEmailCorp" CssClass="form-label">Email Corporativo</asp:Label>
                                        <asp:TextBox ID="txtBoxEmailCorp" runat="server" CssClass="form-control form-control-user required" type="email" placeholder="email@gmail.com"></asp:TextBox>
                                        <asp:Label ID="lblEmailError" runat="server" CssClass="form-label text-danger "></asp:Label>
                                    </div>



                                    <div class="form-group position-relative password-container">
                                        <asp:Label ID="lblSenha" runat="server" AssociatedControlID="txtBoxSenha" CssClass="form-label">Senha</asp:Label>
                                        <asp:TextBox ID="txtBoxSenha" runat="server" CssClass="form-control form-control-user required" type="password" placeholder="********"></asp:TextBox>
                                        <asp:Label ID="lblSenhaError" runat="server" CssClass="form-label text-danger "></asp:Label>
                                    </div>



                                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary btn-user btn-block" OnClick="btnLogin_Click" />
                                    <asp:Label ID="lblError" runat="server" CssClass="form-label text-danger "></asp:Label>
                                    <asp:Label ID="lblSucess" runat="server" CssClass="form-label text-danger "></asp:Label>

                                </form>

                                <hr />

                                <div class="text-center mt-3">
                                    <a class="fs-4" href="<%= ("CarLink_Landing.aspx") %>">Retornar a página principal</a>
                                </div>

                                <div class="text-center mt-3">
                                    <a class="fs-4" href="<%= ("CarLink_Registro.aspx") %>">Ainda não tem uma conta? Cadastre-se agora</a>
                                </div>

                            </div>
                        </div>

                        <!-- Foto animada -->
                        <div class="col-lg-6 fundocolor">
                            <div class="imagem-container">
                                <img src="../img_landpage/img_CarLink-removebg-preview-C.png" alt="Imagem animada"
                                    class="imagem-animada " />
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>

    </div>


    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>


    <script src="js/sb-admin-2.min.js"></script>
    <script src="js_login/login.js"></script>

    <script>
        const togglePassword = document.querySelector('#togglePassword');
        const passwordInput = document.querySelector('#passwordInput');

        togglePassword.addEventListener('click', function () {
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
            this.classList.toggle('bi-eye');
            this.classList.toggle('bi-eye-slash');
        });
    </script>

</body>
</html>
