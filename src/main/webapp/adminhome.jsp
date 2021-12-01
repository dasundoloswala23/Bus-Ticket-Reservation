<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>


   <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords" content="Bootstrap, Landing page, Template, Registration, Landing">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="author" content="Grayrids">
    <title>Admin Homepage </title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="CSS/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/line-icons.css">
    <link rel="stylesheet" href="CSS/owl.carousel.css">
    <link rel="stylesheet" href="CSS/owl.theme.css">
    <link rel="stylesheet" href="CSS/nivo-lightbox.css">
    <link rel="stylesheet" href="CSS/animate.css">
    <link rel="stylesheet" href="CSS/color-switcher.css">
    <link rel="stylesheet" href="CSS/main.css">    
    <link rel="stylesheet" href="CSS/responsive.css">
    

</head>
<body>

	 <body>
    <!-- Header Section Start -->
    <header id="slider-area">  
      <nav class="navbar navbar-expand-md fixed-top scrolling-navbar bg-white">
        <div class="container">          
          <a class="navbar-brand" href="index.html"><span class="fas fa-bus"></span>MJJT Reservation</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <i class="lni-menu"></i>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto w-100 justify-content-end">
              <li class="nav-item">
                <a class="nav-link page-scroll" href="slider-area">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link page-scroll" href="#">Services</a>
              </li>  
                     
              <li class="nav-item">
                <a class="nav-link page-scroll" href="adminlogin.jsp">Logout</a>
              </li> 
               
            </ul>              
          </div>
        </div>
      </nav> 

      <div id="carousel-area">
        <div id="carousel-slider" class="carousel slide carousel-fade" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-slider" data-slide-to="1"></li>
            <li data-target="#carousel-slider" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img src="img/slider/city12.jpg" alt="" >
              <div class="carousel-caption text-left"> 
                <h2 class="wow fadeInRight" data-wow-delay="0.4s">Welcome</h2>
                <h4 class="wow fadeInRight" data-wow-delay="0.6s">Make a change as you like</h4>
                <a href="#" class="btn btn-lg btn-border wow fadeInRight" data-wow-delay="1.2s">Get Started!</a>
              </div>
            </div>
            <div class="carousel-item">
              <img src="img/slider/city11.jpg" alt="">
              <div class="carousel-caption text-center">
                <h2 class="wow bounceIn" data-wow-delay="0.6s">Adding Features</h2> 
                <a href="#" class="btn btn-lg btn-common btn-effect wow fadeInUp" data-wow-delay="1.2s">View Works</a>
              </div>
            </div>
            <div class="carousel-item">
              <img src="img/slider/city13.jpg" alt="">
              <div class="carousel-caption text-center">
                <h2 class="wow fadeInRight" data-wow-delay="0.6s">Make few changes</h2> 
                <a href="#" class="btn btn-lg btn-border wow fadeInUp" data-wow-delay="0.9s">Try some</a>
              </div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#carousel-slider" role="button" data-slide="prev">
            <span class="carousel-control" aria-hidden="true"><i class="lni-chevron-left"></i></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carousel-slider" role="button" data-slide="next">
            <span class="carousel-control" aria-hidden="true"><i class="lni-chevron-right"></i></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>  

    </header>
    
    <section id="services" class="section">
      <div class="container">
        <div class="section-header">          
          <h2 class="section-title">Our Services</h2>
          
          <p class="section-subtitle"></p>
        </div>
        <div class="row">
		 <div class="col-lg-4 col-md-6 col-xs-12">
            <div class="item-boxes services-item wow fadeInDown" data-wow-delay="0.4s">
              <a href="adminhome.jsp">
              <h4>Edit Bus</h4>
              <p>You can edit/delete bus details</p>
              </a>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-xs-12">
            <div class="item-boxes services-item wow fadeInDown" data-wow-delay="0.2s">
              <a href="adminhome.jsp">
              <h4>Add Bus</h4>
              <p>You can add new bus to our database</p>
              </a>
            </div>
          </div>         
          <div class="col-lg-4 col-md-6 col-xs-12">
          <a href="route-list.jsp">
            <div class="item-boxes services-item wow fadeInDown" data-wow-delay="0.6s">
              <h4>Edit Route</h4>
              <p>You can edit/delete route details</p>
            </div>
          </div>
        </div>        
           <div class="row">
		 <div class="col-lg-4 col-md-6 col-xs-12">
            <div class="item-boxes services-item wow fadeInDown" data-wow-delay="0.4s">
              <a href="adminhome.jsp">
              <h4>Add Route</h4>
              <p>You can add new route to our database</p>
              </a>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-xs-12">
            <div class="item-boxes services-item wow fadeInDown" data-wow-delay="0.2s">
              <a href="adminhome.jsp">
              <h4>Add Driver</h4>
              <p>You can add new driver to our database</p>
              </a>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-xs-12">
          <a href="deleteDriverList.jsp">
            <div class="item-boxes services-item wow fadeInDown" data-wow-delay="0.6s">
              <h4>Edit Driver</h4>
              <p>You can edit/delete driver details</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    <footer>
      <section class="footer-Content">
        <div class="container">
          <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 col-mb-12">
              <h3>MJTT Reservation</h3>
              <div class="textwidget">
                <p>Our traveling facilities are the best</p>
              </div>
              <ul class="footer-social">
                <li><a class="facebook" href="#"><i class="lni-facebook-filled"></i></a></li>
                <li><a class="twitter" href="#"><i class="lni-twitter-filled"></i></a></li>
                <li><a class="linkedin" href="#"><i class="lni-linkedin-fill"></i></a></li>
                <li><a class="google-plus" href="#"><i class="lni-google-plus"></i></a></li>
              </ul> 
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 col-mb-12">
              <div class="widget">
                <h3 class="block-title">Short Link</h3>
                <ul class="menu">
                  <li><a href="#">Service</a></li>
                  <li><a href="#">Wish list</a></li>
                  <li><a href="#">Help</a></li>
                  <li><a href="#">Advance Search</a></li>
                </ul>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 col-mb-12">
              <div class="widget">
                <h3 class="block-title">Contact Us</h3>
                <ul class="contact-footer">
                  <li>
                    <strong>Phone :</strong> <span>+94 1 123 456 789</span>
                  </li>
                  <li>
                    <strong>E-mail :</strong> <span><a href="#">mjtt@reservation.com</a></span>
                  </li>
                </ul> 
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-6 col-mb-12">
              <div class="widget">

                <ul class="instagram-footer">
                  <li><a href="#"><img src="img/instagram/b2.jpg" alt=""></a></li>
                  <li><a href="#"><img src="img/instagram/b6.jpg" alt=""></a></li>
                  <li><a href="#"><img src="img/instagram/b3.jpg" alt=""></a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </section>
      
  

    <script src="js/jquery-min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/color-switcher.js"></script>
    <script src="js/jquery.mixitup.js"></script>
    <script src="js/nivo-lightbox.js"></script>
    <script src="js/owl.carousel.js"></script>    
    <script src="js/jquery.stellar.min.js"></script>    
    <script src="js/jquery.nav.js"></script>    
    <script src="js/scrolling-nav.js"></script>    
    <script src="js/jquery.easing.min.js"></script>     
    <script src="js/wow.js"></script> 
    <script src="js/jquery.vide.js"></script>
    <script src="js/jquery.counterup.min.js"></script>    
    <script src="js/jquery.magnific-popup.min.js"></script>    
    <script src="js/waypoints.min.js"></script>    
    <script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>   
    <script src="js/main.js"></script>
    
</body>
</html>