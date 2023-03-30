package com.kh.app.chat.service;

import java.sql.Connection;
import java.util.List;

import com.kh.app.chat.dao.ChatDao;
import com.kh.app.chat.vo.ChatVo;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.util.page.PageVo;

public class ChatService {
	
	
	//채팅 목록 조회
	public List<ChatVo> selectChatList(PageVo pageVo) throws Exception {
		
	//비지니스 로직
		
		//conn
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL(DAO)
		ChatDao dao = new ChatDao();
		List<ChatVo> boardList = dao.selectChatList(conn , pageVo);
		
		//close
		JDBCTemplate.close(conn); 
		
		return boardList;
		
		
	}//채팅 목록 조회 끝
	
	
	//채팅 열기
	public void writeChat() {
		
	}//채팅 열기 끝
	
	
	//게시글 
		public int selectCount() throws Exception{
			
			//비지니스 로직
			
			
			//CONN
			Connection conn = JDBCTemplate.getConnection();
			
			
			//SQL(DAO)
			ChatDao dao = new ChatDao();
			int result = dao.selectCount(conn);
			
			
			//TX , close
			JDBCTemplate.close(conn);
			
			return result;
			
		}
	
	
	
	
	
	//채팅 상세 조회
	public void selectOne() {
	
		//비지니스 로직
		
		//CONN
		
		//SQL (DAO)
		
		//CLOSE
		
		//return
		
			
	}//채팅 상세 끝

}//CLASS
