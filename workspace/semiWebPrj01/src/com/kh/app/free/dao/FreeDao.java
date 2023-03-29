package com.kh.app.free.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.kh.app.free.vo.FreeAttachmentVo;
import com.kh.app.free.vo.FreeVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PageVo;

public class FreeDao {
	// 게시글 목록 조회 (페이징 처리가 된)
	public List<FreeVo> selectList(Connection conn, PageVo pageVo) throws Exception {

		// SQL (close)
		String sql = "SELECT FREE_NO, TITLE FROM F_BO WHERE DEL_YN = 'N' ORDER BY FREE_NO DESC";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		// int startRow = (pageVo.getCurrentPage() - 1) * pageVo.getBoardLimit() + 1;
		// int endRow = startRow + pageVo.getBoardLimit() - 1;
		// pstmt.setInt(1, startRow);
		// pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();

		// rs -> obj (List<BoardVo>)
		List<FreeVo> boardList = new ArrayList<FreeVo>();

		while (rs.next()) {

			String no = rs.getString("FREE_NO");
			String title = rs.getString("TITLE");

			FreeVo vo = new FreeVo();
			vo.setNo(no);
			vo.setTitle(title);

			boardList.add(vo);
		}

		return boardList;
	}

	// 게시글 작성
	public int write(Connection conn, FreeVo vo) throws Exception {

		// SQL (close)
		String sql = "INSERT INTO F_BO (FREE_NO , TITLE , CONTENT, WRITER,ENROLL_DATE,DEL_YN) VALUES (SEQ_F_BO_FREE_NO.NEXTVAL, ?, ?, ?,SYSDATE,'N')";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		System.out.println(vo.getTitle());
		System.out.println(vo.getContent());
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getContent());
		pstmt.setString(3, vo.getWriter());
		int result = pstmt.executeUpdate();

		JDBCTemplate.close(pstmt);

		return result;
	}

	// 게시글 전체 갯수 조회 (삭제되지않은)
	public int selectCount(Connection conn) throws Exception {

		// SQL (close)
		String sql = "SELECT COUNT(*) AS CNT FROM F_BO WHERE DEL_YN = 'N'";
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
	public FreeVo selectOne(Connection conn, String no) throws Exception {

		// SQL
		String sql = "SELECT B.FREE_NO , B.TITLE , B.CONTENT, B.WRITER, A.CHANGE_NAME FROM F_BO B JOIN F_PO A ON (B.FREE_NO = A.REF_BOARD_NO) WHERE B.FREE_NO = ? AND B.DEL_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, no);
		ResultSet rs = pstmt.executeQuery();

		// rs -> obj
		FreeVo boardVo = null;
		if (rs.next()) {
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String writer = rs.getString("WRITER");
			String changeName = rs.getString("CHANGE_NAME");

			boardVo = new FreeVo();
			boardVo.setTitle(title);
			boardVo.setContent(content);
			boardVo.setWriter(writer);
			boardVo.setChangeName(changeName);
		}

		// close
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);

		return boardVo;
	}

	// 첨부파일 인서트
	public int insertAttachment(Connection conn, FreeAttachmentVo atVo) throws Exception {

		// SQL
		String sql = "INSERT INTO F_PO (NO, ORIGIN_NAME, CHANGE_NAME, REF_BOARD_NO) VALUES(SEQ_F_PO_NO.NEXTVAL , ? , ? , SEQ_F_BO_FREE_NO.CURRVAL)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, atVo.getOriginName());
		pstmt.setString(2, atVo.getChangeName());
		int result = pstmt.executeUpdate();

		// close
		JDBCTemplate.close(pstmt);

		return result;
	}
}