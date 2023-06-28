
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>HOME PAGE</title>
</head>
<body style="background-image: linear-gradient(to right, #000000 15%, #414141 85%);">
<div class="header">
         <div class="inner_header">
              <div class="logo container" ><img src="image\music.jpeg" width="350" height="350" style = "position:absolute; left:40px; top:100px; border: white;">
    		  <h5 style = "position:absolute; left:60px; top:20px; color: white;font-size: 25px;">WELLCOME TO  MUSIC STORE (PVT) Ltd.</h5>
    		  <h5 style = "position:absolute; left:800px; top:20px; color: white;font-size: 15px;">Contact Us | +94 11 000 0000 | +94 77 767 7670 | support@music.com </h5>
              <!--navigation bar-->	
    <br><br><br>
    
                    <div class = "navigation">
                        <a href=homepage.jsp><ul>HOME</ul></a>
                        <a href=Display.jsp><ul>MUSIC</ul></a>
                        <a href="#"><ul>PAYMENT</ul></a>
                        <a href="#"><ul>CART</ul></a>
                        <a href=login.jsp><ul>ADMIN</ul></a>
                        </div>
     <br><br><br><br>

     
	<form action=display.jsp method="post"style="position: relative;left:600px; top: 50px;">
	<h1>ADMIN CREATE ACCOUNT</h1>
	<div class ="formtext">
		<pre>
Name 		: <input type="text" name="name"><br>
Email	 	: <input type="text" name="email"><br>
Phone Number	: <input type="text" name="phone"><br>
User Name 	: <input type="text" name="user"><br>
Password 	: <input type="password" name="psw"><br>
		
		<input type="submit" name="submit" value="Create Admin">
		</pre>
		</div>
	</form>






</div>
</div>
</div>
     
</body>
</html>
