<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
/* String Patient_ID=request.getParameter("PID"); */
String First_Name=request.getParameter("FName");
String Last_Name=request.getParameter("LName");
String Blood_Group=request.getParameter("select");
String Department_Name=request.getParameter("s1");
String Room_No=request.getParameter("RNO");
String packets=request.getParameter("packets");
String receptionist=request.getParameter("receptionist");

   
    String connectionURL = "jdbc:mysql://localhost:3306/bank";
   	 Connection connection = null;
     PreparedStatement pstatement = null, pstatement1 = null;
     ResultSet rs=null;
     Class.forName("com.mysql.jdbc.Driver");
    	      int updateQuery = 0;
     
         try {
              connection = DriverManager.getConnection(connectionURL, "archit", "Archit@1234");
                            // sql query to insert values in the secified table.
              String queryString = "INSERT INTO patient (First_Name,Last_Name,Blood_Group,Department,Room_No,packets,added_by) VALUES (?,?,?,?,?,?,?)";
              String qry = "select * from blood_details where Blood_group = ? and No_of_Packet >= ?;";
              
                            /* createStatement() is used for create statement
              object that is used for 
		sending sql statements to the specified database. */
              pstatement = connection.prepareStatement(queryString);
                      pstatement1 = connection.prepareStatement(qry);
            		  pstatement1.setString(1, Blood_Group);
            		  pstatement1.setString(2, packets);
            		 rs = pstatement1.executeQuery();
            		 if(rs.next() == false)
            		 {
            			 out.println("Required Bloodgrp is NOT in stock.");
            			 response.setHeader("Refresh", "5;url=Patient.html");
            		 }
            		 else{
             /*  pstatement.setString(1, Patient_ID);*/  
             pstatement.setString(1, First_Name);
              pstatement.setString(2, Last_Name);
              pstatement.setString(3, Blood_Group);
			  pstatement.setString(4, Department_Name);
			  pstatement.setString(5, Room_No);
			  pstatement.setString(6, packets);
			  pstatement.setString(7, receptionist);
			  
              updateQuery = pstatement.executeUpdate();
              
                            if (updateQuery != 0) { %>
	           <br>
	           <TABLE style="background-color: #E3E4FA;" WIDTH="30%" border="1">
		      <tr><th>Data is inserted successfully 
                    in database.</th></tr>
		  	 </table>executeUpdate
              <%
              }
            		 }
            } 
            catch (Exception ex) {
            out.println("Unable to connect to batabase."+ex);
   
               }
            finally {
                // close all the connections.
                pstatement.close();
                connection.close();
            }
%>