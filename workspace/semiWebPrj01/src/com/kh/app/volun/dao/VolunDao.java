package com.kh.app.volun.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.kh.app.board.vo.AttachmentVo;
import com.kh.app.volun.vo.VolunVo;

public class VolunDao {

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
	public int insertAttachment(Connection conn, AttachmentVo atVo) throws Exception {

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
