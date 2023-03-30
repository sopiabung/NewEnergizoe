package com.kh.app.report.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kh.app.board.vo.MisPhotoVo;
import com.kh.app.report.vo.ReportMisVo;
import com.kh.app.util.JDBCTemplate;


public class ReportMisDao {
	
	//실종신고 게시글 조회
	public List<ReportMisVo> selectList(Connection conn) throws Exception {
		
		
		//SQL(close)
		String sql = "SELECT B.REPORT_NO , B.TITLE , B.CONTENT , B.ENROLL_DATE , B.MIS_DATE , B.AREA , B.WRITER , M.NICK FROM MIS_BO B JOIN MEMBER M ON B.WRITER = M.NO WHERE B.DEL_YN = 'N' ORDER BY B.REPORT_NO DESC";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		//rs -> obj (List<ReportMisVo>)
		List<ReportMisVo> ReportMisList = new ArrayList<ReportMisVo>();
		
		while(rs.next()) {
			//데이터들 읽어오기
			String reportNo = rs.getString("REPORT_NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String enrollDate = rs.getString("ENROLL_DATE");
			String misDate = rs.getString("MIS_DATE");
			String area = rs.getString("AREA");
			String writer = rs.getString("NICK");
			
			ReportMisVo vo = new ReportMisVo();
			vo.setNo(reportNo);
			vo.setTitle(title);
			vo.setContent(content);
			vo.setEnrollDate(enrollDate);
			vo.setMisDate(misDate);
			vo.setArea(area);
			vo.setWriter(writer);
			
			ReportMisList.add(vo);		
		}
		
		return ReportMisList;
	}

	//게시글 작성
	public int write(Connection conn, ReportMisVo vo) throws Exception {
		
		//SQL (close)
		String sql ="INSERT INTO MIS_BO (REPORT_NO, TITLE , CONTENT, MIS_DATE, AREA, WRITER) VALUES (SEQ_MIS_BO_REPORT_NO.NEXTVAL, ? , ? , ? , ? , ? )";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getTitle());
		pstmt.setString(2, vo.getContent());
		pstmt.setString(3, vo.getMisDate());
		pstmt.setString(4, vo.getArea());
		pstmt.setString(5, vo.getWriter());
		int result = pstmt.executeUpdate();
		
		
		JDBCTemplate.close(pstmt);
		
		return result;
	}

	//게시글 상세조회
	public ReportMisVo selectOne(Connection conn, String reportNo) throws Exception {
		
		//SQL
		String sql = "SELECT B.REPORT_NO, B.TITLE, B.CONTENT, B.ENROLL_DATE, B.MIS_DATE, B.AREA, M.NICK FROM MIS_BO B JOIN MEMBER M ON (B.WRITER = M.NO) WHERE B.REPORT_NO = ? AND B.DEL_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, reportNo);
		ResultSet rs = pstmt.executeQuery();
		
		//rs ->obj
		ReportMisVo ReportMisVo = null;
		if(rs.next()) {
			String no = rs.getString("REPORT_NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String enrollDate = rs.getString("ENROLL_DATE");
			String misDate = rs.getString("MIS_DATE");
			String area = rs.getString("AREA");
			String writer = rs.getString("NICK");
			
			ReportMisVo = new ReportMisVo();
			ReportMisVo.setNo(no);
			ReportMisVo.setTitle(title);
			ReportMisVo.setContent(content);
			ReportMisVo.setEnrollDate(enrollDate);
			ReportMisVo.setMisDate(misDate);
			ReportMisVo.setArea(area);
			ReportMisVo.setWriter(writer);
		}
		
		//close
		JDBCTemplate.close(rs);
		JDBCTemplate.close(pstmt);
		
		return ReportMisVo;
	}
	
}//class