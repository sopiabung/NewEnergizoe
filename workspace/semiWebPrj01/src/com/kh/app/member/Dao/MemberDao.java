package com.kh.app.member.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.websocket.Session;

import com.kh.app.member.vo.MemberVo;

import static com.kh.app.util.JDBCTemplate.*;

public class MemberDao {
	
	//회원가입
	public int join(Connection conn, MemberVo vo) throws Exception {

		//SQL실행 , close
		String sql = "INSERT INTO MEMBER(NO, DIV ,  NAME, ID, PWD, NICK, HP, BIRTH, ADDRESS, EMAIL) VALUES(SEQ_MEMBER_NO.NEXTVAL,?,?,?,?,?,?,?,?,?)";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getDiv()); 
		pstmt.setString(2, vo.getName()); //
		pstmt.setString(3, vo.getId());
		pstmt.setString(4, vo.getPwd());
		pstmt.setString(5, vo.getNick());
		pstmt.setString(6, vo.getHp()); //
		pstmt.setString(7, vo.getBirth());
		pstmt.setString(8, vo.getAddress());
		pstmt.setString(9, vo.getEmail());
		int result = pstmt.executeUpdate();

		close(pstmt);

		return result;
	}
	
	
	//로그인
	public MemberVo login(Connection conn, MemberVo vo) throws Exception {

		//SQL실행, close
		String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PWD = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getId());
		pstmt.setString(2, vo.getPwd());
		ResultSet rs = pstmt.executeQuery();


		//rs, 
		MemberVo loginMember = null;
		if(rs.next()) {
			
			String no = rs.getString("NO");
			String id = rs.getString("ID");
			String pwd = rs.getString("PWD");
			String nick = rs.getString("NICK");

			loginMember = new MemberVo();
			loginMember.setNo(no);
			loginMember.setId(id);
			loginMember.setPwd(pwd);
			loginMember.setNick(nick);
			
		}
		close(rs);
		close(pstmt);
		
		return loginMember;
	}
	
	
	//회원탈퇴
	public int quit(Connection conn, MemberVo loginMember) throws Exception {
		//SQL, close
		String sql = "DELETE MEMBER WHERE ID = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, loginMember.getId());
		int result = pstmt.executeUpdate();

		
		
		
		close(pstmt);

		return result;


	}

	//추가된 메소드.. (MemberService의 중복 아이디, 검사해당 회원의 게시글이나 댓글 등을 삭제에 필요한 메소드)
//	public MemberVo getMemberById(Connection conn, String id) throws Exception {
//		//아이디로 회원정보 조회..
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		MemberVo member = null;
//
//		try {
//			String sql = "SELECT * FROM MEMBER WHERE ID = ?";
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, id);
//
//			rs = pstmt.executeQuery();
//			if (rs.next()) {
//				member = new MemberVo();
//				member.setNo(rs.getInt("NO"));
//				member.setDiv(rs.getString("DIV"));
//				member.setName(rs.getString("NAME"));
//				member.setId(rs.getString("ID"));
//				member.setPwd(rs.getString("PWD"));
//				member.setNick(rs.getString("NICK"));
//				member.setHp(rs.getString("HP"));
//				member.setBirth(rs.getString("BIRTH"));
//				member.setAddress(rs.getString("ADDRESS"));
//				member.setEmail(rs.getString("EMAIL"));
//				member.setQuitYn(rs.getString("QUIT_YN"));
//				member.setJoinDate(rs.getTimestamp("JOIN_DATE").toLocalDateTime());
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//			throw new Exception("아이디로 회원정보를 조회하는 중 오류가 발생했습니다.");
//		} finally {
//			close(rs);
//			close(pstmt);
//		}
//
//		return member;
//	}

	//게시글이나 댓글 삭제
	public void deleteAllPosts(Connection conn, String memberId) throws Exception {
		PreparedStatement pstmt = null;
		try {
			String sql = "DELETE FROM POST WHERE MEMBER_ID = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new Exception("게시글 삭제 중 오류가 발생했습니다.");
		} finally {
			close(pstmt);
		}
	}
	//댓글삭제..
	public void deleteAllComments(Connection conn, String memberId) throws SQLException {
	    PreparedStatement pstmt = null;
	    try {
	        String sql = "DELETE FROM COMMENT WHERE MEMBER_ID = ?";
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, memberId);
	        pstmt.executeUpdate();
	    } finally {
	        close(pstmt);
	    }
	}


	public int edit(Connection conn, MemberVo vo) throws Exception {
		
		//SQL
		String sql = "UPDATE MEMBER SET ID = ? , PWD = ? , NICK = ? , HP = ? , BIRTH = ? , ADDRESS = ? , EMAIL = ? WHERE NO = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getId());
		pstmt.setString(2, vo.getPwd());
		pstmt.setString(3, vo.getNick());
		pstmt.setString(4, vo.getHp());
		pstmt.setString(5, vo.getBirth());
		pstmt.setString(6, vo.getAddress());
		pstmt.setString(7, vo.getEmail());
		pstmt.setString(8, vo.getNo());
		int result = pstmt.executeUpdate();
		
		
		//CLOSE
		close(pstmt);

		return result;
	}

}
