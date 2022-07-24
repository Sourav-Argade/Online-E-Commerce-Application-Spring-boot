<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AS Fashion Square</title>
</head>
<body>
		<meta charset="UTF-8">
		<style>
			body {
				  font-family: Arial, Helvetica, sans-serif, Bodoni, Garamond, Algerian, Wide Latin;
				  margin: 0;
				}
				.header {
				  padding: 3px;
				  text-align: center;
				  background: #1abc9c;
				}
				.header h1 {
				font-family: Bodoni;
				  font-size: 44px;
				  color: black;
				}
				
				.header h5 {
				font-family: Garamond;
				  font-size: 20px;
				  color: black;
				}
				
				
				/* Style the top navigation bar */
				.navbar {
				  overflow: hidden;
				  background-color: #333;
				}
				/* Style the navigation bar links */
				.navbar a {
				  float: left;
				  display: block;
				  color: white;
				  text-align: center;
				  padding: 14px 20px;
				  text-decoration: none;
				}
				/* Right-aligned link */
				.navbar a.right {
				  float: right;
				}
				/* Change color on hover */
				.navbar a:hover {
				  background-color: #ddd;
				  color: black;
				}
				
				h2{
				 animation:blinkingText 1.2s infinite;
				}
				@keyframes blinkingText{
				0%{     color: #00008B;    }
				49%{    color: #00008B; }
				60%{    color: transparent; }
				99%{    color:transparent;  }
				100%{   color: #00008B;    }
				}
				body {
				  background-color: lightblue;
				}
				
				 .header img {
				  border: 1px solid #ddd;
				  border-radius: 40px;
				  padding: 5px;
				  width: 150px;
				}
				.dropdown {
				  float: left;
				  overflow: hidden;
				}

				.dropdown .dropbtn {
				  font-size: 16px;  
				  border: none;
				  outline: none;
				  color: white;
				  padding: 14px 16px;
				  background-color: inherit;
				  font-family: inherit;
				  margin: 0;
				}

				.navbar a:hover, .dropdown:hover .dropbtn {
				  background-color: red;
				}

				.dropdown-content {
				  display: none;
				  position: absolute;
				  background-color: #f9f9f9;
				  min-width: 160px;
				  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
				  z-index: 1;
				}

				.dropdown-content a {
				  float: none;
				  color: black;
				  padding: 12px 16px;
				  text-decoration: none;
				  display: block;
				  text-align: left;
				}

				.dropdown-content a:hover {
				  background-color: #ddd;
				}

				.dropdown:hover .dropdown-content {
				  display: block;
				}
				
				
				.column {
				  float: left;
				  width: 25%;
				  padding: 56px;
				}

				/* Style the images inside the grid */
				.column img {
				  opacity: 0.6; 
				  cursor: pointer; 
				}

				.column img:hover {
				  opacity: 1;
				}
				.footer {
				   position: fixed;
				   left: 0;
				   bottom: 0;
				   width: 100%;
				   background-color: black;
				   color: white;
				   text-align: center;
				}
				.button:hover {
				  background-color: #008CBA;
				  color: white;
				}

				.button {
				  background-color: red;
				  border: none;
				  color: white;
				  padding: 15px 16px;
				  text-align: center;
				  text-decoration: none;
				  display: inline-block;
				  font-size: 16px;
				  margin: 5px 3px;
				  cursor: pointer;
				}
				@media only screen and (max-width:768px) {
				  /* For tablets: */
				  .main , .menu , .header{
					width: 80%;
					padding: 0;
				}
				@media only screen and (max-width:500px) {
				  /* For mobile phones: */
				  .menu, .main, .right , .header{
					width: 100%;
				  }
				@media only screen and (max-width:1200px) {
				  /* For mobile phones: */
				  .menu, .main, .right , .header{
					width: 100%;
				  }

		</style>
		
		
		<div class="header">
				<center><img style="position:absolute;top:30px; left:290px;" src="img/ASfashion.png" alt="logo" width="500" height="120">
				  <H1><b>FASHION SQAUARE</b></H1></center>
				  <H5><marquee direction="right" bgcolor="#FFA4C9">STYLE       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CLASS      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      SATISFACTION</marquee></H5>
				</div>
					
				<div class="navbar">
				  <a href="index">Home</a>
				  <a href="AboutMe.jsp">About</a>
				  <a href="Contact.jsp">Contact</a>
				  <div class="dropdown">
					<button class="dropbtn">Category
					  <i class="fa fa-caret-down"></i>
					</button>
					<div class="dropdown-content">
					  <a href="#">Kids Wear</a>
					  <a href="#">Mens Wear</a>
					 
					</div>
					
				  </div> 
				  <a href="cart.jsp" class="right">Cart</a>
				   <a href="admin.jsp" class="right">Admin</a>
				</div>
				<div style="text-align:center">
				  <h2>Check out this latest trending Outfits!!!</h2>
				</div>
				</header>
				
				<div class="row">
				  <div class="column">
					<img src="img/Plain%20Formal%20Black.jpg" alt="Plain Formal Black" style="width:75%"><br><br>
					 <a href="buyed1.jsp" class="button">Buy Product</a>
				  </div>
				 
				  <div class="column">
					<img src="img/Plain%20Formal%20Blue.jpg" alt="Plain Formal Blue" style="width:75%"><br><br>
					 <a href="buyed2.jsp" class="button">Buy Product</a>
				  </div>
				  <div class="column">
					<img src="img/Plain%20Formal%20with%20dots.jpg" alt="Plain Formal with dots" style="width:75%"><br><br>
					 <a href="buyed3.jsp" class="button">Buy Product</a>
				  </div>
				</div>
				
				<div class="row">
				  <div class="column">
					<img src="img/Plain%20Shirt.jpg" alt="Plain Formal" style="width:75%"><br><br>
					 <a href="buyed4.jsp" class="button">Buy Product</a>
				  </div>
				  <div class="column">
					<img src="img/Plain%20light%20Blue.jpg" alt="Plain Formal with dots" style="width:75%"><br><br>
					 <a href="buyed5.jsp" class="button">Buy Product</a>
				  </div>
				  <div class="column">
					<img src="img/Blazer%20Suit.jpg" alt="Blazer Suit" style="width:75%"><br><br>
					 <a href="buyed6.jsp" class="button">Buy Product</a>
				  </div>
				</div>		
				<div class="footer">
				  <p>© AS Fashion Square<br> contact - 9960263144 &nbsp; <a href= "https://mail.google.com/mail/u/0/#inbox">Mail</a></p>
				</div>
	</body>
</html>