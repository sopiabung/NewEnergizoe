package com.kh.app.notice.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.kh.app.notice.vo.NoticeVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PageVo;

public class NoticeDao {
	// 게시글 목록 조회
	public List<NoticeVo> selectList(Connection conn, PageVo pageVo) throws Exception {

		// SQL (close)
		String sql = "SELECT * FROM NOTICE WHERE DEL_YN = 'N' ORDER BY FREE_NO DESC";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		// rs -> obj (List<BoardVo>)
		List<NoticeVo> boardList = new ArrayList<NoticeVo>();

		while (rs.next()) {

			String no = rs.getString("FREE_NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");

			NoticeVo vo = new NoticeVo();
			vo.setNo(no);
			vo.setTitle(title);
			vo.setContent(content);

			boardList.add(vo);
		}

		return boardList;
	}

	// 게시글 작성
	public int write(Connection conn, NoticeVo vo) throws Exception {

		// SQL (close)
		String sql = "INSERT INTO NOTICE (FREE_NO, ADMIN_NO, TITLE, CONTENT, ENROLL_DATE, DEL_YN) VALUES (SEQ_NOTICE_FREE_NO.NEXTVAL, ?, ?, ?, SYSDATE, 'N')";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, "2");
		pstmt.setString(2, vo.getTitle());
		pstmt.setString(3, vo.getContent());
		int result = pstmt.executeUpdate();

		JDBCTemplate.close(pstmt);

		return result;
	}

	// 게시글 전체 갯수 조회 (삭제되지않은)
	public int selectCount(Connection conn) throws Exception {

		// SQL (close)
		String sql = "SELECT COUNT(*) AS CNT FROM NOTICE WHERE DEL_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		// rs -> obj
		int cnt = 0;
		if (rs.next()) {
			cnt = rs.getInt("CNT");
		}

		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);

		return cnt;
	}
	// 게시글 상세조회
	public NoticeVo selectOne(Connection conn, String no) throws Exception {
		// SQL
		String sql = "SELECT TITLE, ADMIN_NO, CONTENT FROM NOTICE WHERE FREE_NO = ? AND DEL_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		ResultSet rs = pstmt.executeQuery();

		// rs -> obj
		NoticeVo noticeVo = null;
		if (rs.next()) {
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");

			noticeVo = new NoticeVo();
			noticeVo.setTitle(title);
			noticeVo.setContent(content);
		}
		// close
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		return noticeVo;
	}
}