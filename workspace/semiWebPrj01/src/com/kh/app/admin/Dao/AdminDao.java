package com.kh.app.admin.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.kh.app.admin.vo.AdminVo;
import com.kh.app.util.JDBCTemplate;

public class AdminDao {
	
	//로그인
	public AdminVo login(Connection conn, AdminVo vo) throws Exception {
		
		//SQL실행, close
		String sql = "SELECT * FROM ADMIN WHERE ID = ? AND PWD = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getId());
		pstmt.setString(1, vo.getPwd());
		ResultSet rs = pstmt.executeQuery();
		
		JDBCTemplate.close(pstmt);
		
		//rs, 
		AdminVo loginAdmin = null;
		if(rs.next()) {
			String id = rs.getString("ID");
			String pwd = rs.getString("PWD");
			String nick = rs.getString("NICK");
			
			loginAdmin = new AdminVo();
			loginAdmin.setId(id);
			loginAdmin.setId(pwd);
			loginAdmin.setId(nick);
		}
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		return loginAdmin;
	}
	
	
}
