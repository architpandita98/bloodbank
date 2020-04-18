<!DOCTYPE html>


<html>

<head>


<meta http-equiv="content-type" content="text/html; charset=windows-1252">

<style>
article {
  
	float: left;
  
	padding: 20px;
  
	width: 50%;
  
	background-color: light-blue;
  
	height: 500px; /* only for demonstration, should be removed */
	

}

#a {
	position: absolute;
	top: 42%;
	left: 60%;
}


section:after {
  
		content: "";
  
		display: table;
  
		clear: both;

	}
.topnav {
  overflow: hidden;
  background-color: #333;
}

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
	border-right: 1px solid #bbb;
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

.navbar a:hover {
	background-color: red;
}

body{
  background-image: linear-gradient(to right, rgba(255,0,0,0), rgba(255,25,0,1)); /* Standard syntax (must be last) */
}

.footer {
  
   background-color: grey;
   color: white;
   
}
</style>

		 
  <title> information </title>

</head>

<body >
<br>
<aside>
<img src = "bg3_blood.jpg" alt = "food" height = "100" width = "100" align="left">
</aside>
<h1 style="color:black">
<center> Blood Bank Management System </center></h1>
	<br>
	<br>
	<nav class="navbar">
		<div class="topnav">
			<ul>


				<li><a  href="home.jsp">HOME</a></li>
				<li><a  href="Donor.jsp">DONOR</a></li>
				<li><a href="AllDonors.jsp">ALL DONORS</a></li>
				<li><a href="Patient.html">PATIENT</a></li>
				<li><a href="s_id.jsp">SEARCH DONOR</a></li>
				<li><a href="AllPatient.jsp">ALL PATIENT</a></li>
				<li><a  href="sp_id.jsp">SEARCH PATIENT</a></li>
				<li><a href="blood_details.jsp">BLOOD STOCK</a></li>
				<li style="float: right"><a class="active" href="1.jsp"> About Us </a></li>

			</ul>
		</div>
	</nav>




<section>

<article>
<h2 style="color:black">
<i>About Us</i>
</h2>
<aside align="left">
<p>
Many people who have surgery need blood transfusions because they lose blood during their operations.Some people who have serious 
by accidents.Some people need blood or parts of blood because of illnesses. You may need a blood transfusion if you have:
  <ol>
  <li>   A severe infection or liver disease that stops your body from properly making blood or some parts of blood.</li>
<li>    An illness that causes anaemia, such as kidney disease or cancer.</li>
 <li>   A bleeding disorder, such as hemophilia or thrombocytopenia.</li>
</ol>
</p>
<br><br><br><br>
<p>
There is no restriction on anyone that everybody should do blood donation.But it is our responsibility to donate blood and save many lives.
This is the importance of the blood transfusion.
</p>
	
<p>
	Our blood bank management supply the blood and help the hospital to maintain the blood bank recorded as well as the patient record which get the blood from this blood bank.It will help hospital management for handling of the  blood bank records and as well as the patient record in the easy way.
</p> 
</aside>
</article>

<aside align="right">
<img id="a" src = "7.png" alt = "food" height = "400" width = "400" align="right">
</aside>
</section>
<div class="footer">
 
<br>
CONTACT US:7780998056
<br>
Address:
<br>
Katraj
Maharashtra (India).
<br>
Email-id: 
<br>
</p>
</div>
</body>
</HTML>