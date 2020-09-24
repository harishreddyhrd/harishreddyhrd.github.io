<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Toggle Menu</title>
<link rel="Stylesheet" type="text/css" href="CSS/title.css"/>
<script type="text/javascript">
 function toggleMenu(){
	 var x = document.getElementById('sidebar');
	 if(x.style.left=="-30%")
		 x.style.left="0%";
		 else
	     x.style.left="-30%";
 }
</script>
</head>
<body>
<div id="sidebar" onclick="toggleMenu()">
  <div class="toggle-btn" >
   <span></span>
   <span></span>
   <span></span>
  </div>
  <ul>
  <li>Aravindh A E</li>
  <li>aea</li>
  <li>aearavindh2@gmail.com</li>
  <li>9360654675</li>
  </ul>
</div>
</body>
</html>