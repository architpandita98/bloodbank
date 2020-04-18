<%-- <%@page import="java.sql.DriverManager"%>
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
<body>
<br>
<h1 style="color:red">
<center><u>  Blood Bank Management System  </u></center></h1>
<br>
<br>
<nav class="navbar">
  <div class="topnav">
<ul>


<li><a   href="home.jsp">HOME</a></li>
<li><a  href="Donor.html">Donor </a></li>
<li><a   class="active" href="AllDonors.jsp">AllDonors</a></li>
<li><a  href="Patient.html">Patient</a></li>
<li><a  href="s_id.jsp">Search_Donor</a></li>
<li><a  href="AllPatient.jsp">ALL_PATIENT</a></li>
<li><a  href="home.jsp">Blood Details</a></li>
<li style="float:right"><a href="1.jsp"> About Us </a></li>


</ul>
</div></nav>
<br>
<br>
<table id="customers">
  <tr>
  				 <th>DONOR_Id</th>
				<th>FIRST_NAME</th>
				<th>LAST_NAME</th>
				<th>Gender</th>
				<th>WEIGHT</th>
				<th>Mobile Number</th>
				<th>ADDED_BY</th>
  </tr>

				
				
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from donor";
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
				</tr> 

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html> --%>

 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "bank";
String userid = "archit";
String password = "Archit@1234";
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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

<body>
	<br>
	<aside>
		<img src="bg3_blood.jpg" alt="food" height="100" width="100"
			align="left">
	</aside>
	<h1 style="color:rgba(0, 0, 0, 0.897)">
<center>  Blood Bank Management System  </center></h1>
	<br>
	<br>
	<nav class="navbar">
		<div class="topnav">
			<ul>


				<li><a  href="home.jsp">HOME</a></li>
				<li><a  href="Donor.jsp">DONOR</a></li>
				<li><a class="active" href="AllDonors.jsp">ALL DONORS</a></li>
				<li><a href="patient.jsp">PATIENT</a></li>
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
	<table id="customers">
		<tr>
			<th>DONOR_ID</th>
			<th>FIRST_NAME</th>
			<th>LAST_NAME</th>
			<th>Gender</th>
			<th>WEIGHT</th>
			<th>CITY</th>
			<th>Donor_DONATION</th>
			<th>ADDED_BY</th>
			<!-- <th>Mobile Number2</th> -->
			<th>PACKET ID</th>
			<!-- <th>Donor_Donate_Ratio</th> -->
			<!-- <th>ADDED_BY</th> -->
			<!-- <th>PACKETS_DONATED</th> -->
			<th>BLD_GRP</th>
			<!-- <th>PACKET_ID</th> -->
			<th>ACTION</th>
			<th>UPDATE</th>

		</tr>

		<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
/* String sql ="select * from donor"; */
String sql = "select * from donor1 d,blood1 b where d.Donor_ID = b.Donor_ID ;";
rs = statement.executeQuery(sql);
int i=0;
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
			 <td><%= rs.getString(9)%></td>
			 <td><%= rs.getString(11)%></td>
			 

		 <td><a href="delete_donor.jsp?Donor_ID=<%=rs.getString("Donor_ID") %>"><button
						type="button" class="delete">Delete</button></a></td>
		<td><a href="update.jsp?Donor_ID=<%=rs.getString("Donor_ID")%>"><button 
		type="button" class="update">update</button></a></td>
					
		</tr>
		<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
	</table>
</body>
</html> 