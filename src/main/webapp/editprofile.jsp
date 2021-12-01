<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="model.Member"%>
<%@page import="Dao.MemberDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
   <head>
        <link href="CSS/editprofile.css" rel="stylesheet" type="text/css">
        <link href="CSS/header.css" rel="stylesheet" type="text/css">
		<link href="CSS/footer.css" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
		<script src="https://kit.fontawesome.com/57c659bf44.js" crossorigin="anonymous"></script>
        <meta charset="UTF-8">
        <title>Edit Profile</title>
    </head>
	
	<body>

		<%
			int userid = (int) request.getSession(false).getAttribute("userID");
			MemberDao memberDao = new MemberDao();
			Member member = memberDao.getUserByID(userid);
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
	    <div class="container-fluid mt--7">
        	<div class="col-xl-8 order-xl-1 mt-10p">
	          <div class="card bg-secondary shadow">
	            <div class="card-header bg-white border-0">
	              <div class="row align-items-center">
	                <div class="col-8">
	                  <h2 class="mb-0 mt-0">Edit Profile</h2>
	                </div>
	              </div>
	            </div>
	            <div class="card-body">
                <form action="UpdateUserServlet" method="post" enctype="multipart/form-data">
                  <div class="row align-items-center">
                    <div class="col-4">
                      <label >Current Profile Picture:</label><br><br><br><br><br>
                      <div class="card-profile-image">
	                      <img src="data:image/gif;base64,<%=member.getProfilepic()%>" class="rounded-circle">
	                    </div><br><br><br><br><br><br><br><br>
                      <label for="image">Select New Profile Picture:</label>
                      <input type="file" id="image" name="photo"><br>
                    </div>
                    <div class="col-8">
                      <input type="hidden" name="userid"value="<%=member.getUserID()%>">

                      <label for="name">User Name</label><br>
                      <input type="text" id="name" name="name" class="form-controller" placeholder="Enter the new Username" value="<%=member.getUsername()%>"><br><br>                  
                      
                      <label for="phone">Mobile number:</label><br>
                      <input type="tel" id="mobile" name="mobile" placeholder="Enter the new phone number" pattern="[0-9]{10}" value="<%=member.getPhone()%>"> <br><br>                  
                        
                      <label for="email">Email</label><br>
                      <input type="email" id="email" name="email" placeholder="Enter your new Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" value="<%=member.getEmail()%>"><br><br>
            
                      <label for="pwd">Password</label><br>
                      <input type="password" id="pwd" name="password" pattern="[A-Za-z0-9]{5,}" placeholder="Enter the new password" value="<%=member.getPassword()%>">
            
                      <div id="message" class="message">
                      <p>Password must contain lowercase letters, uppercase letters, numbers and should<br> consist of minimum 5 characters</p>
                      </div>
            
                      <script>
                          var myInput = document.getElementById("pwd");
            
                          myInput.onfocus = function() 
                          {
                              document.getElementById("message").style.display = "block";
                          }
              
                          myInput.onblur = function() 
                          {
                              document.getElementById("message").style.display = "none";
                          }
                      </script>

                      <br><br><br>
                        
                      <input class="btn btn-sm btn-default" type="submit" name="submit" value="Update Account" id="subbtn">
                      <br>
                    </div>
                  </div>
                </form>               
	            </div>
	          </div>
	        </div>
        </div>
	  </div>
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
