<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/bank";%>
<%!String user = "archit";%>
<%!String psw = "Archit@1234";%>
<%
String Patient_ID = request.getParameter("Patient_ID");
String First_Name=request.getParameter("First_Name");
String Last_Name=request.getParameter("Last_Name");
String Blood_Group=request.getParameter("Blood_Group");
String Room_No=request.getParameter("Room_No");
String packets=request.getParameter("packets");
if(Patient_ID!= null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(Patient_ID);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update patient set Patient_ID=?,First_Name=?,Last_Name=?,Blood_Group=?,Room_No=?,packets=? where Patient_ID="+Patient_ID;
ps = con.prepareStatement(sql);
ps.setString(1,Patient_ID);
ps.setString(2, First_Name);
ps.setString(3, Last_Name);
ps.setString(4, Blood_Group);
ps.setString(5, Room_No);
ps.setString(6, packets);
int i = ps.executeUpdate();
if(i > 0)
{
	response.sendRedirect("AllPatient.jsp");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%> 