<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<style>
		body {font-family: Arial, Helvetica, sans-serif;}
		* {box-sizing: border-box;}
		
		h3{
		text-align: center
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

		input[type=button] {
		  background-color: #5DADE2;
		  color: black;
		  padding: 12px 20px;
		  border: none;
		  border-radius: 4px;
		  cursor: pointer;
		}

		input[type=submit]:hover {
		  background-color: #45a049;
		}

		.form {
		  border-radius: 5px;
		  background-color: #f2f2f2;
		  padding: 20px;
		}
		</style>
	
		<h3>Fill up this Contact Form to get regular updates</h3>

		<div class="form">
		  <form>
			<label for="fname">First Name<sup>*</sup></label>
			<input type="text" id="fname" name="firstname" placeholder="Your name.." required>

			<label for="lname">Last Name<sup>*</sup></label>
			<input type="text" id="lname" name="lastname" placeholder="Your last name.." required>
			
			<label for="email">mail id<sup>*</sup></label>
			<input type="text" id="email" name="mail id" placeholder="xyz@gmail.com" required>
			<p id="demo4"></p>
	
	
			<label for="country">Country</label>
			<select id="country" name="country">
			  <option value="India">India</option>
			  <option value="canada">Canada</option>
			  <option value="Germany">Germany</option>
			  <option value="usa">USA</option>
			</select>

			<label for="subject">Subject</label>
			<textarea id="subject" name="subject" placeholder="Write something.." style="height:100px"></textarea>

			<input type="button" value="Submit" onclick="ValidateEmail()">
		  </form>
		</div>
		
		<script>
			function ValidateEmail(){
			let text = document.getElementById("email").value;
			const pattern1 =/([a-z]+)/;
			const pattern2 =/[@]+/;
            const pattern3 =/[.]+/;
          
    
			let a = pattern1.test(text);
			let b = pattern2.test(text);
            let c = pattern3.test(text);
       

			if(a==true && b==true && c==true && text.endsWith(".com")){
			document.getElementById("demo4").innerHTML = "Email Validated";
			document.getElementById("demo4").style.color="#00cc44";
			}else{
            document.getElementById("demo4").innerHTML = "Invalid Email";
			document.getElementById("demo4").style.color="Red";
			}
			} 
		</script>
</body>
</html>