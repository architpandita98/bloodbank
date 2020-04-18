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

<body>

<h1>Retrieve data from database in jsp</h1>
<table border="1" width=100%>
<tr>
				<th>DONOR_Id</th>
				<th>Packet_Id</th>
				<th>BLOOD_Grp</th>
				<th>Packets</th>
				</tr> 
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from blood";
rs = statement.executeQuery(sql);
while(rs.next()){
%>
	<tr>
				<td><%= rs.getString(4)%></td>
				<td><%= rs.getString(3)%></td>
				<td><%= rs.getString(1)%></td>
				<td><%= rs.getString(2)%></td>
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
</html>