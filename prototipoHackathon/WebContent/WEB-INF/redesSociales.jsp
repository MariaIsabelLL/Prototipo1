<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
 <!doctype html>
<!--[if IE 7 ]>    <html lang="en-gb" class="isie ie7 oldie no-js"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en-gb" class="isie ie8 oldie no-js"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en-gb" class="isie ie9 no-js"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en-gb" class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!--[if lt IE 9]> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
<title>MOIYA Educación en TICs</title>
<meta name="description" content="">
<meta name="author" content="WebThemez">
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<!--[if lte IE 8]>
		<script type="text/javascript" src="http://explorercanvas.googlecode.com/svn/trunk/excanvas.js"></script>
	<![endif]-->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/isotope.css" media="screen" />
<link rel="stylesheet" href="js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
<link href="css/animate.css" rel="stylesheet" media="screen">
<!-- Owl Carousel Assets -->
<link href="js/owl-carousel/owl.carousel.css" rel="stylesheet">
<link rel="stylesheet" href="css/styles.css" />
<!-- Font Awesome -->
<link href="font/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>
<header class="header">
  <div class="container">
    <nav class="navbar navbar-inverse" role="navigation">
      <div class="navbar-header">
        <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        <a href="#" class="navbar-brand scroll-top logo  animated bounceInLeft"><img src="images/moiya/Moiya2.jpeg" /></a> </div>
      <!--/.navbar-header-->
      <div id="main-nav" class="collapse navbar-collapse">
        <ul class="nav navbar-nav" id="mainNav">
          <li class="active" id="firstLink"><a href="#home" class="scroll-link">Home</a></li>
          <li><a href="#Features" class="scroll-link">Cursos</a></li>
          <li><a href="#aboutUs" class="scroll-link">Sobre nosotros</a></li>
          <!--<li><a href="#work" class="scroll-link">Sobre nosotros</a></li>
          <li><a href="#plans" class="scroll-link">Fees</a></li>
          <li><a href="#team" class="scroll-link">Management</a></li>-->
          <li><a href="#contactUs" class="scroll-link">Contáctanos</a></li>
        </ul>
      </div>
      <!--/.navbar-collapse--> 
    </nav>
    <!--/.navbar--> 
  </div>
  <!--/.container--> 
</header>
<!--/.header-->
<div id="#top"></div>
<section id="home">
  <div class="banner-container"> 
  	<div id="carousel" class="carousel slide carousel-fade" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carousel" data-slide-to="0" class="active"></li>
    <li data-target="#carousel" data-slide-to="1"></li>
    <li data-target="#carousel" data-slide-to="2"></li>
  </ol>
  <!-- Carousel items -->
  <div class="carousel-inner">
    <div class="active item"><img src="images/banner-bg.jpg" alt="banner" /></div>
    <div class="item"><img src="images/banner-bg2.jpg" alt="banner" /></div>
    <div class="item"><img src="images/banner-bg3.jpg" alt="banner" /></div>
  </div>
  <!-- Carousel nav -->
  <a class="carousel-control left" href="#carousel" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#carousel" data-slide="next">&rsaquo;</a>
</div>
	
  </div>  
  
  <div class="container hero-text2">        
		<div class="col-md-9">
		 
		<h1>BIENVENIDO: <font color="green">${msgArgument}</font></h1>
		<h2>Porqué usar MOIYA?</h1>
			<p>Porque es una plataforma que te ayudará a entender y poner en práctica las herramientas tecnológicas necesarias para que pueda realizar la educación virtual.  </p>   
		</div> 
  </div>
