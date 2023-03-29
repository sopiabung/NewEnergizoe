package com.kh.app.adopt.service;

import java.sql.Connection;
import java.util.List;

import com.kh.app.adopt.dao.AdoptPromDao;
import com.kh.app.adopt.vo.AdoptVo;
import com.kh.app.adopt.vo.AniadoptVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PageVo;

public class AdoptPromService {

	public List<AniadoptVo> promList(PageVo pagevo) throws Exception {
		//비즈니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL
		AdoptPromDao promdao = new AdoptPromDao();
		List<AniadoptVo> adpList = promdao.promList(conn , pagevo);
		
		//close
		JDBCTemplate.close(conn);
		
		return adpList;
	}
	
	
	//입양홍보상세조회
	public AdoptVo selectOne(String adpNo) throws Exception {
		
		//비즈니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//DAO 호출
		AdoptPromDao promdao = new AdoptPromDao();
		AdoptVo adoptVo = promdao.selectOne(conn , adpNo);
		
		//tx , close
		JDBCTemplate.close(conn);
		
		return adoptVo;
		
	}

	//입양홍보게시글작성
	public int PromWrite(AdoptVo vo) throws Exception {
		
		//비즈니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL (DAO)
		AdoptPromDao dao = new AdoptPromDao();
		int result = dao.PromWrite(conn , vo);
		
		//tx , close
		if(result == 1) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
		
	}

	//게시글 전체 갯수 조회 (삭제되지않은)
	public int selectCount() throws Exception {
		
		//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL (DAO)
		AdoptPromDao dao = new AdoptPromDao();
		int result = dao.selectCount(conn);
		
		//close
		JDBCTemplate.close(conn);
		
		return result;
	}




	
}//class
