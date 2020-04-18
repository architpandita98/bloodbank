
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.sql.*,java.io.*,javax.servlet.http.*" %>

<%	 String user = request.getParameter("user_name");    
	    String pwd = request.getParameter("pass");
	    String name = request.getParameter("name");
	    String email = request.getParameter("email");
	    String mob = request.getParameter("mob");

	    try {
	    Class.forName("com.mysql.jdbc.Driver");
	    }catch(ClassNotFoundException e){e.printStackTrace();}
	    try{
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","archit", "Archit@1234");
	    Statement st = con.createStatement();
	    PreparedStatement pstatement = null;
	    int updateQuery = 0;
	    //ResultSet rs;
	             String queryString = "INSERT INTO receptionist(user_name,name,email,password,Phone_Number) VALUES (?, ?, ?, ?, ?)";
	         
	              pstatement = con.prepareStatement(queryString);
	              pstatement.setString(1, user);
				  pstatement.setString(2, name);
				  pstatement.setString(3, email);
				  pstatement.setString(4, pwd);
				  pstatement.setString(5, mob);
	              updateQuery = pstatement.executeUpdate();
	              st.close();
	              con.close();
	     if (updateQuery>0) {
	        //session.setAttribute("userid", user);
	       response.sendRedirect("login.jsp");
	        // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
	    } else {
	        response.sendRedirect("signup.jsp");
	    }
	     
	    } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  		

 %>