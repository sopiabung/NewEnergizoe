package com.kh.app.reportmis.service;

import java.sql.Connection;
import java.util.List;

import com.kh.app.reportmis.dao.ReportMisDao;
import com.kh.app.reportmis.vo.AttachmentVo;
import com.kh.app.reportmis.vo.ReportMisVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PageVo;

public class ReportMisService {
	
	//게시글 조회 (페이징 처리가 된)
	public List<ReportMisVo> selectList(PageVo pageVo) throws Exception{
		
		//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL 실행 (DAO)
		ReportMisDao dao = new ReportMisDao();
		List<ReportMisVo> ReportMisList = dao.selectList(conn, pageVo);
		
		//close
		JDBCTemplate.close(conn);
		
		return ReportMisList;
		
	}

	public int selectCount() {
	
		return 0;
	}

	public ReportMisVo selectOne(String reportNo) {
		
		return null;
	}

	public int write(ReportMisVo vo, AttachmentVo atVo) {
		
		return 0;
	}

}