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

    <!-- Custom styles for this template-->
    <link href="../css/sb-admin-2.min.css" rel="stylesheet">
    <link href="../css/style_login.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">

        <div class="container">


            <div class="form signin">
                <h2>Sign In</h2>
                <div class="inputBox">
                    <input type="text" required="required">
                    <i class="fa fas fa-user"></i>
                    <span>username</span>
                </div>
                <div class="inputBox">
                    <input type="password" required="required">
                    <i class="fa fas fa-lock"></i>
                    <span>password</span>
                </div>
                <div class="inputBox">
                    <input type="button" value="Login" onclick="redirectToHome()">
                </div>
                <p>Not Registered ? <a href="#" class="create">Create an account</a></p>
            </div>

            <div class="form signup">
                <h2>Sign Up</h2>
                <div class="inputBox">
                    <input type="text" required="required">
                    <i class="fa fas fa-user"></i>
                    <span>username</span>
                </div>
                <div class="inputBox">
                    <input type="text" required="required">
                    <i class="fa fas fa-envelope"></i>
                    <span>email address</span>
                </div>
                <div class="inputBox">
                    <input type="password" required="required">
                    <i class="fa fas fa-lock"></i>
                    <span>create password</span>
                </div>
                <div class="inputBox">
                    <input type="password" required="required">
                    <i class="fa fas fa-lock"></i>
                    <span>confirm password</span>
                </div>
                <div class="inputBox">
                    <input type="submit" value="Create Account">
                </div>
                <p>Already a member ? <a href="#" class="login">Log in</a></p>
            </div>

        </div>
    </form>

    <!-- Bootstrap core JavaScript-->
    <script src="../../vendor/jquery/jquery.min.js"></script>
    <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../../js/sb-admin-2.min.js"></script>


    <script>
        let login = document.querySelector('.login');
        let create = document.querySelector('.create');
        let container = document.querySelector('.container');

        container.classList.add('signinForm');

        login.onclick = function () {
            container.classList.add('signinForm');
        }

        create.onclick = function () {
            container.classList.remove('signinForm');
        }

        function redirectToHome() {
            window.location.href = "/Paginas/CarLink_Home.aspx";
        }

    </script>

</body>
</html>
