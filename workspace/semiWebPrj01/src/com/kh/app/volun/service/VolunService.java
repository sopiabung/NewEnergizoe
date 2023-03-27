package com.kh.app.volun.service;

import java.sql.Connection;

import com.kh.app.board.vo.AttachmentVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.volun.dao.VolunDao;
import com.kh.app.volun.vo.VolunVo;

public class VolunService {

	// 봉사자 모집 글 작성
	public int write(VolunVo vo, AttachmentVo atVo) throws Exception {

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

}
