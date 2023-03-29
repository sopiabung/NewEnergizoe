package com.kh.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.member.service.MemberService;
import com.kh.app.member.vo.MemberVo;

@WebServlet("/member/edit")
public class MemberEditController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/member/myPage.jsp").forward(req, resp);
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
		//데이터 꺼내기
		String memberId = req.getParameter("memberId");
		String memberPwd = req.getParameter("memberPwd");
		String memberPwdConfirm = req.getParameter("memberPwdConfirm");
		String memberNick = req.getParameter("memberNick");
		String memberName = req.getParameter("memberName");
		String memberHp = req.getParameter("memberHp");
		String memberBirth = req.getParameter("memberBirth");
		String memberAddress = req.getParameter("memberAddress");
		String memberEmail = req.getParameter("memberEmail");
		
		//데이터 뭉치기
		MemberVo vo = new MemberVo();
		vo.setId(memberId);
		vo.setPwd(memberPwdConfirm);
		vo.setConfirmPwd(memberPwdConfirm);
		vo.setNick(memberNick);
		vo.setName(memberName);
		vo.setHp(memberHp);
		vo.setBirth(memberBirth);
		vo.setAddress(memberAddress);
		vo.setEmail(memberEmail);
		
		MemberService ms = new MemberService();
			ms.edit(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//화면
		
		
		//
	
	}

}
