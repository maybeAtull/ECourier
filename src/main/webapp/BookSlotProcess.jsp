<%@ page language="java" import="com.ecourier.DBConnectivity, java.sql.*"%>
<%

String username = request.getParameter("name");
String add = request.getParameter("address");
String phn = request.getParameter("phone");
String dte = request.getParameter("date");
String tim = request.getParameter("time");



int status =0;

try {
    
	 DBConnectivity con = new DBConnectivity();
	 System.out.println("Connection successful");

    String str =  "INSERT INTO e_courier_system.book_slot(name, address, phone, date, time)" +
    		"VALUES ('"+ username +"', '"+ add +"', '"+ phn +"','"+ dte +"','"+ tim +"')";   
   
    status = con.storeData(str);
    if(status>0) {
    	request.setAttribute("status", "success");
    	response.sendRedirect("/ECourier/user_dashboard.jsp");
    }
    else {
    	request.setAttribute("status","failed");
    }
} 
	catch (Exception e) {
    	System.out.println(e);
	}

%>
