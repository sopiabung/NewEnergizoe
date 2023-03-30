package com.kh.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.app.member.service.MemberService;
import com.kh.app.member.vo.MemberVo;

@WebServlet("/member/quit")
public class MemberQuitController extends HttpServlet{

	//회원탈퇴
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//데이터 꺼내기
		HttpSession session = req.getSession();
		MemberVo loginMember = (MemberVo)session.getAttribute("logMember");


		//데이터 뭉치기
		int result = 0;
		try {
			//비지니스로직
			MemberService service = new MemberService();
//			result = service.quit(loginMember);

		} catch (Exception e) {
			System.out.println("[ERROR]탈퇴 중 예외발생..");
			e.printStackTrace();
		}



		//화면
		if(result == 1) {
			session.invalidate();//만료처리하기
			req.getSession().setAttribute("alertMsg", "탈퇴성공!!");//세션에 알람메시지 나오기
			resp.sendRedirect("/app01");
		}else {
			req.getSession().setAttribute("alertMsg", "탈퇴 실패");//세션에 알람메시지 나오기
			resp.sendRedirect("/app01");
		}


	}


}//class
