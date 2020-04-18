<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%String recep=request.getParameter("recep"); %>
 --%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Donor Details</title>
<style>

.button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
}

.button2:hover {
	box-shadow: 0 20px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
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
.footer {
 
   background-color: grey;
   color: white;
   
}

#a {
	position: absolute;
	top: 45%;
	left: 60%;
}

body{
  background-image: linear-gradient(to right, rgba(255,0,0,0), rgba(255,25,0,1)); /* Standard syntax (must be last) */
}
</style>
</head>
<body>
	<br>
	<aside>
		<img src="bg3_blood.jpg" alt="food" height="100" width="100"
			align="left">
	</aside>
	<h1 style="color: rgba(0, 0, 0, 0.897)">
		<center>
			Blood Bank Management System 
		</center>
	</h1>
	<br>
	<br>
	<nav class="navbar">
		<div class="topnav">
			<ul>

				<li><a  href="home.jsp">HOME</a></li>
				<li><a  href="Donor.jsp">DONOR</a></li>
				<li><a  href="AllDonors.jsp">ALL DONORS</a></li>
				<li><a class="active" href="patient.jsp">PATIENT</a></li>
				<li><a href="s_id.jsp">SEARCH DONOR</a></li>
				<li><a href="AllPatient.jsp">ALL PATIENT</a></li>
				<li><a  href="sp_id.jsp">SEARCH PATIENT</a></li>
				<li><a href="blood_details.jsp">BLOOD STOCK</a></li>
				<li style="float: right"><a  href="1.jsp"> About Us </a></li>

			</ul>
		</div>
	</nav>
	<br>
	<br>

	<fieldset>
	<img id="a" src="patient.jpg" alt="food" height="250" width="300"
			align="right">
		<legend>
			<h3 style="color: red">Patient Information</h3>
		</legend>

		<form action="Patient.jsp">
			<table align="" cellspacing="10">

				<!----- First Name ---------------------------------------------------------->
				<!-- <tr>
					<td>Patient ID</td>
					<td><input type="text" name="PID" maxlength="3" /></td>
				</tr>
 -->
				<tr>
					<td>First NAME</td>
					<td><input type="text" name="FName" maxlength="30" /></td>
				</tr>

				<tr>
					<td>Last NAME</td>
					<td><input type="text" name="LName" maxlength="30" /></td>
				</tr>

				<tr>
					<td>Blood Group</td>
					<td><select name="select">
							<option value="">Select</option>
							<option value="O+">O+</option>
							<option value="O-">O-</option>
							<option value="A+">A+</option>
							<option value="A-">A-</option>
							<option value="B+">B+</option>
							<option value="B-">B-</option>
							<option value="AB+">AB+</option>
							<option value="AB-">AB-</option>
					</select></td>
				</tr>


				 <tr>
<td> Department Name </td>
<td>
  <select name="s1">
      <option value="">Select</option>
      <option value="Emergency"> Emergency </option>
      <option value="Oncologo"> Oncologo </option>
    </select>
</td>
</tr> 

				<tr>
					<td>Room Number</td>
					<td><input type="text" name="RNO" maxlength="20" /></td>
				</tr>

				<tr>
					<td>Packets_required</td>
					<td><input type="text" name="packets" maxlength="2" /></td>
				</tr>
				
				<tr>
					<td>Added By</td>
					<td><input type="text" name="receptionist" value="<%= session.getAttribute("recep") %>" /></td>
				</tr>
	
			</table>
			<center>
				<button class="button button2">Submit</button>
				<button type="reset" value="Reset" class="button button2">Reset</button>
				</fieldset>
			</center>
		</form><br><br>
		<div class="footer">
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
@ 2016 Indian Blood Donors. All right reserved.</p>
</div>
</body>
</html>