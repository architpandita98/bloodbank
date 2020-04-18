
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.sql.*,java.io.*,javax.servlet.http.*" %>

<%
		  	String userid = request.getParameter("name");    
		    String pwd = request.getParameter("pass");
		    System.out.println(userid);
		 
		    try {
		    Class.forName("com.mysql.jdbc.Driver");}
		    catch(ClassNotFoundException e){e.printStackTrace();}
		    try{
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","archit", "Archit@1234");
		    Statement st = con.createStatement();
		    ResultSet rs;
		    rs = st.executeQuery("select * from receptionist where user_name='" + userid + "' and password='" + pwd + "'");
		    if (rs.next()) {
			/*
			 * 
			 * session.setAttribute("userid", userid);
			 */		        //out.println("welcome " + userid);
		        //out.println("<a href='logout.jsp'>Log out</a>");
		        response.sendRedirect("home.jsp");
		        session.setAttribute("recep", userid);
		    }
		    else {
		    	response.sendRedirect("login.jsp");
		    }
		    rs.close();
		    con.close();
		    } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}  		

 %>