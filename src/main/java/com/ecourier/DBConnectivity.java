package com.ecourier;
import java.sql.*;


public class DBConnectivity {
	static Connection con = null;
	
	
	public ResultSet getData(String query) {
		ResultSet rs = null;
		
		try {
			getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			
			rs = ps.executeQuery();
			
			return rs;
		}
		
		catch(Exception e) {
			System.out.println(e);
		}
		
		return rs;
	}

	public int storeData(String query) {
		int status = 0;
		
		try {
			getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			
			status = ps.executeUpdate();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
	
	
	public static Connection getConnection()throws SQLException{
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");        	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_courier_system?useSSL=false",
				"root","0000");
		}
		catch(ClassNotFoundException e) {
			throw new SQLException("Database driver not found", e);
		}
		return con;
	}
	  

}


