<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="CSS/header.css" rel="stylesheet" type="text/css">
        <link href="CSS/signup.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="JavaScript/signup.js"></script>
        <meta charset="UTF-8">
        <title>Sign Up</title>
    </head>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    
    <body>
        <div class="main-content">
        <!-- header and navbar -->
        <!-- Top navbar -->
        <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
          <div class="container-fluid">
            <!-- logo -->
           <a class="logo d-lg-inline-block" href="#"><img src="pictures/logo.png" width="130px" height="50px"></a>
            
          </div>
        </nav>
        <!-- Header bg image -->
        <div class="header" style="min-height: 100px; background-color: transparent; background-size: cover; background-position: center top;">
        </div>
        <!-- Page content -->
        <div class="container-fluid mt--7">
	            <form action="NewUserServlet" method="post" enctype="multipart/form-data">
	
	                <h1 align = "center">Create Account</h1><br>
	                
	                <label for="name">User Name</label><br>
                    <input type="text" id="name" name="name" class="form-controller" placeholder="Enter the User name" required><br><br>
    
	                <div class="row">
	                    <div class="column">
	                        <label for="birthday">Birthday:</label><br>
	                        <input type="date" id="dob" name="dob" placeholder="Enter the Birthday" required><br><br>
	                    </div>
	                
	                    <div class="column">
	                        <label for="phone">Mobile number:</label><br>
	                        <input type="tel" id="mobile" name="mobile" placeholder="Enter the phone number" pattern="[0-9]{10}" required>                   
	                    </div>
	                </div>
	                
	                <label for="email">Email</label><br>
	                <input type="email" id="email" name="email" placeholder="Enter your Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required><br><br>

					<label for="Gender">Gender</label><br>
					<input type="radio" id="male" name="gender" value="Male">
					<label for="male">Male</label>
					<input type="radio" id="female" name="gender" value="Female">
					<label for="female">Female</label>
					<input type="radio" id="other" name="gender" value="Other">
					<label for="other">Other</label><br><br>
	    
	                <label for="pwd">Password</label><br>
	                <input type="password" id="pwd" name="password" pattern="[A-Za-z0-9]{5,}" placeholder="Enter the password" required>
	    
	                <div id="message" class="message">
	                    <p>Password must contain lowercase letters, uppercase letters, numbers and should<br> consist of minimum 5 characters</p>
	                </div>
	
	                <br><br>
	                <label for="image">Profile Picture:</label>
	                <input type="file" id="image" name="image"><br>
	    
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
	
	                <div>
	                <br>
	                <input type="checkbox" class="checkbox" name="checkbox" value="check" id="agree" onclick="enableButton()">I Accept privacy policy and terms.
	                </div>
	                <br>
	                
	                <input class="btn" type="submit" name="submit" value="Sign Up" id="subbtn">
	    
	                <script>
	                    document.getElementById("subbtn").disabled = true;
	                </script>
					<br>
	        
					<div align="center">
						<p>Already have an account? <a href="signin.jsp">Sign in</a> </p>
					</div>
	           </form>
	     </div>
	   </div>
    </body>
</html>