package com.org.example;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

public class MySQLAccess 
{
	public static Connection InitializeDatabase() throws ClassNotFoundException, SQLException{
		Connection conn;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/licencea","root","root");
		System.out.println("Connection successfully connected......");
		return conn;
	}

}
