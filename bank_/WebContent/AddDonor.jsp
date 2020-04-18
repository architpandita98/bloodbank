<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%

String First_Name=request.getParameter("First_Name");
String Last_Name=request.getParameter("Last_Name");
String Gender=request.getParameter("Gender");
String Weight=request.getParameter("Weight");
String Phone_number=request.getParameter("Phone_number");
String Phone_number1=request.getParameter("Phone_number2");

String City=request.getParameter("City");
String Donor_Donate_Ratio=request.getParameter("Select");
String receptionist=request.getParameter("receptionist");

   
    String connectionURL = "jdbc:mysql://localhost:3306/bank";
   	 Connection connection = null;
     PreparedStatement pstatement = null, pstatement1 = null, pstatement2 = null;
     ResultSet rs= null,rs1=null;
     Class.forName("com.mysql.jdbc.Driver");
    	      int updateQuery = 0;
     
         try {
              connection = DriverManager.getConnection(connectionURL, "archit", "Archit@1234");
                            // sql query to insert values in the secified table.
              String queryString = "INSERT INTO donor1 (First_Name,Last_Name,Gender,Weight,City,Donor_Donate_Ratio,added_by) VALUES (?,?,?,?,?,?,?)";
              String queryString1 = "INSERT INTO donor_mob (Donor_ID, Phone_number) VALUES (?,?)";
              String queryString2 = "INSERT INTO donor_mob (Donor_ID, Phone_number) VALUES (?,?)";
				
                            /* createStatement() is used for create statement
              object that is used for 
		sending sql statements to the specified database. */
              pstatement = connection.prepareStatement(queryString);
              pstatement1 = connection.prepareStatement(queryString1);
              pstatement2 = connection.prepareStatement(queryString2);

//              pstatement.setString(1, Donor_ID);
              String qry = "select last_insert_id();";
              
              int x=0;
              PreparedStatement ps = connection.prepareStatement(qry);
              rs1=ps.executeQuery();
              if(rs1.next())
              {
            	  x=rs1.getInt(1);
              	
              }             
              pstatement.setString(1, First_Name);
              pstatement.setString(2, Last_Name);
              pstatement.setString(3, Gender);
			  pstatement.setString(4, Weight);
			  pstatement.setString(5, City);
			  
			  pstatement.setString(6, Donor_Donate_Ratio);
			  pstatement.setString(7, receptionist);
			  /* pstatement.setString(8, Packets);
			  pstatement.setString(9, Blood_Group); */
              updateQuery = pstatement.executeUpdate();
			  rs  = ps.executeQuery();
              rs.next();
              int id = rs.getInt(1);
              pstatement1.setInt(1, id);
              if (updateQuery != 0)

			  pstatement2.setInt(1, id);
			  pstatement1.setString(2, Phone_number);
			  pstatement2.setString(2, Phone_number1);
			  
			  updateQuery = pstatement1.executeUpdate();
			  updateQuery = pstatement2.executeUpdate();
			  
                            if (updateQuery != 0) { %>
	           <br>
	           <TABLE style="background-color: #E3E4FA;" WIDTH="30%" border="1">
		      <%
		      session.setAttribute("x", id);
		      response.sendRedirect("Donor.jsp");
		      %>
		  	 </table>
              <%
              }
            } 
            catch (Exception ex) {
            out.println("Unable to connect to database."+ex);
   
               }
            finally {
                // close all the connections.
                pstatement.close();
                connection.close();
            }
%>