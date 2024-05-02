<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CarLink_Landing.aspx.cs" Inherits="Paginas_CarLink_Landing" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>CarLink</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="../img_landpage/img_CarLink.png" rel="icon">
  <link href="../img_landpage/img_CarLink-removebg-preview-C.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
    rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../vendor_landpage/aos/aos.css" rel="stylesheet">
  <link href="../vendor_landpage/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../vendor_landpage/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../vendor_landpage/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../vendor_landpage/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../vendor_landpage/remixicon/remixicon.css" rel="stylesheet">
  <link href="../vendor_landpage/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../css/style_landing.css" rel="stylesheet">

</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center header-transparent">
    <div class="container d-flex align-items-center justify-content-between">

      <div class="logo">
        <h1><a href="index.html"><span>CarLink</span></a></h1>
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">Sobre</a></li>
          <li><a class="nav-link scrollto" href="#pricing">Preço</a></li>
          <li><a class="nav-link scrollto" href="#contact">Contato</a></li>
          <li><a class="nav-link scrollto" href="#Login" onclick="redirectToLogin()">logar</a></li>
        </ul>


        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero">

    <div class="container">
      <div class="row justify-content-between">
        <div class="col-lg-7 pt-5 pt-lg-0 order-2 order-lg-1 d-flex align-items-center">
          <div data-aos="zoom-out">
            <h1><span>CARLINK</span></h1>
            <h2>Um software que veio para revolucionar as oficinas</h2>

          </div>
        </div>
        <div class="col-lg-4 order-1 order-lg-2 hero-img" data-aos="zoom-out" data-aos-delay="300">
          <img src="../img_landpage/img_CarLink-removebg-preview-C.png" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>

    <svg class="hero-waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
      viewBox="0 24 150 28 " preserveAspectRatio="none">
      <defs>
        <path id="wave-path" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z">
      </defs>
      <g class="wave1">
        <use xlink:href="#wave-path" x="50" y="3" fill="rgba(255,255,255, .1)">
      </g>
      <g class="wave2">
        <use xlink:href="#wave-path" x="50" y="0" fill="rgba(255,255,255, .2)">
      </g>
      <g class="wave3">
        <use xlink:href="#wave-path" x="50" y="9" fill="#fff">
      </g>
    </svg>

  </section><!-- End Hero -->

  <main id="main">
    <!-- ======= Details Section ======= -->
    <section id="about" class="details">
      <div class="container">

        <div class="row content">
          <div class="col-md-4 justify-content-center align-items-center d-flex" data-aos="fade-right">
            <img src="../img_landpage/pexels-pixabay-162553.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-md-8 pt-5 order-2 order-md-1" data-aos="fade-up">
            <h3>Temos uma solução para os seus problemas dentro da sua oficina.</h3>
            <p class="fst-italic">
              Parece que sua oficina está uma bagunça?
            </p>
            <ul>
              <li><i class="bi bi-x"></i>Dificuldade em agendar e controlar os serviços de forma eficiente.</li>
              <li><i class="bi bi-x"></i>Perda de tempo com tarefas manuais e repetitivas.</li>
              <li><i class="bi bi-x"></i>Dificuldade em acompanhar o histórico de serviços por cliente e veículo.</li>
              <li><i class="bi bi-x"></i>Dificuldade em acompanhar o andamento dos serviços e muitos outros.</li>
            </ul>
            <p>
              Nós da CarLink estamos comprometidos em ajudar sua oficina a alcançar resultados extraordinários.
            </p>
          </div>
        </div>

        <div class="row content">
          <div class="col-md-4 order-1 order-md-2 justify-content-center align-items-center d-flex"
            data-aos="fade-left">
            <img src="../img_landpage/pexels-maxchen2k-18090279.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-md-8 pt-4" data-aos="fade-up">
            <h3>Quais são nossos objetivos</h3>
            <p class="fst-italic">
              Para melhorar as suas oficinas cada vez mais.
            </p>
            <ul>
              <li><i class="bi bi-check"></i>Agendar e controlar serviços de forma eficiente.</li>
              <li><i class="bi bi-check"></i>Controlar o fluxo de caixa e financeiro.</li>
              <li><i class="bi bi-check"></i>Acompanhar o histórico de serviços por cliente e veículo.</li>
              <li><i class="bi bi-check"></i>Obter relatórios e indicadores de desempenho e muito mais.</li>
            </ul>
            <p>
              Trazendo assim um ambiente de trabalho mais organizado e com um ótimo desempenho profissional dentro das
              oficinas.
            </p>
          </div>

        </div>

        <div class="row content">
          <div class="col-md-4 mb-20px justify-content-center align-items-center d-flex" data-aos="fade-right">
            <img src="../img_landpage/img_mecanico.jpeg" class="img-fluid w-100" alt="">
          </div>

          <div class="col-md-8 pt-5" data-aos="fade-up">
            <h3>Venha fazer parte da CarLink e junte-se ao futuro das oficinas</h3>
            <p>Na CarLink, estamos comprometidos em fornecer as ferramentas e soluções necessárias para
               transformar sua oficina em um ambiente altamente eficiente e inovador.
                Ao se juntar a nós, você terá acesso a uma série de benefícios como</p>
            <ul>
              <li><i class="bi bi-check"></i>Acesso a tecnologias de ponta para melhorar a eficiência operacional.</li>
              <li><i class="bi bi-check"></i>Suporte especializado para otimizar processos e aumentar a produtividade.</li>
              <li><i class="bi bi-check"></i>Treinamento personalizado para aprimorar as habilidades da equipe e oferecer um serviço de alta qualidade.</li>
            </ul>
            <p>
              Junte-se a nós hoje e faça parte da revolução nas oficinas automotivas!
            </p>
            <p>
             Entre em contato conosco para saber mais.
            </p>
          </div>
        </div>


      </div>
    </section><!-- End Details Section -->


    <!-- ======= Counts Section ======= -->
    <section id="counts" class="counts">
      <div class="container">

        <div class="row" data-aos="fade-up">

          <div class="col-lg-3 col-md-6">
            <div class="count-box">
              <i class="bi bi-emoji-smile"></i>
              <span data-purecounter-start="0" data-purecounter-end="50" data-purecounter-duration="1"
                class="purecounter"></span>
              <p>clientes satisfeitos</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-md-0">
            <div class="count-box">
              <i class="bi bi-houses-fill"></i>
              <span data-purecounter-start="0" data-purecounter-end="54" data-purecounter-duration="1"
                class="purecounter"></span>
              <p>Oficinas parceiras</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
            <div class="count-box">
              <i class="bi bi-headset"></i>
              <span data-purecounter-start="0" data-purecounter-end="1500" data-purecounter-duration="1"
                class="purecounter"></span>
              <p>Horas de suporte</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
            <div class="count-box">
              <i class="bi bi-people"></i>
              <span data-purecounter-start="0" data-purecounter-end="4" data-purecounter-duration="1"
                class="purecounter"></span>
              <p>Trabalhadores</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Counts Section -->



    <!-- ======= Pricing Section ======= -->
    <section id="pricing" class="pricing">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2>Preço</h2>
          <p>Check nossos Preços</p>
        </div>

        <div class="row" data-aos="fade-left">

          <div class="col-lg-4 col-md-6 mt-4 mt-md-0">
            <div class="box featured" data-aos="zoom-in" data-aos-delay="200">
              <h3>Plano Bronze</h3>
              <h4><sup>$</sup>49.99</h4>
              <ul>
                <li>Até 5 usuários</li>
                <li>Registro de manutenção</li>
                <li>Histórico de serviços</li>
                <li>Regitro de notas fiscais</li>
                <li>Suporte online</li>
              </ul>
              <div class="btn-wrap">
                <a href="#" class="btn-buy">Saiba mais</a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mt-4 mt-lg-0">
            <div class="box" data-aos="zoom-in" data-aos-delay="300">
              <h3>Plano Silver</h3>
              <h4><sup>$</sup>69.99</h4>
              <ul>
                <li>Até 20 usuários</li>
                <li>Registro de manutenção</li>
                <li>Histórico de serviços</li>
                <li>Regitro de notas fiscais</li>
                <li>Suporte online</li>
                <li>Api para preenchimento</li>
                <li>Gerar relatorios impressos</li>

              </ul>
              <div class="btn-wrap">
                <a href="#" class="btn-buy">Saiba mais</a>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mt-4 mt-lg-0">
            <div class="box" data-aos="zoom-in" data-aos-delay="400">
              <span class="advanced">Especial</span>
              <h3>Plano Gold</h3>
              <h4><sup>$</sup>99.99+</h4>
              <ul>
                <li>Usuários ilimitado</li>
                <li>Registro de manutenção</li>
                <li>Histórico de serviços</li>
                <li>Regitro de notas fiscais</li>
                <li>Suporte online</li>
                <li>Api para preenchimento</li>
                <li>Banco compartilhado</li>
                <li>Personalizar interface</li>
                <li>Sistema de backup</li>
              </ul>
              <div class="btn-wrap">
                <a href="#" class="btn-buy">Saiba mais</a>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Pricing Section -->


    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title text-center" data-aos="fade-up">
          <h2>Contato</h2>
          <p>Nosso contato</p>
        </div>

        <div class="row">

          <div class="col-lg-6" data-aos="fade-right" data-aos-delay="100">

            <div class="info justify-content-end align-items-end d-flex">

              <div class="email ">
                <i class="bi bi-envelope "></i>
                <h4>Email:</h4>
                <p>info@exemplo.com</p>
              </div>


            </div>

          </div>

          <div class="col-lg-6" data-aos="fade-right" data-aos-delay="100">

            <div class="info ">

              <div class="phone">
                <i class="bi bi-phone "></i>
                <h4>Telefone:</h4>
                <p>(12) 5589 55488</p>
              </div>

            </div>

          </div>

        </div>

      </div>
    </section>


    <!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>CarLink</span></strong>. Todos os direitos reservados
      </div>
      <div class="credits">
        Projetado por CarLink
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
      class="bi bi-arrow-up-short"></i></a>
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="../vendor_landpage/purecounter/purecounter_vanilla.js"></script>
  <script src="../vendor_landpage/aos/aos.js"></script>
  <script src="../vendor_landpage/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../vendor_landpage/glightbox/js/glightbox.min.js"></script>
  <script src="../vendor_landpage/swiper/swiper-bundle.min.js"></script>
  <script src="../vendor_landpage/php-email-form/validate.js"></script>
  <script> 
    function redirectToLogin() {
        window.location.href = "/Paginas/CarLink_Login.aspx";
    } 
    </script>

  <!-- Template Main JS File -->
  <script src="../js_landpage/main.js"></script>

</body>

</html>