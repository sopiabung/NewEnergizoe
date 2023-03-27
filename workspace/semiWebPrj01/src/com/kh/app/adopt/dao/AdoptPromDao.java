package com.kh.app.adopt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kh.app.adopt.vo.AdoptVo;
import com.kh.app.util.JDBCTemplate;

public class AdoptPromDao {

	//입양홍보목록조회
	public List<AdoptVo> promList(Connection conn) throws Exception {
		
		//SQL (close)
		String sql = "SELECT * FROM ADP_BO WHERE DELETE_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		
		//rs -> obj(List<AdoptVo>)
		List<AdoptVo> adpList = new ArrayList<AdoptVo>();
		
		while( rs.next() ) {
			
			String adpNo = rs.getString("ADP_NO");				//번호
			String title = rs.getString("TITLE");				//제목
			String content = rs.getString("CONTENT");			//내용
			String enrollDate = rs.getString("ENROLL_DATE");	//작성일시
			String enterDate = rs.getString("ENTER_DATE");		//입소일자
			String memberNo = rs.getString("MEMBER_NO");		//입양자번호
			String shelterNo = rs.getString("SHELTER_NO");		//게시글작성자번호
			String aniNo = rs.getString("ANI_NO");				//동물번호
			String adpDate = rs.getString("ADP_DATE");			//입양일자
			
			AdoptVo vo = new AdoptVo();
			vo.setAdpNo(adpNo);
			vo.setTitle(title);
			vo.setContent(content);
			vo.setEnrollDate(enrollDate);
			vo.setEnterDate(enterDate);
			vo.setMemberNo(memberNo);
			vo.setShelterNo(shelterNo);
			vo.setAniNo(aniNo);
			vo.setAdpDate(adpDate);
			
			adpList.add(vo);
			
		}
		
		return adpList;
		
	}
	
	
	//입양홍보상세조회
	public AdoptVo selectOne(Connection conn, String adpNo) throws Exception {
		
		//SQL
		String sql = "SELECT * FROM ADP_BO WHERE NO = ? AND DELETE_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, adpNo);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj
		AdoptVo adoptVo = null;
		if( rs.next() ) {
			String AdpNo = rs.getString("ADP_NO");				//번호
			String title = rs.getString("TITLE");				//제목
			String content = rs.getString("CONTENT");			//내용
			String enrollDate = rs.getString("ENROLL_DATE");	//작성일시
			String enterDate = rs.getString("ENTER_DATE");		//입소일자
			String memberNo = rs.getString("MEMBER_NO");		//입양자번호
			String shelterNo = rs.getString("SHELTER_NO");		//게시글작성자번호
			String aniNo = rs.getString("ANI_NO");				//동물번호
			String adpDate = rs.getString("ADP_DATE");			//입양일자
			
			adoptVo = new AdoptVo();
			adoptVo.setAdpNo(AdpNo);
			adoptVo.setTitle(title);
			adoptVo.setContent(content);
			adoptVo.setEnrollDate(enrollDate);
			adoptVo.setEnterDate(enterDate);
			adoptVo.setMemberNo(memberNo);
			adoptVo.setShelterNo(shelterNo);
			adoptVo.setAniNo(aniNo);
			adoptVo.setAdpDate(adpDate);
		}
		
		//close
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return adoptVo;
	}

	
	//입양홍보게시글작성
	public int PromWrite(Connection conn, AdoptVo vo) throws Exception {
		
		//SQL (close)
		String sql = "INSERT INTO ADP_BO(ADP_NO , SHELTER_NO , TITLE , CONTENT) VALUES (SEQ_ADP_BO_NO.NEXTVAL , ? , ? , ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getShelterNo());
		pstmt.setString(2, vo.getTitle());
		pstmt.setString(3, vo.getContent());
		int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
	}	
	

	
}//close
