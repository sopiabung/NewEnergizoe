package com.kh.app.adopt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kh.app.adopt.vo.AdoptReplyVo;
import com.kh.app.adopt.vo.AdoptVo;
import com.kh.app.util.JDBCTemplate;

public class AdoptReviewDao {
	
	//입양후기조회
	public List<AdoptVo> reviewList(Connection conn) throws Exception {
		
		//SQL (close)
		String sql = "SELECT * FROM ADP_RE_BO WHERE DELETE_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj (List<AdoptVo>)
		List<AdoptVo> adrList = new ArrayList<AdoptVo>();
		
		while( rs.next() ) {
			
			String adpNo = rs.getString("ADP_NO");				//게시글번호
			String title = rs.getString("TITLE");				//제목
			String content = rs.getString("CONTENT");			//내용
			String enrollDate = rs.getString("ENROLL_DATE");	//작성일시
			
			AdoptVo vo = new AdoptVo();
			vo.setAdpNo(adpNo);
			vo.setTitle(title);
			vo.setContent(content);
			vo.setEnrollDate(enrollDate);
			
			adrList.add(vo);
			
		}
		
		return adrList;
				
		
	}
	
	//입양후기상세조회
	public AdoptVo selectOne(Connection conn, String adpNo) throws Exception {
		
		//SQL
		String sql = "SELECT * FROM ADP_RE_BO WHERE NO = ? AND DELETE_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, adpNo);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj
		AdoptVo adoptVo = null;
		if( rs.next() ) {
			String AdpNo = rs.getString("ADP_NO");				//게시글번호
			String title = rs.getString("TITLE");				//제목
			String content = rs.getString("CONTENT");			//내용
			String enrollDate = rs.getString("ENROLL_DATE");	//작성일시
			
			adoptVo = new AdoptVo();
			adoptVo.setAdpNo(AdpNo);
			adoptVo.setTitle(title);
			adoptVo.setContent(content);
			adoptVo.setEnrollDate(enrollDate);
		}
		
		//close
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return adoptVo;
	}
	
	//입양후기게시글작성
	public int ReviewWrite(Connection conn, AdoptVo vo) throws Exception {
		
		//SQL (close)
		String sql = "INSERT INTO ADP_RE_BO(ADP_NO , SHELTER_NO , TITLE , CONTENT) VALUES (SEQ_ADP_BO_NO.NEXTVAL , ? , ? , ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getShelterNo());
		pstmt.setString(2, vo.getTitle());
		pstmt.setString(3, vo.getContent());
		int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
	}

	//입양후기댓글목록
	public List<AdoptReplyVo> replyList(Connection conn) throws Exception {
		
		//SQL (close)
		String sql = "SELECT * FROM ADP_RE_CO WHERE DELETE_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		
		//rs -> obj (List<AdoptReplyVo>)
		List<AdoptReplyVo> adrrList = new ArrayList<AdoptReplyVo>();
		
		while( rs.next() ) {
			
			String replyNo= rs.getString("REPLY_NO");
			String replyEnrollDate= rs.getString("REPLY_ENROLL_DATE");
			String replyContent= rs.getString("REPLY_CONTENT");
			String writer= rs.getString("WRITER");
			String adoptionNo2= rs.getString("ADOPTION_NO2");
			
			AdoptReplyVo vo = new AdoptReplyVo();
			vo.setReplyNo(replyNo);
			vo.setReplyEnrollDate(replyEnrollDate);
			vo.setReplyContent(replyContent);
			vo.setWriter(writer);
			vo.setAdoptionNo2(adoptionNo2);
			
			adrrList.add(vo);
		}
		
		return adrrList;

	}
	
	//입양후기댓글작성
	public int replywrite(Connection conn, AdoptReplyVo vo) throws Exception {
		
		
		//SQL (close)
		String sql = "INSERT INTO ADP_RE_CO(WRITER , REPLY_CONTENT) VALUES (SEQ_ADP_RE_CO_NO.NEXTVAL , ? )";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getWriter());
		pstmt.setString(2, vo.getReplyContent());
		int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
		
	}
	
	
	
	
	
}//close
