package com.kh.app.report.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.kh.app.reports.vo.ReportMisVo;
import com.kh.app.util.page.PageVo;

public class ReportMisDao {
	
	//신고게시글 목록 조회(페이징 처리가 된)
	public List<ReportMisVo> selectList(Connection conn, PageVo pageVo) throws Exception{
		
			//SQL (close)
			String sql ="SELECT * FROM ( SELECT ROWNUM AS RNUM ,  TEMP.* FROM ( SELECT B.REPORT_NO , B.TITLE , B.CONTENT , B.ENROLL_DATE , B.WRITER , B.AREA , B.WRITER , B.S_CODE , B.ANI_NO , M.NICK FROM BOARD B JOIN MEMBER M ON B.WRITER = M.NO WHERE B.DEL_YN = 'N' ORDER BY NO DESC ) TEMP ) WHERE RNUM BETWEEN ? AND ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			int startRow = (pageVo.getCurrentPage()-1) * pageVo.getBoardLimit() + 1;
			int endRow = startRow + pageVo.getBoardLimit()-1;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			ResultSet rs = pstmt.executeQuery();
			
			//rs -> obj(MistList<ReportMisVo>)
			ArrayList<ReportMisVo> ReportMisList = new ArrayList<ReportMisVo>();
		
		while(rs.next()) {
			
			String reportNo = rs.getString("REPORT_NO");
			String title = rs.getString("TITLE");
			String content = rs.getString("CONTENT");
			String enrollDate = rs.getString("ENROLL_DATE");
			String delYn = rs.getString("DEL_YN");
			String misDate = rs.getString("MIS_DATE");
			String area = rs.getString("AREA");
			String writer = rs.getString("WRITER");
			String sCode = rs.getString("S_CODE");
			String aniNo = rs.getString("ANI_NO");
			
			
			ReportMisVo vo = new ReportMisVo();
			vo.setReportNo(reportNo);
			vo.setTitle(title);
			vo.setContent(content);
			vo.setEnrollDate(enrollDate);
			vo.setDelYn(delYn);
			vo.setMisDate(misDate);
			vo.setArea(area);
			vo.setWriter(writer);
			vo.setsCode(sCode);
			vo.setAniNo(aniNo);
			
			ReportMisList.add(vo);
		}
		return ReportMisList;
	}
	
}//class