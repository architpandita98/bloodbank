<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
 String Donor_ID=request.getParameter("Donor_ID"); 
String Blood_Group=request.getParameter("select");
/* String Packets=request.getParameter("Packets"); */
 /* String Packet_ID=request.getParameter("Packet_id"); */
String Donation_Date=request.getParameter("dd");
String Expiry_Date=request.getParameter("ed");
//String Gender=request.getParameter("Gender");

   
    String connectionURL = "jdbc:mysql://localhost:3306/bank";
   	 Connection connection = null;
     PreparedStatement pstatement = null;
     Class.forName("com.mysql.jdbc.Driver");
    	      int updateQuery = 0;
     
         try {
              connection = DriverManager.getConnection(connectionURL, "archit", "Archit@1234");
                            // sql query to insert values in the secified table.
              String queryString = "INSERT INTO blood1 (Donor_ID,Blood_Group,Donation_Date,Expiry_Date) VALUES (?,?,?,?)";
              	      /* createStatement() is used for create statement
              object that is used for 
		sending sql statements to the specified database. */
              pstatement = connection.prepareStatement(queryString);
              /* pstatement.setString(1, Packet_ID); */
              pstatement.setString(1, Donor_ID);
              pstatement.setString(2, Blood_Group);
             /*  pstatement.setString(2, Packets);  */
              pstatement.setString(3, Donation_Date);
              pstatement.setString(4, Expiry_Date);
              
              updateQuery = pstatement.executeUpdate();
                            if (updateQuery != 0) { %>
	           <br>
	           <TABLE style="background-color: #E3E4FA;" WIDTH="30%" border="1">
		      <tr><th>Data is inserted successfully 
                    in database.</th></tr>
		  	 </table>
              <%
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