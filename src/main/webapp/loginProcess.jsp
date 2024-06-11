<%@ page language="java" import="com.ecourier.DBConnectivity, java.sql.*"%>
<%

String username = request.getParameter("username");
String password = request.getParameter("password");


ResultSet rs = null;

try {
	 DBConnectivity con = new DBConnectivity();
	 System.out.println("Connection successful");


   
    String userQuery = "SELECT * FROM e_courier_system.user_reg WHERE email='" + username + "' AND password='" + password + "'";
    rs = con.getData(userQuery);

    if (rs.next()) {
        System.out.println("Successful User Login");
        request.setAttribute("status", "success");
        response.sendRedirect("/ECourier/user_dashboard.jsp");
    } else {
        
        String adminQuery = "SELECT * FROM e_courier_system.admin WHERE email='" + username + "' AND password='" + password + "'";
        rs = con.getData(adminQuery);

        if (rs.next()) {
            System.out.println("Successful Admin Login");
            request.setAttribute("status", "success");
            response.sendRedirect("/ECourier/admin_dashboard.jsp");
        } else {
            
            String employeeQuery = "SELECT * FROM e_courier_system.employee WHERE email='" + username + "' AND password='" + password + "'";
            rs = con.getData(employeeQuery);

            if (rs.next()) {
                System.out.println("Successful Employee Login");
                request.setAttribute("status", "success");
                response.sendRedirect("/ECourier/employee_dashboard.jsp");
            } else {
                
                System.out.println("Login Failed");
                request.setAttribute("status", "failed");
                response.sendRedirect("/ECourier/login.jsp");
            }
        }
    }
} catch (Exception e) {
    System.out.println(e);
}

%>
