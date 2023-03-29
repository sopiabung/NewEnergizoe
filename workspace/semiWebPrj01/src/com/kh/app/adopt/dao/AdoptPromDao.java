package com.kh.app.adopt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.kh.app.adopt.vo.AdoptVo;
import com.kh.app.adopt.vo.AniadoptVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PageVo;

public class AdoptPromDao {

	
	
	//입양홍보목록조회
	public List<AniadoptVo> promList(Connection conn , PageVo pagevo) throws Exception {
		
		//SQL (close)
		String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT ANI.ANI_NO , ADP.TITLE , ANI.GENDER , ANI.NEUT_YNX , ANI.BIRTHYEAR , ANI.WEIGHT , ANI.COLOR FROM ADP_BO ADP JOIN ANIMAL_IN ANI ON ADP.ANI_NO = ANI.ANI_NO WHERE ADP.DEL_YN = 'N' ORDER BY NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (pagevo.getCurrentPage()-1) * pagevo.getBoardLimit()+1;
		int endRow = startRow + pagevo.getBoardLimit() -1;
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery(); 
		
		
		//rs -> obj(List<AdoptVo>)
		List<AniadoptVo> adpList = new ArrayList<AniadoptVo>();
		
		while( rs.next() ) {
			
			String title = rs.getString("TITLE");				
			String gender = rs.getString("GENDER");			
			String neutynx = rs.getString("NEUTYNX");	
			String birthyear = rs.getString("BIRTHYEAR");		
			String weight= rs.getString("WEIGHT");			
			String color = rs.getString("COLOR");		
			String anino = rs.getString("ANI_NO");				
			
			AniadoptVo vo = new AniadoptVo();
			vo.getAdp().setTitle(title); 
			vo.getAni().setGender(gender);
			vo.getAni().setNeutYnx(neutynx);
			vo.getAni().setBirthYear(birthyear);
			vo.getAni().setWeight(weight);
			vo.getAni().setColor(color);
			vo.getAni().setAniNo(anino);

			
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
		String sql = "INSERT INTO ADP_BO(NAME , EMAIL , HP , ADDRESS) VALUES (SEQ_ADP_BO_NO.NEXTVAL , ? , ? , ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getName());
		pstmt.setString(2, vo.getEmail());
		pstmt.setString(3, vo.getHp());
		pstmt.setString(4, vo.getAddress());
		int result = pstmt.executeUpdate();
		
		JDBCTemplate.close(pstmt);
		
		return result;
	}


	//게시글 전체 갯수 조회(삭제되지않은)
	public int selectCount(Connection conn) throws Exception {
		
		//SQL (close)
		String sql = "SELECT COUNT(*) AS CNT FROM ADP_BO WHERE DEL_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj
		int cnt = 0;
		if( rs.next() ) {
			cnt = rs.getInt("CNT");
		}
		
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return cnt;
		
	}



		
	

	
}//close
