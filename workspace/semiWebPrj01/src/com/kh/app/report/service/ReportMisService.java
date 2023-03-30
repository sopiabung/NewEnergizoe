package com.kh.app.report.service;

import java.sql.Connection;
import java.util.List;

import com.kh.app.board.vo.MisPhotoVo;
import com.kh.app.report.dao.ReportMisDao;
import com.kh.app.report.vo.ReportMisVo;
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

	//게시글 작성
	public int write(ReportMisVo vo) throws Exception {
		
		//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL (DAO)
		ReportMisDao dao = new ReportMisDao();
		int result = dao.write(conn , vo);
		
		//tx, close
		if(result == 1) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}
	
	//게시글 상세조회
	public ReportMisVo selectOne(String reportNo) throws Exception {
		
		//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//DAO 호출
		ReportMisDao dao = new ReportMisDao();
		ReportMisVo ReportMisvo = dao.selectOne(conn , reportNo);
		
		//tx, close
		JDBCTemplate.close(conn);
		
		return ReportMisvo;
	}

}//class