<%@ page language="java" import="com.ecourier.DBConnectivity, java.sql.*"%>
<%

String username = request.getParameter("name");
String email = request.getParameter("email");
String message = request.getParameter("message");



int status =0;

try {
    
	 DBConnectivity con = new DBConnectivity();
	 System.out.println("Connection successful");

    String str =  "INSERT INTO e_courier_system.contact_us(name,email,message)" +
    		"VALUES ('"+ username +"', '"+ email +"', '"+ message +"')";   
   
    status = con.storeData(str);
    if(status>0) {
    	request.setAttribute("status", "success");
    	response.sendRedirect("/ECourier/index.jsp");
    }
    else {
    	request.setAttribute("status","failed");
    }
} 
	catch (Exception e) {
    	System.out.println(e);
	}

%>
