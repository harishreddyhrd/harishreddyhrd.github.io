<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title></title>
		
		<script type="text/javascript">
			 function toggleMenu(){
				 var x = document.getElementById('sidebar');
				 if(x.style.left=="-25%")
					 x.style.left="0%";
				 else
				     x.style.left="-25%";
			 }
		</script>
		
		<link rel="stylesheet" type="text/css" href="CSS/title.css" media="screen" />
		
	</head>
	
	<form action="TrainController" method="post">
		<div id="sidebar">
		  <div class="toggle-btn" onclick="toggleMenu()">
		  <img src="Images/whiteIcon.png"/>
		  </div>
		  <ul>
		  <li id="Name">Aravindh A E</li>
		  <li id="mail">aearavindh2@gmail.com</li>
		  <li><input id="logout" type="submit" value="LOGOUT" name="trsButton"/></li>
		  </ul>
		</div>
	</form>
	
	
	<!-- <body style="font-family: Century Gothic, Arial; background-color:#1a116b; color: white; text-align:center; ">
	
		<h1 style="font-size:38px; padding">Train Reservation System</h1>
		<h1 style="font-size:28px;">INDIAN RAILWAYS</h1>
	</body>
	 -->
	<body>
	<div id="title">
		<h1>Train Reservation System</h1>
		<h3>Indian Railways</h3>
	</div>
	</body>
	
</html>