</section>
<section id="Features" class="page-section colord">
<h2>Qué quieres aprender hoy?</h2>
  <div class="container">
    <div class="row"> 
      <!-- item -->
      <div class="col-md-3 text-center"> 
	  <div class="box-item">
	  <i class="circle"><img src="images/moiya/interrogacion.jpg" alt="" /></i>
        <h3>Comenzar desde cero</h3>
        <p>Cree cursos de manera práctica y dinámica.</p>
      </div>
	   </div>
      <!-- end: --> 
      
      <!-- item -->
      <div class="col-md-3 text-center">
	  <div class="box-item">
	  <a href="Juego2">
	  <i class="circle"> <img src="images/moiya/Redes Sociales.png" alt="" /></i>
        <h3>Redes Sociales</h3>
        <p>Aprenda a manejar las redes sociales para comunicarse.</p>
        </a>
      </div>
	   </div>
      <!-- end: --> 
      
      <!-- item -->
      <div class="col-md-3 text-center">
	  <div class="box-item">
	  <i class="circle"> <img src="images/moiya/videollamada.jpg" alt="" /></i>
        <h3>VideoLlamadas</h3>        
        <p>Realice sesiones con sus alumnos y/o padres.</p>
      </div>
	   </div>
      <!-- end:-->
      
    </div>
    <div class="row"> 
      
      <!-- item -->
      <div class="col-md-3 text-center">
	  <div class="box-item">
	  <i class="circle"> <img src="images/moiya/nube.png" alt="" /></i>
        <h3>Nube</h3>        
        <p>Aprenda los conceptos de Nube.</p>
      </div>
	   </div>
      <!-- end:-->
      
      <!-- item -->
      <div class="col-md-3 text-center">
	  <div class="box-item">
	  <i class="circle"> <img src="images/moiya/avanzado.png" alt="" /></i>
        <h3>Avanzados</h3>        
        <p>Aprenda conceptos y técnicas más avanzadas.</p>
      </div>
	   </div>
      <!-- end:-->    
      
    </div>
  </div>
  <!--/.container--> 
</section>
<section id="aboutUs">
  <div class="container">
    <div class="heading text-center"> 
      <!-- Heading -->
      <h2>Sobre Nosotros</h2>
      <p>Somos un grupo multidisciplinario que quiere colaborar con mejorar la situación de la educación virtual en esta nueva realidad.</p>
    </div>
    
  </div>
</section> 
<footer>
<div class="container">
        <div class="row">
            <div class="col-md-3">
            	<div class="col">
                   <h4>Contáctanos</h4>
                   <ul>
                        <li>Phone: +22 342 2345 345 | Fax: +22 724 2342 343 </li>
                        <li>Email: <a href="mailto:info@example.com" title="Email Us">info@example.com</a></li>
                        <li>Skype: <a href="skype:my.test?call" title="Skype us">my-company</a></li>
                    </ul>
                 </div>
            </div>
            
            <div class="col-md-3">
            	<div class="col">
                    <h4>Mailing list</h4>
                    <p>Lorem ipsum dolor sit amet, ea eum labitur scsstie percipitoleat.</p>
                    <form class="form-inline">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Your email address...">
                            <span class="input-group-btn">
                                <button class="btn" type="button">Go!</button>
                            </span>
                        </div>
                    </form>
                </div>
            </div>
            
            <div class="col-md-3">
            	<div class="col col-social-icons">
                    <h4>Follow us</h4>
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-google-plus"></i></a>
                    <a href="#"><i class="fa fa-youtube-play"></i></a>
                    <a href="#"><i class="fa fa-flickr"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-skype"></i></a>
                    <a href="#"><i class="fa fa-pinterest"></i></a>
                </div>
            </div>

             <div class="col-md-3">
             	<div class="col">
                    <h4>Latest News</h4>
                    <p>
                    Lorem ipsum dolor labitur scsstie per sit amet, ea eum labitur scsstie percipitoleat.
                    <br><br>
                    <a href="#" class="btn">Get Mores!</a>
                    </p>
                </div>
            </div>
        </div>
         
    </div>
    
</footer>
<!--/.page-section-->
<section class="copyright">
  <div class="container">
    <div class="row">
      <div class="col-sm-12 text-center"> Copyright 2014 | All Rights Reserved - <a href="https://webthemez.com/tag/free" target="_blank">Free Templates</a> by WebThemez.com </div>
    </div>
    <!-- / .row --> 
  </div>
</section>
<a href="#top" class="topHome"><i class="fa fa-chevron-up fa-2x"></i></a> 

<!--[if lte IE 8]><script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script><![endif]--> 
<script src="js/modernizr-latest.js"></script> 
<script src="js/jquery-1.8.2.min.js" type="text/javascript"></script> 
<script src="js/bootstrap.min.js" type="text/javascript"></script> 
<script src="js/jquery.isotope.min.js" type="text/javascript"></script> 
<script src="js/fancybox/jquery.fancybox.pack.js" type="text/javascript"></script> 
<script src="js/jquery.nav.js" type="text/javascript"></script> 
<script src="js/jquery.fittext.js"></script> 
<script src="js/waypoints.js"></script> 
 <script src="contact/jqBootstrapValidation.js"></script>
 <script src="contact/contact_me.js"></script>
<script src="js/custom.js" type="text/javascript"></script> 
<script src="js/owl-carousel/owl.carousel.js"></script>
</body>
</html>
