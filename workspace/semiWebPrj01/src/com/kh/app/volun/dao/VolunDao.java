package com.kh.app.volun.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.kh.app.board.vo.VolunPhotoVo;
import com.kh.app.util.page.PageVo;
import com.kh.app.volun.vo.VolunVo;

public class VolunDao {
 
	private static final String NO = null;
	
	// 게시글 목록조회 (페이징 처리가 된)
	public List<VolunVo> selectList(Connection conn, PageVo pageVo) throws Exception {
		
		// SQL (close)
		String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT M.NICK , M.ADDRESS , M.HP , V.VOL_DATE , V.END_TIME , V.NEED_PEOPLE , V.TYPE , V.CONTENT , V.ENROLL_DATE FROM V_RECRUIT V JOIN MEMBER M ON V.SHEL_NO = M.NO WHERE B.DELETE_YN = 'N' ORDER BY NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (pageVo.getCurrentPage() - 1) * pageVo.getBoardLimit() + 1;
		int endRow = startRow + pageVo.getBoardLimit() - 1;
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();

		// rs => obj (List<BoardVo>)
		List<VolunVo> volunList = new ArrayList<VolunVo>();
		// 한번만 읽는게 아니라 여러줄 읽을거니까 if문(X). while문(O).
		while (rs.next()) {

//			String volNo = rs.getString("VOL_NO");
			String title = rs.getString("NICK");
			String content = rs.getString("ADDRESS");
			String enrollDate = rs.getString("ENROLL_DATE");

			VolunVo vo = new VolunVo();
			vo.setEnrollDate(enrollDate);
			
			
			volunList.add(vo);
		}
		return volunList;

	}
	
	// 봉사자 모집 글 작성
	public int write(Connection conn, VolunVo vo) throws Exception {

		// sql (close)
		String sql = "INSERT INTO V_RECRUIT(VOL_NO, ENROLL_DAT, EDEL_YN, SHEL_NO, TYPE, VOL_DATE, END_TIME, NEED_PEOPLE, CONTENT) "
				+ "VALUES (SEQ_VOL_NO.NEXTVAL, SYSDATE, 'N', ?, ?, ?, ?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getShelNo());
		pstmt.setString(2, vo.getType());
		pstmt.setString(3, vo.getVolDate());
		pstmt.setString(4, vo.getEndTime());
		pstmt.setString(5, vo.getNeedPeople());
		pstmt.setString(6, vo.getContent());
		int result = pstmt.executeUpdate();

//		close(pstmt);

		return result;

	}

	// 사진 첨부
	public int insertAttachment(Connection conn, VolunPhotoVo atVo) throws Exception {

		// SQL
		String sql = "INSERT INTO ATTACHMENT (NO, ORIGIN_NAME, CHANGE_NAME, REF_BOARD_NO) VALUES(SEQ_ATTACHMENT_NO.NEXTVAL , ? , ? , SEQ_BOARD_NO.CURRVAL)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, atVo.getOriginName());
		pstmt.setString(2, atVo.getChangeName());
		int result = pstmt.executeUpdate();

		// close
//		close(pstmt);

		return result;

	}

}
