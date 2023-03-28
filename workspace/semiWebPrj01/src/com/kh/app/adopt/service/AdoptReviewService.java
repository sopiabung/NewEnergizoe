package com.kh.app.adopt.service;

import java.sql.Connection;
import java.util.List;

import com.kh.app.adopt.dao.AdoptReviewDao;
import com.kh.app.adopt.vo.AdoptReplyVo;
import com.kh.app.adopt.vo.AdoptVo;
import com.kh.app.util.JDBCTemplate;

public class AdoptReviewService {

	public List<AdoptVo> reviewList() throws Exception {

		//비즈니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL
		AdoptReviewDao reviewdao = new AdoptReviewDao();
		List<AdoptVo> adrList = reviewdao.reviewList(conn);
		
		//close
		JDBCTemplate.close(conn);
		
		return adrList;
		
	}
	
	//입양후기상세조회
	public AdoptVo selectOne(String adpNo) throws Exception {
		
		//비즈니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//DAO 호출
		AdoptReviewDao reviewdao = new AdoptReviewDao();
		AdoptVo adoptVo = reviewdao.selectOne(conn , adpNo);
		
		//tx , close
		JDBCTemplate.close(conn);
		
		return adoptVo;
		
	}
	
	//입양후기게시글작성
	public int ReviewWrite(AdoptVo vo) throws Exception {
		
		//비즈니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL (DAO)
		AdoptReviewDao dao = new AdoptReviewDao();
		int result = dao.ReviewWrite(conn , vo);
		
		//tx , close
		if(result == 1) {
			JDBCTemplate.commit(conn); 
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}

	//입양후기댓글목록
	public List<AdoptReplyVo> replyList() throws Exception {
		
		//비즈니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL (DAO)
		AdoptReviewDao dao = new AdoptReviewDao();
		List<AdoptReplyVo> adrrList = dao.replyList(conn);
		
		//close
		JDBCTemplate.close(conn);
		
		return adrrList;
	}
	
	//입양후기댓글작성
	public int replywrite(AdoptReplyVo vo) throws Exception {
		
		//비즈니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
				
		
		//SQL (DAO)
		AdoptReviewDao dao = new AdoptReviewDao();
		int result = dao.replywrite(conn , vo);
		
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
