<%@ page language="java" import="com.ecourier.DBConnectivity"%>
<%

String sndname = request.getParameter("sendername");
String sndphn = request.getParameter("senderphone");
String sndadd = request.getParameter("senderaddress");

String recname = request.getParameter("receivername");
String recphn = request.getParameter("receiverphone");
String recadd = request.getParameter("receiveraddress");

String srnum = request.getParameter("serialnumber");
String pcltype = request.getParameter("parceltype");
String pclwt = request.getParameter("parcelweight");
String pclprc = request.getParameter("pricee");
String totprc = request.getParameter("Totalprice");

String payment = request.getParameter("paymentstatus");

int status = 0;

try {
	
	 DBConnectivity con = new DBConnectivity();
	 System.out.println("Connection successful");

    
    String str =  "INSERT INTO e_courier_system.parcels(senderName, senderPhone, senderAddress, recName, recPhone, recAddress, srNum, parcelType, parcelWeight, price, totprc, payment)" +
            "VALUES ('"+ sndname +"', '"+ sndphn +"', '"+ sndadd +"', '"+ recname +"', '"+ recphn +"', '"+ recadd +"', '"+ srnum +"', '"+ pcltype +"', '"+ pclwt +"', '"+ pclprc +"', '"+ totprc +"','"+ payment +"')";   

    status = con.storeData(str);
    if(status>0) {
    	request.setAttribute("status", "success");
    	response.sendRedirect("/ECourier/employee_dashboard.jsp");
    }
    else {
    	request.setAttribute("status","failed");
    }	
  
}
catch(Exception e) {
	   e.printStackTrace();
}


%>