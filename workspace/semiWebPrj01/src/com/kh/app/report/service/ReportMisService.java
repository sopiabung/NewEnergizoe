package com.kh.app.report.service;

import java.sql.Connection;
import java.util.List;

import com.kh.app.board.vo.AnimalinVo;
import com.kh.app.board.vo.MisPhotoVo;
import com.kh.app.report.dao.ReportMisDao;
import com.kh.app.reports.vo.ReportMisVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PageVo;

public class ReportMisService {
	
	//게시글 조회
	public List<ReportMisVo> selectList() throws Exception {
		
		//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL (DAO)
		ReportMisDao dao = new ReportMisDao();
		List<ReportMisVo> ReportMisList = dao.selectList(conn);
		
		//close
		JDBCTemplate.close(conn);
		
		return ReportMisList;
		
	}


}