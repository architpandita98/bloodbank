 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String Donor_ID=request.getParameter("Donor_ID");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "archit", "Archit@1234");
Statement st=conn.createStatement();
int i=st.executeUpdate("delete from donor1 where Donor_ID="+Donor_ID);
/* out.println("Data Deleted Successfully!");  */
response.sendRedirect("AllDonors.jsp"); 
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 