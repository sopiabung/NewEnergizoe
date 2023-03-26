package com.kh.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.member.service.MemberService;
import com.kh.app.member.vo.MemberVo;

@WebServlet("/member/join")
public class MemberJoinController extends HttpServlet{
	
	//회원가입 (화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//경로 수정해야함..!!
		req.getRequestDispatcher("/WEB-INF/views/member/joinForm.jsp").forward(req, resp);
	}
	//회원가입
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 꺼내기
		String memberNo = req.getParameter("memberNo");				//회원번호
		String memberDiv = req.getParameter("memberDiv");			//회원구분
		String memberName = req.getParameter("memberName");			//회원이름
		String memberId = req.getParameter("memberId");				//아이디
		String memberPwd = req.getParameter("memberPwd");			//패스워드
		String memberNick = req.getParameter("memberNick");			//닉네임
		String memberHp = req.getParameter("memberHp");				//전화번호
		String memberBirth = req.getParameter("memberBirth");		//생년월일
		String memberAddress = req.getParameter("memberAddress");	//주소
		String memberEmail = req.getParameter("memberEmail");		//이메일
		String memberQuitYn = req.getParameter("memberQuitYn");		//탈퇴여부
		String memberJoinDate = req.getParameter("memberJoinDate");	//가입일자
		
			
		//데이터 뭉치기
		MemberVo vo = new MemberVo();
		vo.setDiv(memberNo);
		vo.setDiv(memberDiv);
		vo.setDiv(memberName);
		vo.setId(memberId);
		vo.setPwd(memberPwd);
		vo.setNick(memberNick);
		vo.setHp(memberHp);
		vo.setBirth(memberBirth);
		vo.setAddress(memberAddress);
		vo.setEmail(memberEmail);
		vo.setQuitYn(memberQuitYn);
		vo.setJoinDate(memberJoinDate);
		int result = 0;
		
		try {
			//비지니스 로직
			MemberService service = new MemberService();
			result = service.join(vo);
		} catch (Exception e) {
			System.out.println("[ERROR]회원가입 예외발생..");
			e.printStackTrace();
		}
		
		//화면
		if(result ==1 ) {
			req.getSession().setAttribute("alertMsg", "회원가입 성공!!");
			resp.sendRedirect("/app01");
		}else {
			req.setAttribute("errorMsg", "회원가입 실패..");
			req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req, resp);
		}
	
	
	
	
	}
}//class
