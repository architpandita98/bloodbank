<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/bank";%>
<%!String user = "archit";%>
<%!String psw = "Archit@1234";%>
<%
String Donor_ID = request.getParameter("Donor_ID");
String First_Name=request.getParameter("First_Name");
String Last_Name=request.getParameter("Last_Name");
String Gender=request.getParameter("Gender");
String Weight=request.getParameter("Weight");
if(Donor_ID!= null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(Donor_ID);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update donor1 set Donor_ID=?,First_Name=?,Last_Name=?,Gender=?,Weight=? where Donor_ID="+Donor_ID;
ps = con.prepareStatement(sql);
ps.setString(1,Donor_ID);
ps.setString(2, First_Name);
ps.setString(3, Last_Name);
ps.setString(4, Gender);
ps.setString(5, Weight);
int i = ps.executeUpdate();
if(i > 0)
{
/* out.print("Record Updated Successfully"); */
	response.sendRedirect("AllDonors.jsp");
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