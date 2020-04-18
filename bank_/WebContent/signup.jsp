<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.sql.*" %>
    <%@ page import="java.io.*" %> 
    
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Flat HTML5/CSS3 Login Form</title>
  <!-- <link rel="stylesheet" href="./style.css"> -->
  <style>
  @import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}
body {
  background: #76b852; /* fallback for old browsers */
  background: -webkit-linear-gradient(right, #76b852, #8DC26F);
  background: -moz-linear-gradient(right, #76b852, #8DC26F);
  background: -o-linear-gradient(right, #76b852, #8DC26F);
  background: linear-gradient(to left, #76b852, #8DC26F);
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;      
}
body{
  background-image: linear-gradient(to right, rgba(255,0,0,0), rgba(255,25,0,1)); /* Standard syntax (must be last) */
}
.footer {
  
   background-color: grey;
   color: white;
   
}
</style>
</head>
<body>
<center>
<h2>
WELCOME TO BLOOD BANK
</h2>
</center>
<aside>
		<img src="bg3_blood.jpg" alt="food" height="100" width="100"
			align="left">
	</aside>
<aside>
		<img src="bg3_blood.jpg" alt="food" height="100" width="100"
			align="right">
	</aside>
<!-- partial:index.partial.html -->
<div class="login-page">
  <div class="form">
    <form class="login-form" action="NewFile1.jsp" method="post">
        <h2>Receptionist Sign Up</h2>
     <input type="text" placeholder="emp id" name="user_name" maxlength="15" autocomplete="off" required/>	
     <input type="text" placeholder="name" name="name" autocomplete="off" maxlength="25" required/>
      <input type="email" placeholder="email" name="email" autocomplete="off" maxlength="30" required/>
 	 <input type="password" placeholder="password" name="pass" maxlength="15" required/>
      <input type="tel" placeholder="mobile number" name="mob" autocomplete="off" maxlength="10" required/>
      <button>create</button>
      <p class="message">Already registered? <a href="login.jsp">Sign In</a></p>
    </form>
   
  </div>
</div>
<div class="footer">
<center>
  <p>TECHNOLOGY PARTNERS
APOLLO
<br>
CONTACT US:0191-2598090
<br>
Address:
<br>
Katraj
Maharashtra (India).
<br>
Email-id: info@indianblooddonors.com
<br>
@ 2016 Indian Blood Donors. All right reserved.</p></center>
</div>
</body>
</html>