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
		
		req.getRequestDispatcher("/WEB-INF/views/member/signup.jsp").forward(req, resp);
	}
	//회원가입
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 꺼내기
		String memberDiv = req.getParameter("memberDiv");			//회원이름
		String memberName = req.getParameter("memberName");			//회원이름
		String memberId = req.getParameter("memberId");				//아이디
		String memberPwd = req.getParameter("memberPwd");			//패스워드
		String memberNick = req.getParameter("memberNick");			//닉네임
		String memberHp = req.getParameter("memberHp");				//전화번호
		String memberBirth = req.getParameter("memberBirth");		//생년월일
		String memberAddress = req.getParameter("memberAddress");	//주소
		String memberEmail = req.getParameter("memberEmail");		//이메일
			
		//데이터 뭉치기
		MemberVo vo = new MemberVo();
		vo.setDiv(memberDiv);
		vo.setName(memberName);
		vo.setId(memberId);
		vo.setPwd(memberPwd);
		vo.setNick(memberNick);
		vo.setHp(memberHp);
		vo.setBirth(memberBirth);
		vo.setAddress(memberAddress);
		vo.setEmail(memberEmail);
		
		int result = 0;
		
		//비지니스 로직
		try {
			MemberService service = new MemberService();
			result = service.join(vo);
		} catch (Exception e) {
			System.out.println("[ERROR]회원가입 예외발생..");
			e.printStackTrace();
		}
		
		//화면
		String root = req.getContextPath();
		if(result == 1) {
			req.getSession().setAttribute("alertMsg", "회원가입 성공!!!");
			resp.sendRedirect(root);
		}else {
			req.getSession().setAttribute("alertMsg", "회원가입 실패...");
			resp.sendRedirect(root);
		}
	
	
	}
}//class
