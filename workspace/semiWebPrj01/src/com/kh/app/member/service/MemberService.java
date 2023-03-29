package com.kh.app.member.service;

import java.sql.Connection;

import com.kh.app.member.Dao.MemberDao;
import com.kh.app.member.vo.MemberVo;
import com.kh.app.util.JDBCTemplate;

public class MemberService {
	
	Connection conn = JDBCTemplate.getConnection();

	//회원가입
	public int join(MemberVo vo) throws Exception {
		System.out.println(vo);
		// 회원가입 내용
		if (vo.getId() == null || vo.getId().trim().length() == 0) {
			throw new Exception("아이디를 입력해주세요.");
		}
		if (vo.getPwd() == null || vo.getPwd().trim().length() == 0) {
			throw new Exception("비밀번호를 입력해주세요.");
		}
//		if (!vo.getPwd().equals(vo.getConfirmPwd())) {
//			throw new Exception("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
//		}

		if (vo.getName() == null || vo.getName().trim().length() == 0) {
			throw new Exception("이름을 입력해주세요.");
		}
		if (vo.getHp() == null || vo.getHp().trim().length() == 0) {
			throw new Exception("휴대폰 번호를 입력해주세요.");
		}
		if (vo.getAddress() == null || vo.getAddress().trim().length() == 0) {
			throw new Exception("주소를 입력해주세요.");
		}
		if (vo.getEmail() == null || vo.getEmail().trim().length() == 0) {
			throw new Exception("이메일을 입력해주세요.");
		}

		// 이메일 유효성 검사
		String email = vo.getEmail().trim();
		String emailRegex = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
		if (!email.matches(emailRegex)) {
			throw new Exception("올바른 이메일 형식이 아닙니다.");
		}



		// 중복 아이디 검사
		MemberDao dao = new MemberDao();
		
		//	    MemberVo existingMember = dao.getMemberById(conn, vo.getId());

		//	    if (existingMember != null) {
		//	        throw new Exception("이미 사용 중인 아이디입니다.");
		//	    }

		// 회원 정보 저장
		int result = dao.join(conn, vo);

		if (result == 1) {
			JDBCTemplate.commit(conn);
		} else {
			JDBCTemplate.rollback(conn);
		}

		JDBCTemplate.close(conn);

		System.out.println("fff");
		JDBCTemplate.close(conn);

		return result;
	}		

	//로그인

	public MemberVo login(MemberVo vo) throws Exception {
		//비지니스로직
		// 입력된 아이디와 비밀번호가 있는지 확인
		if (vo.getId() == null || vo.getId().trim().length() == 0) {
			throw new Exception("아이디를 입력해주세요.");
		}
		if (vo.getPwd() == null || vo.getPwd().trim().length() == 0) {
			throw new Exception("비밀번호를 입력해주세요.");
		}
		//	    // 해당 회원 정보가 없으면 로그인 실패 처리
		//	    if (loginMember == null) {
		//	        throw new Exception("아이디 또는 비밀번호가 올바르지 않습니다.");
		//	    }
		//
		//	    // 입력된 비밀번호와 DB에 저장된 비밀번호를 비교
		//	    if (!vo.getPwd().equals(loginMember.getPwd())) {
		//	        throw new Exception("아이디 또는 비밀번호가 올바르지 않습니다.");
		//	    }

		// DB에서 해당 회원 정보를 가져오기
		MemberDao dao = new MemberDao();
		MemberVo loginMember = dao.login(conn, vo);

		JDBCTemplate.close(conn);
		

		// 로그인 성공 처리
		return loginMember;
		
		
	}

	public int edit(MemberVo vo) throws Exception {
		
		//비지니스 로직
		if (vo.getPwd() == null || vo.getPwd().trim().length() == 0) {
			throw new Exception("비밀번호를 입력해주세요.");
		}
		if (!vo.getPwd().equals(vo.getConfirmPwd())) {
			throw new Exception("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
		}
		
		//CONN
		Connection conn = JDBCTemplate.getConnection();
		
		//SQL(DAO)
		MemberDao dao = new MemberDao();
		int result = dao.edit(conn , vo);
		
		System.out.println(result);
		
		if(result == 1) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
			
		}
		JDBCTemplate.close(conn);

		return result;
		
		
	}


	//회원탈퇴

	//	public int quit(MemberVo loginMember) throws Exception {
	//	    // 회원 탈퇴 비지니스 로직
	//	    String memberId = loginMember.getId();
	//
	//	    //conn
	//	    Connection conn = JDBCTemplate.getConnection();
	//
	//	    try {
	//	        //SQL
	//	        MemberDao dao = new MemberDao();
	//
	//	        // 1. 해당 회원이 존재하는지 확인
	//	        MemberVo member = dao.quit(conn, memberId);
	//	        if (member == null) {
	//	            throw new Exception("존재하지 않는 회원입니다.");
	//	        }
	//
	//	        // 2. 해당 회원의 게시글이나 댓글 등을 삭제
	//	        dao.deleteAllPosts(conn, memberId);
	//	        dao.deleteAllComments(conn, memberId);
	//
	//	        // 3. 해당 회원의 정보를 삭제
	//	        int result = dao.quit(conn, loginMember);
	//
	//	        //tx, close
	//	        if(result == 1) {
	//	            JDBCTemplate.commit(conn);
	//	        } else {
	//	            JDBCTemplate.rollback(conn);
	//	        }
	//	        return result;
	//	    } finally {
	//	        JDBCTemplate.close(conn);
	//	    }
	//	}



}


