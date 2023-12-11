package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//對數據庫SQL的連結及操作
public class DBconn {
		static String url = "jdbc:mysql://localhost:3306/workjb?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
		static String user = "root";
		static String password = "5312448th";
		
		static Connection conn=null;
		static ResultSet rs=null;
		static PreparedStatement ps=null;
		
		//定義一個方法來與SQL數據庫連結
		public static void init() {
			
				try {
			//驅動包
					Class.forName("com.mysql.cj.jdbc.Driver");
					
					conn = DriverManager.getConnection(url, user, password);
					
				} catch (Exception e) {					
					e.printStackTrace();
				}
     }
		public static int addUpdDel(String sql) {
			int i=0;
			
			try {
				PreparedStatement ps=conn.prepareStatement(sql);
				 i=ps.executeUpdate();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			
			return i;		 
			
	 }
		public static ResultSet selectSql(String sql) {
			
			try {
				ps=conn.prepareStatement(sql);
				rs=ps.executeQuery(sql);
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			return rs;
		}
	public static void closeConn() {
		try {
			conn.close();
		} catch (SQLException e) {
			System.out.println("sql数据库关闭异常");
			e.printStackTrace();
		}
		
	}
			
			
			
			
			
			
			
			
			
			
		
}
 
