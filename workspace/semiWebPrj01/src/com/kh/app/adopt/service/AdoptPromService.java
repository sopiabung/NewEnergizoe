package com.kh.app.adopt.service;

import java.sql.Connection;

import com.kh.app.adopt.dao.AdoptPromDao;
import com.kh.app.animal.vo.AnimalVo;
import com.kh.app.board.vo.AdoptPhotoVo;
import com.kh.app.util.JDBCTemplate;

public class AdoptPromService {

	//입양홍보글 작성
	public int write(AnimalVo vo, AdoptPhotoVo atVo) throws Exception {
		//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		AdoptPromDao dao = new AdoptPromDao();
		//SQL (DAO) == 게시글 인서트
		int result = dao.write(conn , vo);
		//SQL (DAO) == 첨부파일 인서트
		int atResult = dao.insertAttachment(conn, atVo);
		
		//tx , close
		if(result * atResult == 1) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result * atResult;
	}

	
	
//	public List<AniadoptVo> promList(PageVo pagevo) throws Exception {
////		//비즈니스 로직
//		
////		//conn
//		Connection conn = JDBCTemplate.getConnection();
//	
////		//SQL
//		AdoptPromDao promdao = new AdoptPromDao();
//		//List<AniadoptVo> adpList = promdao.promList(conn , pagevo);
//		
////		//close
//		JDBCTemplate.close(conn);
//		
//		return adpList;
//	}
//	
//	
////	//입양홍보상세조회
//	public AdoptVo selectOne(String adpNo) throws Exception {
//		
////		//비즈니스 로직
//		
////		//conn
//		Connection conn = JDBCTemplate.getConnection();
//		
////		//DAO 호출
//		AdoptPromDao promdao = new AdoptPromDao();
//		AdoptVo adoptVo = promdao.selectOne(conn , adpNo);
//		
////		//tx , close
//		JDBCTemplate.close(conn);
//		
//		return adoptVo;
//		
//	}
//
//
//	//게시글 전체 갯수 조회 (삭제되지않은)
//	public int selectCount() throws Exception {/		
//		//비지니스 로직
//		
//		//conn
//		Connection conn = JDBCTemplate.getConnection();
//		
//		//SQL (DAO)
//		AdoptPromDao dao = new AdoptPromDao();
//		int result = dao.selectCount(conn);
//		
//		//close
//		JDBCTemplate.close(conn);
//		
//		return result;
//	}
//
//
//
//


	
}//class
