<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=windows-1252">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: red;
  color: black;
}

.topnav a.active {
  background-color: red;
  color: white;
}

div {
   /*border: 5px solid black;*/
  /*background-color: lightblue;*/
  padding-top: 5px;
  padding-right: 80px;
  padding-bottom: 5px;
  padding-left: 80px;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}


li {
  float: left;
  border-right:1px solid #bbb;
}

li:last-child {
  border-right: none;
  }


li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
}
.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.navbar a:hover{
  background-color: red;
}

* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

.footer {
  
   background-color: grey;
   color: white;
   
}

</style>


</head>



<body background="bg1_blood.jpg" width="100%" height="100%">
<br>
<aside>
<img src = "bg3_blood.jpg" alt = "food" height = "100" width = "100" align="left">
</aside>
<h1 style="color:white">
<center> <i> Blood Bank Management System</i> </center></h1>
<br>
<br>
<nav class="navbar">
  <div class="topnav">
<ul>


<li><a class="active" href="home.jsp">HOME</a></li>
				<li><a  href="Donor.jsp">DONOR</a></li>
				<li><a href="AllDonors.jsp">ALL DONORS</a></li>
				<li><a href="patient.jsp">PATIENT</a></li>
				<li><a href="s_id.jsp">SEARCH DONOR</a></li>
				<li><a href="AllPatient.jsp">ALL PATIENT</a></li>
				<li><a  href="sp_id.jsp">SEARCH PATIENT</a></li>
				<li><a href="blood_details.jsp">BLOOD STOCK</a></li>
				<li style="float: right"><a href="1.jsp"> About Us </a></li>
</ul>
</div></nav>
<br><br>

<div class="container"> 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="7.png" alt="blood" style="width:100%;">
      </div>

      <div class="item">
        <img src="blood.jpg" alt="blood" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="3.jpeg" alt="blood" style="width:100%;">
      </div>
    
	
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div><br><br>
<div class="footer">
 
</body>

</html>
