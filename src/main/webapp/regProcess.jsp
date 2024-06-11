<%@ page language="java" import="com.ecourier.DBConnectivity"%>
<%

String name = request.getParameter("name");
String email = request.getParameter("email");
String pwd = request.getParameter("pass");
String rpwd = request.getParameter("re_pass");
String phn = request.getParameter("contact");


int status = 0;

try {
	
	 DBConnectivity con = new DBConnectivity();
	 System.out.println("Connection successful");

    String str =  "INSERT INTO e_courier_system.user_reg(name,email,password,r_password,contact)" +
    		"VALUES ('"+ name +"', '"+ email +"', '"+ pwd +"', '"+ rpwd +"', '"+ phn +"')";   
   
    status = con.storeData(str);
    if(status>0) {
    	request.setAttribute("status", "success");
    	response.sendRedirect("/ECourier/login.jsp");
    }
    else {
    	request.setAttribute("status","failed");
    }	
  
}
catch(Exception e) {
	    System.out.println(e);
}


%>