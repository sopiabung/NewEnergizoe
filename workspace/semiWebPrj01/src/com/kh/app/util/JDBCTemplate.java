package com.kh.app.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCTemplate {

	public static Connection getConnection() {
		
		Connection conn = null;
		
		//드라이버 , url , id , pwd, autoCommit
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id = "ENERGIZOE";
			String pwd = "1234";
			conn = DriverManager.getConnection(url , id , pwd);
			conn.setAutoCommit(false);
			
		} catch (Exception e) {
			System.out.println("[ERROR] 커넥션 가져오는 중 에러 발생");
			e.printStackTrace();
		}finally {
			
		}
		return conn;
	} //getConnection
	
	//commit
	public static void commit(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.commit();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//commit
	
	//rollBack
	public static void rollback(Connection conn) {
		try {
			if(conn != null && !conn.isClosed()) {
				conn.rollback();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//rollBack
	
	//close(conn)
	public static void close(Connection conn) {
		
		try {
			if(conn != null && !conn.isClosed()) {
				conn.close();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//close(conn)
	
	//close(stmt)
	public static void close(Statement stmt) {
		try {
			if(stmt != null && !stmt.isClosed()) {
				stmt.close();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//close(stmt)
	
	//close(RS)
	public static void close(ResultSet rs) {
		try {
			if(rs != null && !rs.isClosed()) {
				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//close(RS)
	
}
