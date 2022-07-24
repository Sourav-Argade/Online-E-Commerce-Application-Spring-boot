<%@page import="com.sourav.OnlineECommerceApp.entity.Buy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Cart</title>
<style>
input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
</style>
</head>
<body>
<center>
<h1 style="color:blue">Online E-Commerce Application</h1>
<h1 style="color:red"><b><i>WELCOME TO CART</i></b></h1>


<div class="container">
<form action="cart" method="get">
Enter Unique Bill No :<input type = "text" name = "billno"><br><br>

		<input type="submit" value="View Single item">
	 </form><br><br>


<form action="cartall" method="get">
		
		<input type="submit" value="View All Buyed Items">
	 </form><br><br>

	 </div>
</center>
	
</body>
</html>