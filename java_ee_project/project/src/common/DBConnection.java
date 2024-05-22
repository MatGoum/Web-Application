package common;

import java.sql.*;

public class DBConnection {
	
	public static void main(String[] args) {
		DBConnection obj =  new DBConnection();
		System.out.println(obj.getConnection());
	}
	
	public Connection getConnection() {
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gym", "root", "");
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return conn;
	}
}
