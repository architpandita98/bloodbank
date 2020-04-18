 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String Donor_ID = request.getParameter("Donor_ID");
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
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from donor1 where Donor_ID="+Donor_ID;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
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

</style>
<body>

<form method="post" action="update-process.jsp">
<h3>Update data from database with DONOR_ID</h3>
<input type="hidden" name="Donor_ID" value="<%=resultSet.getString("Donor_ID") %>">
<input type="text" name="Donor_ID" value="<%=resultSet.getString("Donor_ID") %>">
<br>
First name:<br>
<input type="text" name="First_Name" value="<%=resultSet.getString("First_Name") %>">
<br>
Last name:<br>
<input type="text" name="Last_Name" value="<%=resultSet.getString("Last_Name") %>">
<br>
Gender:<br>
<input type="text" name="Gender" value="<%=resultSet.getString("Gender") %>">
<br>
Weight:<br>
<input type="text" name="Weight" value="<%=resultSet.getString("Weight") %>">
<br>
Phone_number:<br>
<input type="text" name="Phone_number" value="<%=resultSet.getString("Phone_number") %>">
<br>
<button class="button button2">Submit</button>
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html> 