<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Booking Conformation</title>
	<link rel="stylesheet" type="text/css" href="CSS/BookingConfirmation.css" media="screen">
</head>

<body  bgcolor=#1a116b>
	<form action="Booking.jsp" target="book" method="post">
	<center><h3 id="h3">TRAIN NO : ${trainNo}</h3></center>
	<table style="width:100%;">
	<tr>
	<td id="h5" rowspan="2" class="tdright">SEATS AVAILABLE</td>
	<td id="h5" class="tdleft">SLEEPER</td>
	<td id="h5" class="tdleft">AC</td>
	</tr>
	<tr><td class="tdleft">${SeatBean.sleeper}</td><td class="tdleft">${SeatBean.ac}</td></tr>
	<tr>
	<td class="tdright">NUMBER OF TICKETS</td>
	<td colspan="2" class="tdleft"><input type="text" name="tickets"/></td>
	</tr>
	<tr><td style="text-align:center;" colspan="3"><input id="submit" type="submit" value="SUBMIT"/><td><tr>
	</table>
	</form>
</body>
</html>