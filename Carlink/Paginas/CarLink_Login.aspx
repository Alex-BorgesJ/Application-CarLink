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

</head>

<body >

    <div class="container " >

      
        <div class="row justify-content-center" >

                <div class="card o-hidden border-0 shadow-lg shadow-md my-5">

                    <div class="card-body p-0">
                       
                        <div class="row">

                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Bem vindo de volta ao CarLink</h1>
                                    </div>
                                    <form class="user">
                                        <div class="form-group">
                                            <input type="email" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                placeholder="Insira o E-Mail..."/>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                id="exampleInputPassword" placeholder="Senha..."/>
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck"/>
                                                <label class="custom-control-label pt-1" for="customCheck">Mantenha-me conectado.</label>
                                            </div>
                                        </div>
                                        <a href="<%= ("CarLink_Home.aspx") %>" class="btn btn-primary btn-user btn-block">
                                            Login
                                        </a>
                                        
                                   </form>

                                    <hr/>
                                                                        
                                    <div class="text-center mt-3">
                                       <a  href="<%= ("CarLink_Landing.aspx") %>" class="fs-4">Retornar a página principal</a>
                                    </div>
                                    
                                </div>
                            </div>

                            <!-- Foto animada -->
                            <div class="col-lg-6 d-none d-lg-block fundocolor" >
                                <div class="imagem-container">
                                    <img src="../img_landpage/img_CarLink-removebg-preview-C.png" alt="Imagem animada" class="imagem-animada "/>
                                </div>
                            </div>
                            

                            
                        </div>
                    </div>
                </div>

            

        </div>

    </div>

    
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

   
    <script src="../js/sb-admin-2.min.js"></script>

</body>

</html>