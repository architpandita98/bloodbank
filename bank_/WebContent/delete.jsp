 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String Patient_ID=request.getParameter("Patient_ID");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "archit", "Archit@1234");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM patient WHERE Patient_ID="+Patient_ID);
/* out.println("Data Deleted Successfully!"); */
response.sendRedirect("AllPatient.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 