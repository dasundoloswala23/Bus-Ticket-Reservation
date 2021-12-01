<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="model.Member"%>
<%@page import="Dao.MemberDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>

<html lang="en" data-triggered="true">
	
	<head>
	  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Contact Us MJTT Reservation </title>
        
      <script type="text/javascript" defer="">
      
		(function(i, s, o, g) {
			var a = s.createElement(o);
			a.src = g;
			var m = s.getElementsByTagName('head')[0];
			m.appendChild(a);
		})(window, document, 'script', (/^http:/.test(document.location) ? 'http' : 'https') + '://cdn-public.sociabble.com/blob/js/leadgen/track.min.js?v=1.7')
				
      	</script><script src="JavaScript/contactus/contactustrack.min.js.download"></script>
		<link href="CSS/contactus/contactusmain.css" rel="stylesheet">
		<link href="CSS/contactus/contactusform.css" rel="stylesheet">
		<link href="CSS/footer.css" rel="stylesheet" type="text/css">
		<link href="CSS/header.css" rel="stylesheet" type="text/css"> 
		<script src="https://kit.fontawesome.com/57c659bf44.js"crossorigin="anonymous"></script>
		<link href="CSS/header.css" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
		<script src="https://kit.fontawesome.com/57c659bf44.js" crossorigin="anonymous"></script>
		<meta charset="UTF-8">
	    
	    
	    
		<style type="text/css">
			/*.apos-ui .apos-field-object {
			border: 1px solid #d8d8d8;
			padding: 20px;
			}*/
		</style>
						      
		<script type="text/javascript">
			window.FW = {
				cbQueue: [],
				onLoad: function(){
					this.cbQueue.push(arguments)
				}
			};
			</nav>
					      <script type="text/javascript">
					      </script>
    
    </head>
    <body style="margin:1; background-image: url('pictures/feedback.png'); background-repeat: no-repeat; background-size: cover;">
  <!-- header -->
  
   	<%
		int userid = (int) request.getSession(false).getAttribute("userID");
		
		MemberDao memberDao = new MemberDao();
		Member member = memberDao.getUserByID(userid);
    %>

    <!--Paste this code next, this is the navigation bar and header-->
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
                <h3><a class="nav-link" href="homepage.jsp" role="button">Home</a></h3>
              </li>
              <li class="nav-item">
                <h3><a class="nav-link" href="myreservation.jsp" role="button">My reservations</a></h3>
              </li>
              <li class="nav-item">
                <h3><a class="nav-link" href="contactus.jsp" role="button">Contact Us</a></h3>
              </li>
              <li class="nav-item">
                <h3><a class="nav-link" href="feedback.jsp" role="button">Feedback</a></h3>
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
	                <div class="username d-lg-block">
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
	    <div class="header pt-lg-8" style="min-height: 100px;">
	    </div>
	    <!-- Page content -->
	    <div class=" mt--7">
    <!--end of header-->
    <!-- type your code from here onwards-->
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    <div class="modal geo-modal" id="geo-modal" tabindex="-1" role="dialog" aria-labelledby="geo-modal" data-native="">
      <div class="modal-dialog modal-md" role="document">
        <div class="modal-content">
          <div>
            <div class="modal-close geo-pop-close" data-dismiss="modal" aria-label="close">
              <i class="icon-close"></i>
            </div>
          </div>
          <div class="modal-body clearfix-md">
          </div>
        </div>
      </div>
    </div>
   
      
<section id="" data-text-list="[]" data-scroll-target="#" class="first-fold align-center pattern-gradient-light     ">
  <div class="container  banner-content l-banner " data-scroll-target="">
    
      
  <h1>We are love to hear from you</h1>

<p class="sub-text">Whether you have a question about Bus Ticket Reservation,Pricing,about buses or anything else, our team is ready to answer all your questions</p>



  </div>
</section>




  
      
<section class="pb-xl ">
  <div class="l-page container  " data-scroll-target="" id="">
    <div class="row">
      <div class="col-md-6 col-sm-12 mt-xl"> 
            
      
    <div class="icon-big"style="background-image: url('pictures/phone.jpg');"></div>
  <div class="  ">

      
  <h3>&nbsp;Ticket Reservation Enquiries</h3>

<p class="pt-xs sub-text">If you want solutions as soon as posible then you can contact us.</p>

<p class="pt-xs sub-text"><strong>Hotline:</strong> +9411 24526 95 | +9411 24526 94</p>

<p class="pt-xs sub-text"><strong>Colombo:&nbsp;</strong>+94 2042193|<strong> </strong>+94 2042194</p>

<p class="pt-xs sub-text"><strong>Kandy:&nbsp; </strong>+94 2042145|&nbsp;+94 2042146</p>



