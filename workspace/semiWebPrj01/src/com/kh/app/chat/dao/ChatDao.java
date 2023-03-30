package com.kh.app.chat.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kh.app.chat.vo.ChatVo;
import com.kh.app.util.page.PageVo;
import static com.kh.app.util.JDBCTemplate.*;

public class ChatDao {

	//채팅 목록 조회 ( 페이징 처리 )
	public List<ChatVo> selectChatList(Connection conn , PageVo pageVo) throws Exception {

		String sql = "";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		int startRow = (pageVo.getCurrentPage() -1) * pageVo.getBoardLimit();
		int endRow = startRow + pageVo.getBoardLimit() -1;
		pstmt.setInt(1, startRow);
		pstmt.setInt(2, endRow);
		ResultSet rs = pstmt.executeQuery();

		//RS -> OBJ (List<BoardList>)
		List<ChatVo> boardList = new ArrayList<ChatVo>();

		return boardList;

	}//채팅 목록 조회 끝




	//채팅방 생성
	public void writeChat() {

	}//채팅방 생성 끝

	//게시글 전체 갯수 조회 (삭제 되지 않은)
	public int selectCount(Connection conn) throws SQLException {

		//SQL (close)
		String sql = "SELECT COUNT(*) AS CNT FROM BOARD WHERE DELETE_YN = 'N'";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		//RS -> OBJ
		int cnt = 0;
		if(rs.next()){
			cnt = rs.getInt("CNT");
		}

		close(rs);
		close(pstmt);

		return cnt;


	}




	//채팅 상세 조회
	public void selectChatOne() {

	}//채팅 상세 조회 끝

}
