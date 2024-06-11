<%@ page language="java" import="com.ecourier.DBConnectivity, java.sql.*"%>
<%

String username = request.getParameter("name");
String email = request.getParameter("email");
String pass= request.getParameter("password");
String phn = request.getParameter("phone");
String add = request.getParameter("address");



int status =0;

try {
    
    DBConnectivity con = new DBConnectivity();
    System.out.println("Connection successful");

    String str =  "INSERT INTO e_courier_system.employee(name, email,password,phone ,address)" +
    		"VALUES ('"+ username +"', '"+ email +"', '"+ pass +"','"+ phn +"','"+ add +"')";  
   
    status = con.storeData(str);
    if(status>0) {
    	request.setAttribute("status", "success");
    	response.sendRedirect("/ECourier/admin_dashboard.jsp");
    }
    else {
    	request.setAttribute("status","failed");
    }
} 
	catch (Exception e) {
    	System.out.println(e);
    	response.getWriter().println("Error: " + e.getMessage());
	}

%>
