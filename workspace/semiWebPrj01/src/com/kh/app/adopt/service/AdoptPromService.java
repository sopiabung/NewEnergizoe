package com.kh.app.adopt.service;

import java.sql.Connection;
import java.util.List;

import com.kh.app.adopt.dao.AdoptPromDao;
import com.kh.app.adopt.vo.AdoptVo;
import com.kh.app.util.JDBCTemplate;

public class AdoptPromService {

	public List<AdoptVo> promList() throws Exception {
		
		//비즈니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL
		AdoptPromDao promdao = new AdoptPromDao();
		List<AdoptVo> adpList = promdao.promList(conn);
		
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

	
}//class