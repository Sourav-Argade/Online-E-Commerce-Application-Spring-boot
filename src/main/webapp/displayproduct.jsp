<%@page import="com.sourav.OnlineECommerceApp.entity.Buy"%>
<%@page import="com.sourav.OnlineECommerceApp.entity.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online E-Commerce Application</title>
</head>
<body>
<h1 style="color:green">Online E-Commerce Application</h1>
<h2 style="color:blue">VIEW PRODUCT</h2>
<center>
	<%
	String mode = (String) request.getAttribute("mode");
	if (mode.equals("single")) {
		boolean flag = (Boolean) request.getAttribute("flag");
		if (flag){
			Product p =(Product) request.getAttribute("result");
			out.println("<table border=1px><tr><th>PRODUCT ID</th><th>PRODUCT NAME</th><th>AVAILABLE QUANTITY</th><th>COST</th></tr>");
			out.println("<tr><td>" + p.getPid() + "</td><td>" + p.getPname()+ "</td><td>" + p.getAvailableQuantity()+"</td><td>" +
			p.getPcost()+ "</td><td>" + "</td></tr></table>");
		}else {
			out.println("<h1> " + (String) request.getAttribute("result") + "</h1>");
		}
	} else if (mode.equals("list")){
		ArrayList<Product> plist = (ArrayList<Product>) request.getAttribute("result");
		out.println("<table border=1px><tr><th>PRODUCT ID</th><th>PRODUCT NAME</th><th>QUANTITY</th><th>COST</th></tr>");
		for(Product p:plist){
			out.println("<tr><td>" + p.getPid() + "</td><td>" + p.getPname()+ "</td><td>" + p.getAvailableQuantity()+"</td><td>" +
			p.getPcost()+ "</td><td>" + "</td></tr>");
		}
		out.println("</table>");
		
	}
	%>
</center>
</body>
</html>





