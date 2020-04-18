<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "bank";
String userid = "archit";
String password = "Archit@1234";
String Patient_ID=request.getParameter("Patient_ID");

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
<head>
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


#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
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
	<h1 style="color: black">
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
				<li><a  href="Patient.html">PATIENT</a></li>
				<li><a  href="s_id.jsp">SEARCH DONOR</a></li>
				<li><a href="AllPatient.jsp">ALL PATIENT</a></li>
				<li><a class="active" href="sp_id.jsp">SEARCH PATIENT</a></li>
				<li><a href="blood_details.jsp">BLOOD STOCK</a></li>
				<li style="float: right"><a  href="1.jsp"> About Us </a></li>
			</ul>
		</div>
	</nav>
	<br>
	<!-- Search label -->
	<!-- <div class="container"> -->
	<form class="form-inline" method="post" action="sp_id.jsp">
		<input type="text" name="Patient_ID" class="form-control"
			placeholder="Search Patient_ID ">
		<button type="submit" name="save" class="btn btn-primary">Search</button><br/><br>
		<input type="text" name="Patient_FName" class="form-control"
			placeholder="Search by Patient_Name ">
		<button type="submit" name="save" class="btn btn-primary">Search</button>
	</form>
	<!-- </div> -->


	<br>
	<br>
	<table id="customers">
		<tr>
			<th>Patient_ID</th>
			<th>FIRST_NAME</th>
			<th>LAST_NAME</th>
			<th>Blood_Group</th>
			<th>Department</th>
			<th>Room_No</th>
			<th>packets</th>
			<th>ADDED_BY</th>
		</tr>



		<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
if(Patient_ID.isEmpty()){
	String Patient_FName = "\'";
	Patient_FName=Patient_FName.concat(request.getParameter("Patient_FName"));

	Patient_FName = Patient_FName.concat("\'");
	String sql="select * from patient where First_Name="+Patient_FName;
	rs = statement.executeQuery(sql);

	while(rs.next()){
	%>
			<tr>
				<td><%= rs.getString(1)%></td>
				<td><%= rs.getString(2)%></td>
				<td><%= rs.getString(3)%></td>
				<td><%= rs.getString(4)%></td>
				<td><%= rs.getString(5)%></td>
				<td><%= rs.getString(6)%></td>
				<td><%= rs.getString(7)%></td>
				<td><%= rs.getString(8)%></td>
			</tr>

			<%
	}
	connection.close();
}
else{
String sql="select * from patient where Patient_ID="+Patient_ID;
rs = statement.executeQuery(sql);

while(rs.next()){
%>
		<tr>
			<td><%= rs.getString(1)%></td>
			<td><%= rs.getString(2)%></td>
			<td><%= rs.getString(3)%></td>
			<td><%= rs.getString(4)%></td>
			<td><%= rs.getString(5)%></td>
			<td><%= rs.getString(6)%></td>
			<td><%= rs.getString(7)%></td>
			<td><%= rs.getString(8)%></td>
		</tr>

		<%
}
connection.close();
}
}catch (Exception e) {
e.printStackTrace();
}
%>
	</table>
</body>
</html>