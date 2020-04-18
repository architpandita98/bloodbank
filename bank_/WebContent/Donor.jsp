<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html>
<head>

<title>donor details</title>
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

#a {
	position: absolute;
	top: 45%;
	left: 50%;
}

#b {
	position: absolute;
	top: 132%;
	left: 50%;
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
	background-color:red;
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
</head>
<body >
	<br>
	<aside>
		<img src="bg3_blood.jpg" alt="food" height="100" width="100"
			align="left">
	</aside>
	<h1 style="color: rgba(0, 0, 0, 0.897)">
		<center> Blood Bank Management System
		</center>
	</h1>
	<br>
	<br>
	<nav class="navbar">
		<div class="topnav">
			<ul>
				
				<li><a href="home.jsp">HOME</a></li>
				<li><a class="active" href="Donor.jsp">DONOR</a></li>
				<li><a href="AllDonors.jsp">ALL DONORS</a></li>
				<li><a href="patient.jsp">PATIENT</a></li>
				<li><a href="s_id.jsp">SEARCH DONOR</a></li>
				<li><a href="AllPatient.jsp">ALL PATIENT</a></li>
				<li><a  href="sp_id.jsp">SEARCH PATIENT</a></li>
				<li><a href="blood_details.jsp">BLOOD STOCK</a></li>
				<li style="float: right"><a href="1.jsp"> About Us </a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>

	<fieldset>

		<img id="a" src="donor.jpeg" alt="food" height="300" width="300"
			align="right">

		<legend>
			<h3 >Donor Details</h3>
			<td>DONOR ID</td>		</legend>

		<form action="AddDonor.jsp">
			<table align="" cellspacing="10">

					<%
						Integer id=(Integer)session.getAttribute("x");
						out.println(id);
						
					%>

				<tr>
					<td>FIRST NAME</td>
					<td><input type="text" name="First_Name" maxlength="30"
						required /></td>
				</tr>

				<tr>
					<td>LAST NAME</td>
					<td><input type="text" name="Last_Name" maxlength="30"
						required /></td>
				</tr>

				<tr>
					<td>GENDER</td>
					<td><input type="radio" name="Gender" value="Male" />Male <input
						type="radio" name="Gender" value="Female" required/>Female</td>
				</tr>

				<tr>
					<td>WEIGHT</td>
					<td><input type="text" name="Weight" maxlength="3" required />
					</td>
				</tr>

				<tr>
					<td>CITY</td>
					<td><input type="text" name="City" maxlength="10" required/>
					</td>
				</tr>
				<tr>
					<td>MOBILE NUMBER 1</td>
					<td><input type="text" name="Phone_number" pattern="[789][0-9]{9}" maxlength="10" required/>
					</td>
				</tr>
				<tr>
					<td>MOBILE NUMBER 2</td>
					<td><input type="text" name="Phone_number2" pattern="[789][0-9]{9}" maxlength="10" required/>
					</td>
				</tr>
				
				
							 <tr>
<td> How often you donate </td>
<td>
  <select name="Select">
      <option value="">Select</option>
      <option value="Donating first time"> Donating first time </option>
      <option value="Regular Donor"> Regular Donor</option>
      <option value="On the require basis"> On the require basis</option>
    </select>
</td>


</tr>
 
				<tr>
					<td>ADDED BY</td>
					<td><input type="text"  name="receptionist" value="<%= session.getAttribute("recep") %>" />
					</td>
				<tr> 
				<!-- <tr>
					<td>Packets</td>
					<td><input type="text" name="Packets" maxlength="30" required />
					</td>
				</tr> -->
				<!-- <tr>
					<td>Blood Group</td>
					<td><input type="text" name="Blood_Group" maxlength="30"
						required /></td>
				</tr> -->
			</table>
			<br>
			<br>
			<br>
			<br>
			<br>
			<center>
				<button type="submit" value="Submit" class="button button2">Submit</button>
				<button type="reset" value="Reset" class="button button2">Reset</button>

			</center>

		</form>
	</fieldset>
	
	
	<fieldset>
		<img id="b" src="bg4_blood.jpg" alt="food" height="210" width="300"
			align="right">
		<legend>
			<h3 style="color: red">Blood Information</h3>
		</legend>

		<form action="Addblood.jsp">
			<table align="" cellspacing="10">

				<!----- First Name ---------------------------------------------------------->
				<tr>
					<td>Donor_ID</td>
					<td><input type="text" name="Donor_ID" maxlength="10" /></td>
				</tr>

				<!-- <tr>
					<td>Packet_ID</td>
					<td><input type="text" name="Packet_id" maxlength="10" /></td>
				</tr>  -->
				<tr>
					<td>Donation_Date</td>
					<td><input type="date" name="dd" required/></td>
				</tr>
				
				<tr>
					<td>Expiry_Date</td>
					<td><input type="date" name="ed" required/></td>
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
				
				

				<!-- <tr>
<td> No. of packets blood donated</td>
<td><input type="text" name="Packets" maxlength="2" required/>
</td>
</tr> -->

	



			</table>
			<br>
			<br>
			<br>
			<br>
			<center>
				<br>
				<br>
				<br>
				<br>
				<button class="button button2">Submit</button>
				<button type="reset" value="Reset" class="button button2">Reset</button>
			</center>
	</fieldset><br><br>
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
@ 2019 Indian Blood Donors. All right reserved.</p>
</div>
	</form>
	
</body>
</html>