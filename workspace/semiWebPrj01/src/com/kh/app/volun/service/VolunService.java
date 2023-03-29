package com.kh.app.volun.service;

import java.sql.Connection;
import java.util.List;

import com.kh.app.board.vo.VolunPhotoVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.volun.dao.VolunDao;
import com.kh.app.volun.vo.VolunVo;

public class VolunService {
	
	// 게시글 조회(페이징 처리가 된)
	public List<VolunVo> selectList() {

		// 비즈니스 로직

		// conn
		Connection conn = JDBCTemplate.getConnection();

		// SQL 실행 (DAO)
		VolunDao dao = new VolunDao(); 
		List<VolunVo> volunList = dao.selectList(conn, pageVo);

		// close / select문이라 tx할게 없음.
		JDBCTemplate.close(conn);
		return volunList;
		
	}
	
	// 봉사자 모집 글 작성
	public int write(VolunVo vo, VolunPhotoVo atVo) throws Exception {

		// 비즈니스 로직
		Connection conn = JDBCTemplate.getConnection();

		VolunDao dao = new VolunDao();
		// SQL (DAO) == 게시글 인서트
		int result = dao.write(conn, vo);
		// SQL (DAO) == 첨부파일 인서트
		int atResult = dao.insertAttachment(conn, atVo);

		// tx, close
		if (result * atResult == 1) { // 둘다 1이여야 1이 나오니까.
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result * atResult;

	}


	public int selectCount() {
		return 0;
	}








}
