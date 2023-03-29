package com.kh.app.free.service;

import java.sql.Connection;
import java.util.List;

import com.kh.app.free.dao.FreeDao;
import com.kh.app.free.vo.FreeAttachmentVo;
import com.kh.app.free.vo.FreeVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PageVo;

public class FreeService {
	// 게시글 조회 (페이징 처리가 된)
	public List<FreeVo> selectList(PageVo pageVo) throws Exception {

		// 비즈니스 로직

		// conn
		Connection conn = JDBCTemplate.getConnection();

		// SQL (DAO)
		FreeDao dao = new FreeDao();
		List<FreeVo> boardList = dao.selectList(conn, pageVo);

		// close
		JDBCTemplate.close(conn);

		return boardList;
	}

	// 게시글 작성 (+첨부파일 인서트)
	public int write(FreeVo vo, FreeAttachmentVo atVo) throws Exception {

		// 비지니스 로직

		// conn
		Connection conn = JDBCTemplate.getConnection();

		FreeDao dao = new FreeDao();
		// SQL (DAO) == 게시글 인서트
		int result = dao.write(conn, vo);
		// SQL (DAO) == 첨부파일 인서트
		int atResult = dao.insertAttachment(conn, atVo);

		// tx , close
		if (result * atResult == 1) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}

		JDBCTemplate.close(conn);

		return result * atResult;
	}

	// 게시글 전체 갯수 조회 (삭제되지않은)
	public int selectCount() throws Exception {

		// 비지니스 로직

		// conn
		Connection conn = JDBCTemplate.getConnection();

		// SQL (DAO)
		FreeDao dao = new FreeDao();
		int result = dao.selectCount(conn);

		// close
		JDBCTemplate.close(conn);

		return result;
	}

	// 게시글 상세조회
	public FreeVo selectOne(String no) throws Exception {
		// 비즈니스 로직

		// conn
		Connection conn = JDBCTemplate.getConnection();

		// DAO 호출 (조회쿼리 + 증가쿼리)
		FreeDao dao = new FreeDao();
		

		FreeVo boardVo = dao.selectOne(conn, no);

		// tx , close
		JDBCTemplate.commit(conn);
		JDBCTemplate.close(conn);

		return boardVo;
	}// method
}