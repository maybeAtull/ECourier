<%@ page language="java" import="com.ecourier.DBConnectivity, java.sql.*"%>
<%

String username = request.getParameter("name");
String email = request.getParameter("email");
String phn = request.getParameter("phone");
String type = request.getParameter("ftype");
String msg = request.getParameter("message");



int status =0;

try {
    
	 DBConnectivity con = new DBConnectivity();
	 System.out.println("Connection successful");

    String str =  "INSERT INTO e_courier_system.feedback(cust_name, email, f_type, message, phone)" +
    		"VALUES ('"+ username +"', '"+ email +"', '"+ type +"','"+ msg +"','"+ phn +"')";   
   
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
