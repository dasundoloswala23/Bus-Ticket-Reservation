

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="model.Member"%>
<%@page import="Dao.MemberDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback</title>
    <link href="CSS/feedback.css" rel="stylesheet">	   
	<link href="CSS/header.css" rel="stylesheet" type="text/css">
	<link href="CSS/footer.css" rel="stylesheet" type="text/css">
	<script src="https://kit.fontawesome.com/57c659bf44.js"crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<script src="https://kit.fontawesome.com/57c659bf44.js" crossorigin="anonymous"></script>
	<meta charset="UTF-8">

     
</head>
<body style="margin:1; background-image: url('pictures/feedback.png'); "  >



 <%
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
	    <div class="mt--7">
	    
	    
	    
    <!--end of header-->



	<form action="FeedbackServlet" method="post" >
	 
		 <h1 align = "center">Feedback</h1><br>
			
		 <input type="hidden" id="userid" name="userid" value="<%=userid%>" class="form-controller" placeholder="Enter the name" required>
		 
		  <label for="name">Name</label><br>
		 <input type="text" id="name" name="name" class="form-controller" placeholder="Enter the name" required><br><br>
		 <label for="email">Email</label><br>
		 <input type="email" id="email" name="email" placeholder="Enter your Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required><br><br>
		
		
		  <label for="feedback">Feedback</label><br>
		 <textarea  rows="8"  id="feedback" name="feedback" placeholder="Type your Feedback here"  required> </textarea> <br><br>
	
		 
		 <input class="btn" type="submit" name="submit" value="Send Feedback" id="subbtn">
		 
		 
		 <br>
		 
		
	 </form>
      
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