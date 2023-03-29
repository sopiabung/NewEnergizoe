package com.kh.app.report.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kh.app.board.vo.AnimalinVo;
import com.kh.app.board.vo.MisPhotoVo;
import com.kh.app.reports.vo.ReportMisVo;
import com.kh.app.util.JDBCTemplate;


public class ReportMisDao {
	
	//실종신고 게시글 조회
	public List<ReportMisVo> selectList(Connection conn) throws Exception {
		
		
		//SQL(close)
		String sql = "SELECT * FROM MIS_BO WHERE DEL_YN = 'N'";
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
			String writer = rs.getString("WRITER");
			//String sCode = rs.getString("S_CODE");
			//String aniNo = rs.getString("ANI_NO"); //동물정보는 안가져옴 일단 게시글부터
			
			ReportMisVo vo = new ReportMisVo();
			vo.setReportNo(reportNo);
			vo.setTitle(title);
			vo.setContent(content);
			vo.setEnrollDate(enrollDate);
			vo.setMisDate(misDate);
			vo.setArea(area);
			vo.setWriter(writer);
			//vo.setsCode(sCode);
			//vo.setAniNo(aniNo);
			
			
			ReportMisList.add(vo);		
		}
		
		return ReportMisList;
	}
	
	
}//class