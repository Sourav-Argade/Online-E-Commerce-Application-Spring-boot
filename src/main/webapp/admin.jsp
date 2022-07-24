<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Portal</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}
h1{
color: Blue;
width:100%;
 text-align: center;
}
input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

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

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>
<h1 style="color:red"><b><i>Welcome to Admin's Portal</i></b></h1>
<h1 style="color:red"><b><i>Add Product</i></b></h1>
<center>
<form action="admin" method="get">
		Product Id  			 :<input type = "text" name = "pid"><br><br>
		Product Name		   	 :<input type = "text" name = "pname"><br><br>
		Product Cost			 :<input type = "text" name = "pcost"><br><br>
		No. of Products Available:<input type = "text" name = "availableQuantity"><br><br>
		<input type="submit" value="Add">
</form><br><br>
<h1 style="color:blue"><b><i>*************************************************************************************************</i></b></h1>	 
	 
	 
	 <h1 style="color:red"><b><i>Update a Product</i></b></h1>
	 <form action="updatepd" method="get">
		Product Id  			 :<input type = "text" name = "pid"><br><br>
		Product Name		   	 :<input type = "text" name = "pname"><br><br>
		Product Cost			 :<input type = "text" name = "pcost"><br><br>
		No. of Products Available:<input type = "text" name = "availableQuantity"><br><br>
		<input type="submit" value="Update">
	 </form><br><br>
<h1 style="color:blue"><b><i>*************************************************************************************************</i></b></h1>
	
<h1 style="color:red"><b><i>Delete a Product</i></b></h1>
	 <form action="deletepd" method="get">
		PID:<input type = "text" name = "pid"><br><br>
		
		<input type="submit" value="Delete">
	 </form><br><br>
<h1 style="color:blue"><b><i>*************************************************************************************************</i></b></h1>	 
	 
<h1 style="color:red"><b><i>View Product</i></b></h1>
	 <form action="viewpd" method="get">
		PID:<input type = "text" name = "pid"><br><br>
		
		<input type="submit" value="View">
		</form><br><br>
		
<h1 style="color:blue"><b><i>*************************************************************************************************</i></b></h1>	
	<h1 style="color:red"><b><i>View All Products</i></b></h1>
	 <form action="viewallpd" method="get">
		<input type="submit" value="Viewall">
	</form><br><br>
</body>
</center>
<h1 style="color:blue"><b><i>*************************************************************************************************</i></b></h1>
<center><h1 style="color:red"><b><i>Thanks for using</i></b></h1></center>
</html>