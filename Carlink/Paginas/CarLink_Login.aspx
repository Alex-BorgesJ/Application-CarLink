<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CarLink</title>


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

                                <form id="form">

                                    <div class="form-group">
                                        <input type="email" class="form-control form-control-user required"
                                            placeholder="Insira o nome..." />
                                    </div>



                                    <div class="form-group position-relative password-container">
                                        <input type="password" class="form-control form-control-user required"
                                            placeholder="Insira uma senha..." id="passwordInput">
                                        <i class="bi bi-eye-slash password-toggle" id="togglePassword"></i>
                                    </div>

                                     <div class="form-group">
                                        <div class="position-relative">
                                            <select class="form-control form-control-user required" id="funcao" name="funcao">
                                                <option value="" selected disabled>Selecione a função</option>
                                                <option value="mecanico">Mecânico</option>
                                                <option value="adm">Administrador</option>
                                            </select>
                                        </div>
                                    </div>

                                   <a href="CarLink_Home.aspx" class="btn btn-primary btn-user btn-block">Login</a>


                                </form>

                                <hr />

                                <div class="text-center mt-3">
                                     <a class="fs-4" href="<%= ("CarLink_Landing.aspx") %>">Retornar a página principal</a>
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
