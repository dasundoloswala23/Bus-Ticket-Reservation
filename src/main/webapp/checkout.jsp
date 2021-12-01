<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="model.Reservation"%>
<%@page import="model.Bus" %>
<%@page import="Dao.BusDao" %>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Member"%>
<%@page import="Dao.MemberDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Check Out</title>
      <!-- viewport meta -->
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- styles -->
      <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
      <!-- fontawesome css -->
      <link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
      <!-- flaticon css -->
      <link rel="stylesheet" href="plugins/flaticon/flaticon.css">
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
      <!-- skin stylesheet -->
      <link rel="stylesheet" href="CSS/skin/skin-default.css">
      <!-- favicon -->
      <link rel="shortcut icon" href="pictures/favicon.ico" />
	  <!-- header -->
      <link href="CSS/header.css" rel="stylesheet" type="text/css">
	   <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	   <script src="https://kit.fontawesome.com/57c659bf44.js" crossorigin="anonymous"></script>
	   <meta charset="UTF-8">
      <!-- footer -->
      <link rel="stylesheet" href="CSS/footer.css">  
      <script src="https://kit.fontawesome.com/57c659bf44.js" crossorigin="anonymous"></script>
          <!-- JS -->
      <!-- jQuery js -->
      <script src="plugins/jquery/jquery-1.12.4.min.js"></script>
      <!-- bootstrap js -->
      <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
      <!-- jQuery ui js -->
      <script src="plugins/jquery-ui-1.12.1/jquery-ui.js"></script>
      <!-- jQuery sticky js -->
      <script src="plugins/jquery.sticky-kit.min.js"></script>
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
      <script src="js/main.js"></script>
   </head>

   <body>
      <!--body-->
      <%   
         Reservation reservation = (Reservation)request.getAttribute("reservation");
   	   BusDao busdao = new BusDao();
   	   ArrayList<Bus> buslist = busdao.searchbus(reservation.getTo(), reservation.getFrom());
         int userid = (int) request.getSession(false).getAttribute("userID");
         MemberDao memberDao = new MemberDao();
         Member member = memberDao.getUserByID(userid);
         %>
  
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
                        <a href="user.jsp"><i class="fas fa-user-alt"></i>  View Profile</a>
                        <a href="login.jsp"><i class="fas fa-sign-out-alt"></i> Logout</a>
                     </div>
                  </li>
            </ul>
            </div>
         </nav>
         <!-- Header bg image -->
         <div class="header pt-lg-8" style="min-height: 50px; background-color: transparent;background-size: cover; background-position: center top;">
         </div>
         <!-- Page content -->
         <div class="" style="margin-top: -16rem">
            <!--Heading Checkout -->
            <section class="inner-banner">
               <div class="zt-container">
                  <div class="box clearfix">
                     <h2>Check Out</h2>
                  </div>
               </div>
            </section>
            <section class="checkout sec-padding">
               <div class="zt-container">
                  <div class="row">
                     <div class="col-md-8 col-sm-7 col-xs-12">
                        <br><br><br><br><br>
                        <!-- Available Bus Section -->   
                        <form action = "checkoutServlet" class="form" method ="post">                  
                           <div class="form">
                              <div class="checkout-content-wrap">  
                                 <div class="box box-payment">
                                    <div class="box-title">
                                    <h2><span class="sort">1</span> All available Buses</h2>    
                                    <%for(Bus bus: buslist){%>                                       
                                          <input type="radio" id="01" name="bus" value="<%=bus.getBusID()%>" required>
                                          <label for="01">Bus ID: <%=bus.getBusID() %> &nbsp;&nbsp;&nbsp;
                                          Bus Type: <%=bus.getType() %> &nbsp;&nbsp;&nbsp;
                                          From: <%=bus.getFrom() %> &nbsp;&nbsp;&nbsp;	                              	
                                          To: <%=bus.getTo() %>&nbsp;&nbsp;&nbsp;&nbsp;
                                          Time: <%=bus.getTime() %>
                                          </label></br>
                                          <label for ="amount">Ticket Price</label>
                                          <input type="text"  class="zt-control" id="amount" name="amount" value="<%=(bus.getPrice() * reservation.getPassengers())%>" readonly>
                                       <br><br>
                                    <%}%>
                                    <br>
                                    </div>
                                 </div>
                              </div>
                           </div>
                     
                           <!--Payment Info Section --> 
                           <br><br><br>
                           <div class="form">
                              <div class="checkout-content-wrap">  
                                 <div class="box box-payment">
                                    <div class="box-title">
                                       <h2><span class="sort">2</span> Payment Information</h2>
                                    </div>
                                    
                                    <div class="box-content">
                                          <ul class="list-social">
                                             <li><a href="#"><span class="icon icon-visa"></span></a></li>
                                             <li><a href="#"><span class="icon icon-mastercard"></span></a></li>
                                             <li><a href="#"><span class="icon icon-paypal"></span></a></li>
                                             <li><a href="#"><span class="icon icon-jbc"></span></a></li>
                                          </ul>
                                       
                                          <!--Res ID -->          
                                          <div class="row">                     
                                             <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label">Reservation ID</label>
                                                <input type ="text" name="resID" class="zt-control" value="<%=reservation.getReservationID() %>" readonly/>
                                             </div>
                                          </div> 

                                          <br><br><br><br>
                                          <!--Card Name -->
                                          <div class="row">  
                                             <div class="form-group">   
                                                <label class="control-label"> Name on Card <span class="text-danger">*</span></label>
                                                <input type ="text" name="card-name" class="zt-control" placeholder=" Name on Card " required />
                                             </div>
                                          </div>

                                          <!--Card Number -->  
                                          <div class="row">
                                             <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"> Card Number<span class="text-danger">*</span></label>
                                                <input type ="text" name="ID" class="zt-control" placeholder="Card Number" required />
                                             </div>
                                          </div> 

                                          <!--Security Code -->  
                                          <div class="row">
                                             <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label"> Security Code <span class="text-danger">*</span></label>
                                                <input type ="text" name="ID" class="zt-control" placeholder="CVV" required />
                                             </div>
                                          </div>

                                          <!--Expire M/Y --> 
                                          <div class="row">
                                             <div class="col-md-6 col-sm-6 col-xs-12">
                                                <label class="control-label">Expiration Date <span class="text-danger">*</span></label>
                                                <input type ="text" name="Exp" class="zt-control" placeholder="Month/Year" required/>
                                             </div>
                                          </div>

                                          <br><br><br><br>
                                          <button type="submit" class="btn zt-primary btn-lg btn-book">Proceed</button>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </form>
                     </div>

                     <br><br><br><br>
                     <!--Reservation Info -->
                     <div class="col-md-4 col-sm-5 col-xs-12">
                        <div class="checkout-sidebar-wrap sidebar-box" >
                           <div class="sidebar-header">
                              <h3 class="title">RESERVATION INFORMATION</h3>
                           </div>
                           <div class="sidebar-content">
                              <ul>
                                 <li>
                                    <div class="title">
                                       <span class="fa fa-map-marker"></span> Location From
                                    </div>
                                    <div class="details">
                                       <span class="color-primary"><%=reservation.getFrom() %></span>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="title">
                                       <span class="fa fa-map-marker"></span> Location To
                                    </div>
                                    <div class="details">
                                       <span class="color-primary"><%=reservation.getTo() %></span>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="title">
                                       <span class="fa fa-calendar"></span> Reservation Date
                                    </div>
                                    <div class="details">
                                       Journey Date: <%=reservation.getDate() %> <br/>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="title">
                                       <span class="fa fa-user"></span> Passenger/s
                                    </div>
                                    <div class="details">
                                       <%=reservation.getPassengers() %> 
                                    </div>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </section>
         </div>
      </div>
      <br><br><br><br><br><br><br><br><br><br><br><br><br>
      <br><br><br><br><br><br><br><br><br><br><br><br><br>
      <br><br><br><br><br><br><br><br><br><br><br><br><br>
      <!-- Site footer -->
      <footer>
			<div class="footer-distributed">
				<div class="footer-left" >
					<img src = "pictures/footerlogo.png" width="220px" height="90px">
					<p class="footer-links">
					<p>Hotline: +9411 24526 95 | +9411 24526 94</p>
					<p>Email: mjtt@gmail.com | info@mjttreservation.com</p>
					</p>
					<p class="footer-company-name">MJTT Reservation &copy; 2021</p>
				</div>    
			
			<div class="footer-center">
				<br><br><br><br><br><br><br>
				<div class="field">    
					<a href="https://www.sliit.lk/" class="sns-btn sns-btn--twitter">
						<i class="sns-btn__icon fab fa-twitter"></i>
					</a>  
					<a href="https://www.sliit.lk/" class="sns-btn sns-btn--facebook">
						<i class="sns-btn__icon fab fa-facebook-f"></i>
					</a>
					<a href="https://www.sliit.lk/" class="sns-btn sns-btn--instagram">
						<i class="sns-btn__icon fab fa-instagram"></i>
					</a>
				</div>
			</div>	
			<div class="footer-right">
				<p class="footer-company-about">
				<span>About MJTT Reservation</span>
				<p>Your online portal to reserve Sri Lanka Transport Board passenger transit services, across Sri Lanka.</p>
			</div>
	  </footer>   
	   <!-- Footer End -->  
   </body>
</html>