<p class="pt-xs sub-text"><strong>Email:</strong>&nbsp;mjtt@gmail.com | mjtt@reservation.com</p>
<p class="pt-xs sub-text">&nbsp;</p>
<p class="pt-xs sub-text">&nbsp;</p>

<p class="pt-xs sub-text">&nbsp;</p>
  </div>


      
<div class="_blank ">
  <div class="" ></div>
</div>
<br><br>
<hr align="left" width="204%">
   
<div  class="_blank ">
  <div class=""></div>
</div> 
      </div>	
     <div class="col-md-6 col-sm-12 pt-lg">
        
<div class="form-wrapper contact-form-wrapper form-white-bg">
<form>  <div class="  ">
     
 


  <div  > <h3><p class="no-margin"> <a href="www.googlemap.com">Head Office Location</a></p></h3>
<!--Location map   (link :- https://google-map-generator.com/-->
<div class="mapouter"><div class="gmap_canvas"><iframe width="550px" height="350px" id="gmap_canvas" src="https://maps.google.com/maps?q=kudamaduwa,%20sri%20lanka&t=k&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://123movies-a.com"></a><br><style>.mapouter{position:relative;text-align:right;height:350px;width:550px;}</style><a href="https://www.embedgooglemap.net"></a><style>.gmap_canvas {overflow:hidden;background:none!important;height350px;width:550px;}</style></div></div></div><br>

		  </div>
    
  </form>
    
      
 

  </div>
</div>
 


</div>
<script type="text/javascript">
 
    
</script>


     
  
  
</section>


      
<section id="" class="section-content-grid l-section section-light-bg  " data-scroll-target="">  
  <div class="l-page container l-grid">
      <div class="l-section-heading">
        
      
  <h2 class="align-center">Office locations</h2>



      </div> <div class="row">
        <div class="l-col-widget col-sm-4">
        
      
    <div ></div>
  <div class="  ">

      
  <h3>HQ -Colombo, TownHall</h3>

  <p class="no-margin">1/15A ,</p>
  <p class="no-margin">DS.Senanayaka Mawatha, Colombo</p>
<p class="no-margin">Reception/General enquiries: <a href="tel:+94 1121 7603">+94 1121 7603</a></p>

<p class="no-margin">Availability: (Mon-Fri) 9AM to 5PM </p>


 </div>



        </div>
        <div class="l-col-widget col-sm-4">
        
      
    <div ></div>
  <div class="  ">

      
  <h3>Anuradhapura,new city</h3>

<p class="no-margin">New city Anuradhapura </p>

<p class="no-margin">4/2,Jaffna Road</p>

<p class="no-margin">Reception/General enquiries:&nbsp;<a href="tel:+94 1124 73502">+94 1124 73502</a></p>

<p class="no-margin">Availability: (Mon-Fri) 9AM to 5PM IST</p>


 </div>



        </div>
        <div class="l-col-widget col-sm-4">
        
      
    <div ></div>
  <div class="  ">

      
  <h3>Rathnapura</h3>

<p class="no-margin">65/A,<br>
Colombo Road,Rathnapura</p>

<p class="no-margin">Reception/General enquiries:&nbsp;<a href="+94 1123 74503">+94 1123 74503</a></p>

<p class="no-margin">Availability: (Mon-Fri) 9AM to 5PM BST</p>


 </div>



        </div> </div> <div class="row">
        <div class="l-col-widget col-sm-4">
        
      
    <div></div>
  <div class="  ">

      
  <h3>Kandy</h3>

<p class="no-margin">228/1A</p>

<p class="no-margin">Kandy Road,Kandy</p>

<p class="no-margin">Reception/General enquiries: <a href="tel:+94 1126 7403">+94 1126 7403</a></p>

<p class="no-margin">Availability: (Mon-Fri) 9AM to 5PM </p>


 </div>



        </div>
        <div class="l-col-widget col-sm-4">
        
      
    <div class=></div>
  <div class="  ">

      
  <h3>Galle</h3>

<p class="no-margin"> 22/485,Galle Road,</p>

<p class="no-margin">Galle</p>

<p class="no-margin">Reception/General enquiries: <a href="tel:+94 1126 4303">+94 1126 4303</a></p>

<p class="no-margin">Availability: (Mon-Fri) 9AM to 5PM </p>


 </div>



        </div>
        <div class="l-col-widget col-sm-4">
        
      
    <div ></div>
  <div class="  ">

      
  <h3>Jaffna</h3>

<p class="no-margin">3/A,</p>

<p class="no-margin">A9 Road,Jaffna</p>
<p class="no-margin">Reception/General enquiries: <a href="tel:+94 1127 4805">+94 1127 4805</a></p>
<p class="no-margin">Availability: (Mon-Fri) 9AM to 5PM </p>


 </div>



        </div> </div>  <div class="row">
        <div class="l-col-widget col-sm-4">
        
      
   



        </div> </div>
  </div>
  
	</section>
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
	</head></html>