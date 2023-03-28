package com.kh.app.adopt.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.adopt.service.AdoptReviewService;
import com.kh.app.adopt.vo.AdoptReplyVo;

@WebServlet("/adopt/review/replywrite")
public class AdoptReplyWriteController extends HttpServlet {
	
	//댓글작성 (화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/adopt/adoptReviewDetail.jsp").forward(req, resp);
	}
	
	
	//댓글작성
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 꺼내기
		String writer = req.getParameter("writer");
		String replycontent = req.getParameter("replycontent");
		
		//데이터 뭉치기
		AdoptReplyVo vo = new AdoptReplyVo();
		vo.setWriter(writer);
		vo.setReplyContent(replycontent);
		
		try {
			//서비스 호출
			AdoptReviewService ars = new AdoptReviewService();
			int result = ars.replywrite(vo);
		} catch (Exception e) {
			System.out.println("[ERROR] 댓글 작성 중 예외발생 ㅠ");
			e.printStackTrace();
		}
		
		//화면
		req.getSession().setAttribute("alertMsg", "댓글 작성 완료!");
		resp.sendRedirect("/WEB-INF/views/adopt/adoptReviewDetail.jsp");
	}
}//class
