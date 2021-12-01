
<!DOCTYPE html>
<html >
<head>
	<title>Login Admin</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
<script src="https://kit.fontawesome.com/8d3539dd34.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="CSS/login/font-awesome.min.css">
<!--	
===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="CSS/login/loginutil.css">
	<link rel="stylesheet" type="text/css" href="CSS/login/login.css">
<!--===============================================================================================-->

</head>
<body style="margin:1; background-image: url('pictures/BusBackground.png'); " class="container-login100" >
	
<div  >
		
			<!--Login From Margin-->
			<div style="margin-top:-100px; position:absolute" ></div>
	<br><br><br>
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54" style="margin-left:260% " >
				
				<form action ="AdminServlet" method="post" class="login100-form validate-form">
				  <span class="login100-form-title p-b-49">
						Admin Login
				  </span>

					<div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						<span class="label-input100">Username</span>
						<input class="input100" type="text" name="username"  placeholder=  " Type your username" required >
						
					</div>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="password" placeholder="Type your password" required>
					
					</div>
					
					<div class="text-right p-t-8 p-b-31">
						
				  </div>
					
				  <div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Login
							</button>
						</div>
					</div>

							      
			          <br><br>
									 

					<div style="margin-left: 30%">
						  <p> <a href="login.jsp" class="txt1"> Login as a member </a></p>
									  
			                  </div> 													                   
						</form>
							</div>
					</div>				

	<script src="JS/login.js"></script>

</body>
</html>