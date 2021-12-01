<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Route"%>
<%@page import="Dao.RouteDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Route List </title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
<!--===============================================================================================-->
	  <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="CSS/routelist/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/routelist/line-icons.css">
    <link rel="stylesheet" href="CSS/routelist/owl.carousel.css">
    <link rel="stylesheet" href="CSS/routelist/owl.theme.css">
    <link rel="stylesheet" href="CSS/routelist/nivo-lightbox.css">
    <link rel="stylesheet" href="CSS/routelist/magnific-popup.css">
    <link rel="stylesheet" href="CSS/routelist/animate.css">
    <link rel="stylesheet" href="CSS/routelist/color-switcher.css">
    <link rel="stylesheet" href="CSS/routelist/menu_sideslide.css">
    <link rel="stylesheet" href="CSS/routelist/main.css">    
    <link rel="stylesheet" href="CSS/routelist/responsive.css">				
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="CSS/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<script src="https://kit.fontawesome.com/57c659bf44.js"crossorigin="anonymous"></script>
	 <link href="CSS/header.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<script src="https://kit.fontawesome.com/57c659bf44.js" crossorigin="anonymous"></script>
<!--===============================================================================================-->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

	      		
	<link rel="stylesheet" type="text/css" href="CSS/route-list.css">
<!--===============================================================================================-->
<style>
			.button {
			  background-color: #8B0000; /*red */
			  border: none;
			  color: white;
			  padding: 10px;
			  text-align: center;
			  text-decoration: none;
			  display: inline-block;
			  font-size: 10px;
			  margin: 6px 2px;
			  cursor: pointer;
			}

			.button {border-radius: 1px;}

			</style>
</head>
<body>
		
		<%
			
			RouteDao routeDao = new RouteDao();
			ArrayList<Route> routeList = routeDao.getRoute();
		   %>
		
	<header id="slider-area">  
      <nav class="navbar navbar-expand-md fixed-top scrolling-navbar bg-white">
        <div class="container">          
          <a class="navbar-brand" href="index.html"><span class="fas fa-bus"></span>Bus Reservation</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <i class="lni-menu"></i>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto w-100 justify-content-end">
              <li class="nav-item">
                <a class="nav-link page-scroll" href="#slider-area">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link page-scroll" href="#services">Services</a>
              </li>                                                                  
              <li class="nav-item">
                <a class="nav-link page-scroll" href="adminlogin.jsp">Logout</a>
              </li> 
                
            </ul>              
          </div>
        </div>
      </nav> 
	</header>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
					<div class="table">

						<div class="row header">
							<div class="cell">
								Route Number
							</div>
							<div class="cell">
								Source
							</div>
							<div class="cell">
								Destination
							</div>
							<div class="cell">
								Travel Time
							</div>
							<div class="cell">
								Update
							</div>
							<div class="cell">
								Delete
							</div>
							
						</div>
					    <%for(Route route: routeList){ %>
							<div class="row">
								<div class="cell" >
									<%=route.getRoutenumber()%>
								</div>
								<div class="cell" >
								    <%=route.getSource()%>
								</div>
								<div class="cell" >
									<%=route.getDestination()%>	
								</div>
								<div class="cell" >
									<%=route.getTraveltime()%>
								</div>
								<div class="cell" >
									<a href="route-form.jsp?routenumber=<%=route.getRoutenumber() %>">Update </a>
								</div>
								<div class="cell" >
									  <form action="DeleteRouteServlet" method="post">
										 <input type="hidden" id="delete" name="delete" value="<%=route.getRoutenumber()%>">
										  <input type="submit" class="button" name="deltbtn" value="Delete" id="delbtn">
										 
									   </form>
								</div>
							</div>						
						<%}%>
					</div>
			</div>
		</div>
	</div>
</body>
</html>