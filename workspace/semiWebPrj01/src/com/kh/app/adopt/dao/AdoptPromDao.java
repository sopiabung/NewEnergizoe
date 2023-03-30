package com.kh.app.adopt.dao;

import static com.kh.app.util.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.kh.app.animal.vo.AnimalVo;
import com.kh.app.board.vo.AdoptPhotoVo;

public class AdoptPromDao {

	
	//입양홍보 게시글 작성
	public int write(Connection conn, AnimalVo vo) throws Exception {
		
		//SQL (close)
		String sql = "INSERT INTO ANIMAL_IN(ANI_NO , TYPE_CODE , NAME , GENDER , NEUT_YNX , BIRTH_YEAR , WEIGHT , CHARACTER) VALUES (SEQ_ANIMAL_IN_ANI_NO.NEXTVAL , ? , ? , ? , ? , ? , ? , ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, vo.getTypeCode() );
		pstmt.setString(2, vo.getName());
		pstmt.setString(3, vo.getGender());
		pstmt.setString(4, vo.getNeutYnx());
		pstmt.setString(5, vo.getBirthYear());
		pstmt.setString(6, vo.getWeight());
		pstmt.setString(7, vo.getCharacter());
		int result = pstmt.executeUpdate();
		
		close(pstmt);
		
		return result;
	}




	public int insertAttachment(Connection conn, AdoptPhotoVo atVo) throws Exception {
		//SQL
		String sql = "INSERT INTO ADP_PO (NO, ORIGIN_NAME, CHANGE_NAME, REF_BOARD_NO) VALUES(SEQ_ADP_PO_NO.NEXTVAL , ? , ? , SEQ_ANIMAL_IN_ANI_NO.CURRVAL)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, atVo.getOriginName());
		pstmt.setString(2, atVo.getChangeName());
		int result = pstmt.executeUpdate();
		
		//close
		close(pstmt);
		
		return result;
	}

	
	
	
//	//입양홍보목록조회
//	public List<AniadoptVo> promList(Connection conn , PageVo pagevo) throws Exception {
//		
//		//SQL (close)
//		String sql = "SELECT * FROM ( SELECT ROWNUM AS RNUM , TEMP.* FROM ( SELECT ANI.ANI_NO , ADP.TITLE , ANI.GENDER , ANI.NEUT_YNX , ANI.BIRTHYEAR , ANI.WEIGHT , ANI.COLOR FROM ADP_BO ADP JOIN ANIMAL_IN ANI ON ADP.ANI_NO = ANI.ANI_NO WHERE ADP.DEL_YN = 'N' ORDER BY NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
//		PreparedStatement pstmt = conn.prepareStatement(sql);
//		int startRow = (pagevo.getCurrentPage()-1) * pagevo.getBoardLimit()+1;
//		int endRow = startRow + pagevo.getBoardLimit() -1;
//		pstmt.setInt(1, startRow);
//		pstmt.setInt(2, endRow);
//		ResultSet rs = pstmt.executeQuery(); 
//		
//		
//		//rs -> obj(List<AdoptVo>)
//		List<AniadoptVo> adpList = new ArrayList<AniadoptVo>();
//		
//		while( rs.next() ) {
//			
//			String title = rs.getString("TITLE");				
//			String gender = rs.getString("GENDER");			
//			String neutynx = rs.getString("NEUTYNX");	
//			String birthyear = rs.getString("BIRTHYEAR");		
//			String weight= rs.getString("WEIGHT");			
//			String color = rs.getString("COLOR");		
//			String anino = rs.getString("ANI_NO");				
//			
//			AniadoptVo vo = new AniadoptVo();
//			vo.getAdp().setTitle(title); 
//			vo.getAni().setGender(gender);
//			vo.getAni().setNeutYnx(neutynx);
//			vo.getAni().setBirthYear(birthyear);
//			vo.getAni().setWeight(weight);
//			vo.getAni().setColor(color);
//			vo.getAni().setAniNo(anino);
//
//			
//			adpList.add(vo);
//			
//		}
//		
//		return adpList;
//		
//	}
//	
//	
//	//입양홍보상세조회
//	public AdoptVo selectOne(Connection conn, String adpNo) throws Exception {
//		
//		//SQL
//		String sql = "SELECT * FROM ADP_BO WHERE NO = ? AND DELETE_YN = 'N'";
//		PreparedStatement pstmt = conn.prepareStatement(sql);
//		pstmt.setString(1, adpNo);
//		ResultSet rs = pstmt.executeQuery();
//		
//		//rs -> obj
//		AdoptVo adoptVo = null;
//		if( rs.next() ) {
//			String AdpNo = rs.getString("ADP_NO");				//번호
//			String title = rs.getString("TITLE");				//제목
//			String content = rs.getString("CONTENT");			//내용
//			String enrollDate = rs.getString("ENROLL_DATE");	//작성일시
//			String enterDate = rs.getString("ENTER_DATE");		//입소일자
//			String memberNo = rs.getString("MEMBER_NO");		//입양자번호
//			String shelterNo = rs.getString("SHELTER_NO");		//게시글작성자번호
//			String aniNo = rs.getString("ANI_NO");				//동물번호
//			String adpDate = rs.getString("ADP_DATE");			//입양일자
//			
//			adoptVo = new AdoptVo();
//			adoptVo.setAdpNo(AdpNo);
//			adoptVo.setTitle(title);
//			adoptVo.setContent(content);
//			adoptVo.setEnrollDate(enrollDate);
//			adoptVo.setEnterDate(enterDate);
//			adoptVo.setMemberNo(memberNo);
//			adoptVo.setShelterNo(shelterNo);
//			adoptVo.setAniNo(aniNo);
//			adoptVo.setAdpDate(adpDate);
//		}
//		
//		//close
//		JDBCTemplate.close(rs);
//		JDBCTemplate.close(pstmt);
//		
//		return adoptVo;
//	}
//
//	
//
//
//	//게시글 전체 갯수 조회(삭제되지않은)
//	public int selectCount(Connection conn) throws Exception {
//		
//		//SQL (close)
//		String sql = "SELECT COUNT(*) AS CNT FROM ADP_BO WHERE DEL_YN = 'N'";
//		PreparedStatement pstmt = conn.prepareStatement(sql);
//		ResultSet rs = pstmt.executeQuery();
//		
//		//rs -> obj
//		int cnt = 0;
//		if( rs.next() ) {
//			cnt = rs.getInt("CNT");
//		}
//		
//		JDBCTemplate.close(rs);
//		JDBCTemplate.close(pstmt);
//		
//		return cnt;
//		
//	}

	


	
}//close
