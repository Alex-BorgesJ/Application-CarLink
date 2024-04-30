<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CarLink_Landing.aspx.cs" Inherits="Paginas_CarLink_Landing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/sb-admin-2.min.css" rel="stylesheet">
    <link href="../css/style_landing.css" rel="stylesheet">
</head>
<body>

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-text mx-3">CarLink</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Heading -->
            <div class="sidebar-heading">
                Interface
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item active">
                <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true"
                    aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Acesso</span>
                </a>
                <div id="collapsePages" class="collapse show" aria-labelledby="headingPages"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Login Screens:</h6>
                        <a class="collapse-item" href="login.html">Login</a>
                        <a class="collapse-item" href="register.html">Register</a>
                        <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Sobre nós</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Informações:</h6>
                        <a class="collapse-item" href="buttons.html">Nossa história</a>
                        <a class="collapse-item" href="cards.html">Missão</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Contatos</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Como nos encontrar:</h6>
                        <a class="collapse-item" href="utilities-color.html">Redes sociais</a>
                        <a class="collapse-item" href="utilities-border.html">Contato</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fa fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>
                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- 404 Error Text -->
                    <div class="row">
                        <div class="mx-5">
                            <!-- Main text -->
                            <div class="col-8 offset-2 mt-5">
                                <h1 class="texth1">Ferramena de controle de serviços</h1>
                                <h2 class="texth2">para evoluir seu negócio</h2>
                                <p class="text-menu">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Mollitia, maxime! Dolorum alias nemo in excepturi itaque quis magnam numquam sit, expedita error harum incidunt ut accusamus ullam quaerat ducimus fuga accusantium atque eius ratione dolore fugit! Ipsum ducimus recusandae dicta illum explicabo veritatis non maxime fuga itaque ea. Incidunt, iure?</p>

                                <div class="row">
                                    <div class="col-5 offset-5 mt-3 mb-5 ">
                                        <a class="btn btn-page d-grid gap-2 " href="#" role="button">Comece agora_</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Main info -->
                            <div class="row bg-main mt-5">
                                <div class="col-12 colortxt">
                                    <div class="alinhamento">
                                        <h3 class="mb-3">Nosso proposito..</h3>
                                        <!-- textos -->
                                        <div>
                                            <p>
                                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus accusamus sint porro? Nemo provident at, vitae laboriosam accusantium quam dolorem ad consectetur natus maxime recusandae iste autem aliquam obcaecati quas debitis, reprehenderit magnam voluptate sed mollitia quaerat quo! Voluptas necessitatibus nesciunt exercitationem porro? Sapiente vel, voluptatibus quia, aspernatur hic quas similique eius facere est provident reiciendis rerum consectetur dolorum dicta, autem quasi porro placeat. Et ex excepturi est itaque ab nisi. Neque dicta aliquid atque tempora necessitatibus voluptates, repudiandae repellendus.
                                            </p>

                                            <p>
                                                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veniam, esse. Perferendis vero numquam nemo molestias assumenda inventore maxime, quas quisquam ducimus qui exercitationem hic rem? Blanditiis magnam ab enim, aperiam dicta nobis et facilis ipsam, veritatis asperiores non dolore itaque accusantium odio maiores placeat ducimus eos ipsum. Ad architecto doloribus amet vero eveniet, blanditiis aspernatur totam eum possimus id dignissimos voluptatem incidunt illum voluptas excepturi repudiandae qui explicabo aut at saepe! Consectetur quaerat optio facilis esse ipsum voluptas cumque suscipit!
                                            </p>

                                            <p>
                                                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ipsa, rerum iste quod molestias eos quos, qui delectus tempora ipsum, ut doloribus nesciunt officia consectetur repellendus! Itaque nulla numquam minus quam culpa, iure ad dolor temporibus dolorum enim atque veritatis, voluptates unde repellendus quis in, sint nostrum sequi consequatur perferendis nisi soluta magnam esse? Corporis nostrum facilis maxime ipsa nisi a porro commodi nulla numquam? Sequi praesentium quas blanditiis. Dolorum assumenda quibusdam facilis nam. Deserunt aliquam magni dolor earum vero sequi?
                                            </p>
                                        </div>
                                    </div>

                                    <hr class="hr-format">

                                    <div class="alinhamento">
                                        <h3 class="mb-3 ">Desafios..</h3>
                                        <!-- textos -->
                                        <div>
                                            <p>
                                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus accusamus sint porro? Nemo provident at, vitae laboriosam accusantium quam dolorem ad consectetur natus maxime recusandae iste autem aliquam obcaecati quas debitis, reprehenderit magnam voluptate sed mollitia quaerat quo! Voluptas necessitatibus nesciunt exercitationem porro? Sapiente vel, voluptatibus quia, aspernatur hic quas similique eius facere est provident reiciendis rerum consectetur dolorum dicta, autem quasi porro placeat. Et ex excepturi est itaque ab nisi. Neque dicta aliquid atque tempora necessitatibus voluptates, repudiandae repellendus.
                                            </p>

                                            <p>
                                                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veniam, esse. Perferendis vero numquam nemo molestias assumenda inventore maxime, quas quisquam ducimus qui exercitationem hic rem? Blanditiis magnam ab enim, aperiam dicta nobis et facilis ipsam, veritatis asperiores non dolore itaque accusantium odio maiores placeat ducimus eos ipsum. Ad architecto doloribus amet vero eveniet, blanditiis aspernatur totam eum possimus id dignissimos voluptatem incidunt illum voluptas excepturi repudiandae qui explicabo aut at saepe! Consectetur quaerat optio facilis esse ipsum voluptas cumque suscipit!
                                            </p>

                                            <p>
                                                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ipsa, rerum iste quod molestias eos quos, qui delectus tempora ipsum, ut doloribus nesciunt officia consectetur repellendus! Itaque nulla numquam minus quam culpa, iure ad dolor temporibus dolorum enim atque veritatis, voluptates unde repellendus quis in, sint nostrum sequi consequatur perferendis nisi soluta magnam esse? Corporis nostrum facilis maxime ipsa nisi a porro commodi nulla numquam? Sequi praesentium quas blanditiis. Dolorum assumenda quibusdam facilis nam. Deserunt aliquam magni dolor earum vero sequi?
                                            </p>
                                        </div>
                                    </div>

                                    <hr class="hr-format">
                                    <h3 class="mb-3 alinhamento-card">Nossos planos</h3>

                                    <div class="row alinhamento-card">
                                        <!-- Card 1 -->
                                        <div class="col-4">
                                            <div class="card bg-card" style="width: 18rem;">
                                                <div class="card-body color-card">
                                                    <h5 class="card-title font-weight-bold">Plano Bronze</h5>
                                                    <h6 class="card-subtitle mb-2 text-muted">R$ 49.99</h6>
                                                    <ul>
                                                        <li>Até 5 usuários.</li>
                                                        <li>Registro de manutenção</li>
                                                        <li>Histórico de serviços</li>
                                                        <li>Catalogo de peças</li>
                                                        <li>Atribuição de atividades a colaboradores</li>
                                                        <li>Registro de notas fiscais</li>
                                                        <li>Suporte online</li>
                                                    </ul>
                                                    <a href="#" class="card-link">Saiba mais</a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Card 2 -->
                                        <div class="col-4">
                                            <div class="card bg-card" style="width: 18rem;">
                                                <div class="card-body color-card">
                                                    <h5 class="card-title font-weight-bold">Plano Silver</h5>
                                                    <h6 class="card-subtitle mb-2 text-muted">R$ 69.99</h6>
                                                    <ul>
                                                        <li>Até 20 usuários.</li>
                                                        <li>Registro de manutenção</li>
                                                        <li>Histórico de serviços</li>
                                                        <li>Catalogo de peças</li>
                                                        <li>Atribuição de atividades a colaboradores</li>
                                                        <li>Registro de notas fiscais</li>
                                                        <li>Suporte online</li>
                                                        <li>Api para preenchimento</li>
                                                        <li>Gerar relatorios impressos</li>
                                                    </ul>
                                                    <a href="#" class="card-link">Saiba mais</a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Card 3 -->
                                        <div class="col-4">
                                            <div class="card bg-card" style="width: 18rem;">
                                                <div class="card-body color-card">
                                                    <h5 class="card-title font-weight-bold">Plano Gold</h5>
                                                    <h6 class="card-subtitle mb-2 text-muted">R$ 99.99+</h6>
                                                    <ul>
                                                        <li>Ilimitado.</li>
                                                        <li>Registro de manutenção</li>
                                                        <li>Histórico de serviços</li>
                                                        <li>Catalogo de peças</li>
                                                        <li>Atribuição de atividades a colaboradores</li>
                                                        <li>Registro de notas fiscais</li>
                                                        <li>Suporte online</li>
                                                        <li>APi de preenchimento</li>
                                                        <li>Banco compartilhado</li>
                                                        <li>Personalizar interface</li>
                                                        <li>Imprimir relatório impresso</li>
                                                        <li>Sistema de backup</li>
                                                    </ul>
                                                    <a href="#" class="card-link">Saiba mais</a>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; CarLink 2024</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

     <!-- Bootstrap core JavaScript-->
    <script src="../../vendor/jquery/jquery.min.js"></script>
    <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../../js/sb-admin-2.min.js"></script>
</body>
</html>
