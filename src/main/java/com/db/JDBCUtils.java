package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class JDBCUtils {
private Connection conn=null;
private PreparedStatement pstmt=null;

//鏈接數據庫

public Connection connect() {
	String jdbcUrl = "jdbc:mysql://localhost:3306/workjb?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
	String user = "root";
	String password = "5312448th";
	String driverClass="com.mysql.cj.jdbc.Driver";
	
	try {
		Class.forName(driverClass);
		conn=DriverManager.getConnection(jdbcUrl, user, password);
		} catch (Exception e) {
		e.printStackTrace();
		}
	return conn;
	
		}
		
public void close(Connection conn,PreparedStatement pstmt,ResultSet result) {
	if(conn !=null) {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	if(pstmt !=null) {
		try {
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	if(result !=null) {
		try {
			result.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	}
	
	
	
}


