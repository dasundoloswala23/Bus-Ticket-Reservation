<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="model.Bus" %>
<%@page import="model.Member"%>
<%@page import="Dao.MemberDao"%>
<%@page import="Dao.BusDao" %>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
      <title>MJTT Reservations</title>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      
	  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">	  
	  <!-- styles -->
      <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
      <!-- fontawesome css -->
      <link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
      <!-- revolution slider css -->
      <link rel="stylesheet" href="plugins/revolution/css/settings.css">
      <link rel="stylesheet" href="plugins/revolution/css/layers.css">
      <link rel="stylesheet" href="plugins/revolution/css/navigation.css">
      <!-- jQuery ui css -->
      <link href="plugins/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet">
      <!-- owl carousel css -->
      <link rel="stylesheet" href="plugins/owl.carousel-2/assets/owl.carousel.css">
      <link rel="stylesheet" href="plugins/owl.carousel-2/assets/owl.theme.default.min.css">
      <!-- gallery -->
      <link rel="stylesheet" href="plugins/lightGallery/dist/css/lightgallery.min.css">
      <!-- animate css -->
      <link rel="stylesheet" href="plugins/animate.min.css">
      <!-- bxslider -->
      <link rel="stylesheet" href="plugins/bx-slider/jquery.bxslider.css">
      <!-- datetimepicker css -->
      <link rel="stylesheet" href="plugins/datetimepicker/jquery.datetimepicker.min.css">
      <!-- master stylesheet -->
      <link rel="stylesheet" href="CSS/style.css">
      <!-- responsive stylesheet -->
      <link rel="stylesheet" href="CSS/responsive.css">
	  <!-- header -->
      <link rel="stylesheet" href= "CSS/header.css">  
      <!-- footer -->
      <link rel="stylesheet" href="CSS/footer.css">  
      <script src="https://kit.fontawesome.com/57c659bf44.js" crossorigin="anonymous"></script>
        <script>
            !function (f, b, e, v, n, t, s)
            {
                if (f.fbq)
                    return;
                n = f.fbq = function () {
                    n.callMethod ?
                            n.callMethod.apply(n, arguments) : n.queue.push(arguments)
                };
                if (!f._fbq)
                    f._fbq = n;
                n.push = n;
                n.loaded = !0;
                n.version = '2.0';
                n.queue = [];
                t = b.createElement(e);
                t.async = !0;
                t.src = v;
                s = b.getElementsByTagName(e)[0];
                s.parentNode.insertBefore(t, s)
            }(window, document, 'script', '../../connect.facebook.net/en_US/fbevents.js');
            fbq('init', '348669228917290');
            fbq('track', 'PageView');
        </script>
   </head>
   <body>
      <%
         int userid = (int) request.getSession(false).getAttribute("userID");
		
         MemberDao memberDao = new MemberDao();
         Member member = memberDao.getUserByID(userid);

         BusDao busdao = new BusDao();
   	  	 ArrayList<String> fromlist = busdao.getfromlist();
   	  ArrayList<String> tolist = busdao.gettolist();   	 	
   	%>
	   <!--body-->
      <div class="main-content">
	    <!-- header and navbar -->
	    <!-- Top navbar -->
	    <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
	      <div class="container-fluid">
	        <!-- logo -->
	        <a class="logo d-lg-inline-block" href="homepage.jsp"><img src="pictures/logo.png" width="130px" height="50px"></a>
	        <!-- links -->
	        <ul class="navbar-nav align-items-center d-md-flex">
			  <li class="nav-item">
                <div style="font-size: 1.8rem"><a class="nav-link" href="homepage.jsp" role="button">Home</a></div>
              </li>
              <li class="nav-item">
                <div style="font-size: 1.8rem"><a class="nav-link" href="myreservation.jsp" role="button">My reservations</a></div>
              </li>
              <li class="nav-item">
                <div style="font-size: 1.8rem"><a class="nav-link" href="contactus.jsp" role="button">Contact Us</a></div>
              </li>
              <li class="nav-item">
                <div style="font-size: 1.8rem"><a class="nav-link" href="feedback.jsp" role="button">Feedback</a></div>
              </li>
            </ul>
	        <!-- User -->
	       <ul class="navbar-nav align-items-center d-md-flex">
	          <li class="nav-item dropdown">
	            <a class="nav-link pr-0 dropbtn" href="#" role="button" aria-haspopup="true" aria-expanded="false">
	              <div class="user">
	                <span class="avatar">
	                  <img alt="Image placeholder" src="data:image/gif;base64,<%=member.getProfilepic()%>">
	                </span>
	                <div class="username d-lg-block" style="font-size: 1.5rem">
	                  <span> <%=member.getUsername()%> <i class="fas fa-caret-down"></i></span>
	                </div>
	              </div>
	            </a>
				<div class="dropdown-content">
					<a href="user.jsp" style="font-size: 1.5rem"><i class="fas fa-user-alt"></i>  View Profile</a>
					<a href="login.jsp" style="font-size: 1.5rem"><i class="fas fa-sign-out-alt"></i> Logout</a>
				</div>
	          </li>
	        </ul>
	      </div>
	    </nav>
	    
	    <!-- Header bg image -->
	    <div class="header pt-lg-8" style="min-height: 100px; background-color: transparent; background-size: cover; background-position: center top;">
	    </div>
	    <!-- Page content -->
	    <div class="container-fluid" style="margin-top: -16rem">
			<!-- SLIDE SHOW AND THE TEXT --> 

   		<section class="rev_slider_wrapper slider1">
         <div id="slider1" class="rev_slider"  data-version="5.0">
            <ul>
            <!-- Banner01 --> 
              <li data-transition="zoomout" data-slotamount="default"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-rotate="0"  data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off" >
                  <img src="pictures/slider/banner-1.jpg"  alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina/>
                  <div class="tp-caption tp-resizeme banner-caption-h1 text-center"
                       data-x="center" data-hoffset="-220"
                       data-y="center" data-voffset="-30"
                       data-whitespace="nowrap"
                       data-transform_idle="o:1;"

                       data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;"
                       data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                       data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                       data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                       data-start="1000"
                       data-splitin="chars"
                       data-splitout="none"
                       data-responsive_offset="on"

                       data-elementdelay="0.05" >
                     TRAVEL TO      
                  </div>
                  <div class="tp-caption tp-resizeme banner-caption-h1 text-center" style="color:#43f4a7;"
                       data-x="center" data-hoffset="120"
                       data-y="center" data-voffset="-30"
                       data-whitespace="nowrap"
                       data-transform_idle="o:1;"

                       data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;"
                       data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                       data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                       data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                       data-start="1500"
                       data-splitin="chars"
                       data-splitout="none"
                       data-responsive_offset="on"

                       data-elementdelay="0.05" >
                     COLOMBO
                  </div>
                </li>
				
	  			<!-- Banner02 --> 				
              <li data-transition="slidingoverlayhorizontal" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-rotate="0" data-saveperformance="off" data-description="">

                  <img src="pictures/slider/banner-2.jpg"  alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5" class="rev-slidebg" data-no-retina>
                  <div class="tp-caption sfl tp-resizeme banner-caption-h1 "
                       data-x="center" data-hoffset="-200"
                       data-y="center" data-voffset="-30"
                       data-transform_idle="o:1;"
                       data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;"
                       data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
                       data-start="1000"
                       data-splitin="none"
                       data-splitout="none" >
                     TRAVEL TO 
                  </div>
                  <div class="tp-caption sfl tp-resizeme banner-caption-h1 color-primary "
                       data-x="center" data-hoffset="120"
                       data-y="center" data-voffset="-30"
                       data-transform_idle="o:1;"
                       data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;"
                       data-transform_out="x:left(R);s:1000;e:Power3.easeIn;s:1000;e:Power3.easeIn;"
                       data-start="1000"
                       data-splitin="none"
                       data-splitout="none" >
                     JAFFNA
				   </div>
               </li>
				
	  			<!-- Bannner03 --> 				
			  <li data-transition="zoomout" data-slotamount="default"  data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut" data-masterspeed="2000"  data-rotate="0"  data-fstransition="fade" data-fsmasterspeed="1500" data-fsslotamount="7" data-saveperformance="off" >
                  <img src="pictures/slider/banner-3.jpg"  alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina/>
                  <div class="tp-caption tp-resizeme banner-caption-h1 text-center"
                       data-x="center" data-hoffset="-220"
                       data-y="center" data-voffset="-30"
                       data-whitespace="nowrap"
                       data-transform_idle="o:1;"

                       data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;"
                       data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                       data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                       data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                       data-start="1000"
                       data-splitin="chars"
                       data-splitout="none"
                       data-responsive_offset="on"

                       data-elementdelay="0.05" >
                     TRAVEL   
                  </div>
                  <div class="tp-caption tp-resizeme banner-caption-h1 text-center" style="color:#7e43f4;"
                       data-x="center" data-hoffset="140"
                       data-y="center" data-voffset="-30"
                       data-whitespace="nowrap"
                       data-transform_idle="o:1;"

                       data-transform_in="x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power4.easeInOut;"
                       data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                       data-mask_in="x:0px;y:0px;s:inherit;e:inherit;"
                       data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                       data-start="1500"
                       data-splitin="chars"
                       data-splitout="none"
                       data-responsive_offset="on"

                       data-elementdelay="0.05" >
                     ANYWHERE
                  </div>
                </li>
            </ul>
         </div>
       </section>
       <section class="filter-tour">
         <div class="filter-wrap">
         
		    <!-- Reservation Form--> 
           <form action = "newReservationServlet" method ="post" class="form-inline filter-box">		
             <div class="form-group">
                  <select name="from" class="zt-control" required>
                  		<option value="">From:</option>
                        <%for(String from: fromlist){%>                        
                        <option value=<%=from%>><%=from%></option>
                        <%} %>
                  </select>
				  <span class="select-arrow"></span>
				</div>   
				<div class="form-group">
				  <select name="to" class="zt-control" required>
                        <option value="">To:</option>
                        <%for(String to: tolist){%>                        
                        <option value=<%=to%>><%=to%></option>
                        <%} %>
                  </select>
                  <span class="select-arrow"></span>
               </div>
               <div class="form-group">
                  <div class="input-icon">
                     <input type="date" name="date"  placeholder="Journey Date" value="Journey Date" required />
                     <div class="input-addon"><span class="fa fa-calendar"></span></div>
                  </div>
               </div>

               <div class="form-group">
                  <input type="number" name="passengers"class="zt-control"  placeholder="Passengers" min="1" max="15" required>
               </div>
               <button type="submit" class="btn zt-primary btn-lg" >RESERVE NOW</button>
            </form>	 
        </div>
       </section>
	   
	    <!-- Welcome Message section --> 
       <section class="choose-tour sec-padding sec-padding-top-large">
         <div class="zt-container">
            <div class="sec-title text-center sec-title-padding">
               <h2>Welcome to JAVA RESERVATIONS online services!</h2>
			<h5>Plan journey, Reserve bus seats, Reach destination.</h5><br>
               <span class="tagline">Want your public transportation and online bus ticket booking issues sorted? We at JAVA Rservations will attend to all your online bus seat reservations, booking requirements and make sure that you have a safe and a comfortable journey. A unique platform of online bus booking Sri Lanka has to offer, we have made it easy for you to reserve your seats to avoid hassle and inconveniences, reach your destination with the comfort that you deserve. Happy Journeys!</span>
			<br><br><br><br><br>
			<h2 class="col-md-offset-1 col-md-10">Why Book with Java Reservation?</h2>
			<br>
            </div>
			<!-- Services SEction--> 
            <div class="row">
               <div class="col-md-4 col-sm-12 col-xs-12">
                  <div class="box-awesome-service">
                     <div class="box-icon">
                        <img src="pictures/search-96.png" alt="">
                     </div>
                     <div class="box-text">
                        <h3>More Choices</h3>
                        <p class="col-md-10 col-md-offset-1">We give you maximum choices across all the routes to choose your bus.</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-12 col-xs-12">
                  <div class="box-awesome-service">
                     <div class="box-icon">
                        <img src="pictures/support-96.png" alt="">
                     </div>
                     <div class="box-text">
                        <h3>Customer Support</h3>
                        <p class="col-md-offset-2 col-md-8">We help you to make your journey better.</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-12 col-xs-12">
                  <div class="box-awesome-service">
                     <div class="box-icon">
                        <img src="pictures/ticket-96.png" alt="">
                     </div>
                     <div class="box-text">
                        <h3>Best Price</h3>
                        <p class="col-md-offset-2 col-md-8">We always offer best bus ticket price in the market.</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
       </section>
	   
	    <!-- Popular Destination SEction --> 
	    <br><br>
       <section class="popular-services sec-padding">
         <div class="zt-container">
            <div class="sec-title text-center sec-title-padding">
               <h2 class="col-md-offset-3 col-md-6">POPULAR DESTINATIONS</h2>
               <p>&nbsp;</p>
               <p>&nbsp;</p>
              <p class="col-md-offset-2 col-md-8"><span class="tagline">List of most popular destinations booked by travellers island-wide.</span></p>
            </div>
            <div class="row">
               <div class="col-md-4 col-sm-6 col-xs-6">
                  <div class="tour-list-box text-center zt-overlay zt-overlay-hover">
                     <div class="img-box position-relative">
                        <div class="zt-overlay-panel zt-overlay-background zt-overlay-slide-top zt-flex zt-flex-center zt-flex-middle text-center">

                        </div>
                        <img src="pictures/thumbnails/colombo.jpg" alt="" style="width:480px;height:340px;"/>
                     </div>
                     <div class="box-content">
                        <h3>COLOMBO</h3>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-6 col-xs-6">
                  <div class="tour-list-box text-center zt-overlay zt-overlay-hover">
                     <div class="img-box position-relative">
                        <div class="zt-overlay-panel zt-overlay-background zt-overlay-slide-top zt-flex zt-flex-center zt-flex-middle text-center">
                        </div>
                        <img src="pictures/thumbnails/galle.jpg" alt="" style="width:480px;height:340px;"/>
                     </div>
                     <div class="box-content">
                        <h3>GALLE</h3>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-6 col-xs-6">
                  <div class="tour-list-box text-center zt-overlay zt-overlay-hover">
                     <div class="img-box position-relative">
                        <div class="zt-overlay-panel zt-overlay-background zt-overlay-slide-top zt-flex zt-flex-center zt-flex-middle text-center">
                        </div>
                        <img src="pictures/thumbnails/jaffna.jpg" alt="" style="width:480px;height:340px;"/>
                     </div>
                     <div class="box-content">
                        <h3>JAFFNA</h3>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-6 col-xs-6">
                  <div class="tour-list-box text-center zt-overlay zt-overlay-hover">
                     <div class="img-box position-relative">
                        <div class="zt-overlay-panel zt-overlay-background zt-overlay-slide-top zt-flex zt-flex-center zt-flex-middle text-center">
                        </div>
                        <img src="pictures/thumbnails/kandy.jpg" alt="" style="width:480px;height:340px;"/>
                     </div>
                     <div class="box-content">
                        <h3>KANDY</h3>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-6 col-xs-6">
                  <div class="tour-list-box text-center zt-overlay zt-overlay-hover">
                     <div class="img-box position-relative">
                        <div class="zt-overlay-panel zt-overlay-background zt-overlay-slide-top zt-flex zt-flex-center zt-flex-middle text-center">
                        </div>
                        <img src="pictures/thumbnails/negombo.jpg" alt="" style="width:480px;height:340px;" />
                     </div>
                     <div class="box-content">
                        <h3>NEGAMBO</h3>
                     </div>
                  </div>
               </div>
               <div class="col-md-4 col-sm-6 col-xs-6">
                  <div class="tour-list-box text-center zt-overlay zt-overlay-hover">
                     <div class="img-box position-relative">
                        <div class="zt-overlay-panel zt-overlay-background zt-overlay-slide-top zt-flex zt-flex-center zt-flex-middle text-center">
                        </div>
                        <img src="pictures/thumbnails/trincomalee.jpg" alt="" style="width:480px;height:340px;"  />
                     </div>
                     <div class="box-content">
                        <h3>TRINCOMALEE</h3>
                     </div>
                  </div>
               </div>
            </div>
         </div>
       </section>
      
        <!-- Our Partner --> 
       <section class="our-partners sec-padding">
         <div class="zt-container">
            <div class="sec-title text-center sec-title-padding">
               <h2 class="col-md-offset-1 col-md-10">our partners</h2>
               <p>&nbsp;</p>
               <p>&nbsp;</p>
               <p>Partnered Bus Service Providers</p>
			   <p>We provide full fledged online bus booking platform to buy and sell bus seats. The passenger can purchase bus tickets online and in return to confirm the seat reservation, a text message with the details of travel will be be sent.</p>
				<p>With the efficient bus reservation system from BusSeat.lk, plan your journey early, save your valuable time in buying bus tickets, avoid waiting in long queues, find to your boarding place easily and enjoy your happy journey with comfort.</p>
            </div>
            <div class="our-partners-carousel">
               <div class="owl-carousel">
                  <div class="item">
                     <img src="pictures/sponsor/aaa.png" alt=""/>
                  </div>
                  <div class="item">
                     <img src="pictures/sponsor/bbb.png" alt=""/>
                  </div>
                  <div class="item">
                     <img src="pictures/sponsor/ccc.png" alt=""/>
                  </div>
				  <div class="item">
                     <img src="pictures/sponsor/ddd.png" alt=""/>
                  </div>
                  <div class="item">
                     <img src="pictures/sponsor/eee.png" alt=""/>
                  </div>
                  <div class="item">
                     <img src="pictures/sponsor/fff.png" alt=""/>
                  </div>
               </div>
            </div>
         </div>
        </section>
   </div>		
   <!-- Site footer -->
   <footer>
		<div class="footer-distributed"><div class="footer-left" > 
			<img src = "pictures/footerlogo.png" width="220px" height="90px">
			 <p class="footer-links">
			 <p>Hotline: +9411 24526 95 | +9411 24526 94</p>
			 <p>Email: mjtt@gmail.com | info@mjttreservation.com</p>
			 </p>
			 <p class="footer-company-name">MJTT Reservation &copy; 2021</p>
		 </div>	 
		 
		 <div class="footer-center">
		 <br><br><br><br><br><br><br>
		<div class="field">    <a href="https://www.sliit.lk/" class="sns-btn sns-btn--twitter">
		        <i class="sns-btn__icon fab fa-twitter"></i>
		    </a>   
		    <a href="https://www.sliit.lk/" class="sns-btn sns-btn--facebook">
		        <i class="sns-btn__icon fab fa-facebook-f"></i>
		    </a>
		    <a href="https://www.sliit.lk/" class="sns-btn sns-btn--instagram">
		        <i class="sns-btn__icon fab fa-instagram"></i>
		    </a>
		</div>
		 	<div class="footer-icons" > 
		 	</div>
		 </div>
		 <div class="footer-right">
		 	<p class="footer-company-about">
		 	<span>About MJTT Reservation</span>
		 	<p>Your online portal to reserve Sri Lanka Transport Board passenger transit services, across Sri Lanka.</p>
	</footer>	 
	<!-- Footer End -->       

      <!-- JS -->
      <!-- jQuery js -->
      <script src="plugins/jquery/jquery-1.12.4.min.js"></script>
      <!-- bootstrap js -->
      <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
      <!-- jQuery ui js -->
      <script src="plugins/jquery-ui-1.12.1/jquery-ui.js"></script>
      <!-- owl carousel js -->
      <script src="plugins/owl.carousel-2/owl.carousel.min.js"></script>
      <!-- gallery js -->
      <script src="plugins/lightGallery/dist/js/lightgallery-all.min.js"></script>
      <script src="plugins/lightGallery/dist/js/jquery.mousewheel.min.js"></script>
      <!-- jQuery validation -->
      <script src="plugins/jquery-validation/dist/jquery.validate.min.js"></script>
      <!-- bxslider js -->
      <script src="plugins/bx-slider/jquery.bxslider.min.js"></script>
      <!-- datetimepicker js -->
      <script src="plugins/datetimepicker/jquery.datetimepicker.full.min.js"></script>
      <!-- revolution slider js -->
      <script src="plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
      <script src="plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
      <script src="plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
      <script src="plugins/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
      <script src="plugins/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
      <script src="plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
      <script src="plugins/revolution/js/extensions/revolution.extension.migration.min.js"></script>
      <script src="plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
      <script src="plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
      <script src="plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
      <script src="plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>

      <!-- theme custom js  -->
      <script src="JavaScript/main.js"></script>	
	
    </div>
   </body>
</html>
