package com.kh.app.admin.service;

import java.sql.Connection;

import com.kh.app.admin.Dao.AdminDao;
import com.kh.app.admin.vo.AdminVo;
import com.kh.app.util.JDBCTemplate;

public class AdminService {
	
	//로그인
	public AdminVo login(AdminVo vo) throws Exception {
		//관리자 로그인 확인
		if (!vo.getId().equals("admin")) {
			throw new Exception("관리자 계정이 아닙니다.");
		}
		// 유효성 검사 등 필요한 비즈니스 로직 처리
		if (vo.getId() == null || vo.getId().trim().isEmpty()) {
			throw new Exception("아이디를 입력해주세요.");
		}

		if (vo.getPwd() == null || vo.getPwd().trim().isEmpty()) {
			throw new Exception("비밀번호를 입력해주세요.");
		}

		//conn
		Connection conn = JDBCTemplate.getConnection();

		//SQL(DAO)
		AdminDao dao = new AdminDao();
		AdminVo loginMember = dao.login(conn, vo);

		//tx, close
		if(loginMember != null) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}

		JDBCTemplate.close(conn);

		return loginMember;
	}
	

}
