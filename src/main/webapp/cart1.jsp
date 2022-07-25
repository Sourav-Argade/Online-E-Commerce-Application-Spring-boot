<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ page import="com.sourav.OnlineECommerceApp.entity.Buy"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buyed items</title>
</head>
<body>
<center>
	<%
	 
	 String mode = (String) request.getAttribute("mode1");
		if (mode.equals("single1")) 
		{
			boolean flag = (Boolean) request.getAttribute("flag");
			if (flag)
			{
				Buy b =(Buy) request.getAttribute("result");
				out.println("<table border=1px><tr><th>BILL NO</th><th>PRODUCT ID</th><th>QUANTITY</th><th>BILL AMOUNT</th></tr>");		//table to view single item
				out.println("<tr><td>" + b.getBillno() + "</td><td>" + b.getPid()+ "</td><td>" + b.getQuantity()+"</td><td>" + b.getBillamt()+ "</td></tr></table>");
			}
			else 
			{
				out.println("<h1> " + (String) request.getAttribute("result") + "</h1>");
			}
		} 
		else if(mode.equals("list1"))
		{
			ArrayList<Buy> blist = (ArrayList<Buy>) request.getAttribute("result");	
			out.println("<table border=1px><tr><th>BILL NO</th><th>PRODUCT ID</th><th>QUANTITY</th><th>BILL AMOUNT</th></tr>");		//table to view all the buyed item
			for(Buy s:blist)
			{
				out.println("<tr><td>" + s.getBillno() + "</td><td>" + s.getPid()+ "</td><td>" + s.getQuantity()+"</td><td>" + s.getBillamt()+ "</td></tr>");
			}
			out.println("</table>");   //closing tag of table after getting all the buyed items.
		}
	 %>
	
</center>>
</body>
</html>
