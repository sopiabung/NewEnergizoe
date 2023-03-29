package com.kh.app.notice.service;

import java.sql.Connection;
import java.util.List;
import com.kh.app.notice.dao.NoticeDao;
import com.kh.app.notice.vo.NoticeVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PageVo;

public class NoticeService {
	// 게시글 조회 (페이징 처리가 된)
	public List<NoticeVo> selectList(PageVo pageVo) throws Exception {

		// 비즈니스 로직

		// conn
		Connection conn = JDBCTemplate.getConnection();

		// SQL (DAO)
		NoticeDao dao = new NoticeDao();
		List<NoticeVo> boardList = dao.selectList(conn, pageVo);

		// close
		JDBCTemplate.close(conn);

		return boardList;
	}

	// 게시글 작성 (+첨부파일 인서트)
	public int write(NoticeVo vo) throws Exception {

		// 비지니스 로직

		// conn
		Connection conn = JDBCTemplate.getConnection();

		NoticeDao dao = new NoticeDao();
		// SQL (DAO) == 게시글 인서트
		int result = dao.write(conn, vo);
		// SQL (DAO) == 첨부파일 인서트

		// tx , close
		if (result == 1) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}

		JDBCTemplate.close(conn);

		return result;
	}

	// 게시글 전체 갯수 조회 (삭제되지않은)
	public int selectCount() throws Exception {

		// 비지니스 로직

		// conn
		Connection conn = JDBCTemplate.getConnection();

		// SQL (DAO)
		NoticeDao dao = new NoticeDao();
		int result = dao.selectCount(conn);

		// close
		JDBCTemplate.close(conn);

		return result;
	}

	// 게시글 상세조회
	public NoticeVo selectOne(String no) throws Exception {
		// 비즈니스 로직

		// conn
		Connection conn = JDBCTemplate.getConnection();

		// DAO 호출 (조회쿼리)
		NoticeDao dao = new NoticeDao();

		NoticeVo noticeVo = dao.selectOne(conn, no);

		// tx , close
		JDBCTemplate.commit(conn);
		JDBCTemplate.close(conn);

		return noticeVo;
	}// method
}