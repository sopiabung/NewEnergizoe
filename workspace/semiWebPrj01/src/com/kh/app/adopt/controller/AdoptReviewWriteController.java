package com.kh.app.adopt.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.adopt.service.AdoptReviewService;
import com.kh.app.adopt.vo.AdoptVo;

@WebServlet("/adopt/review/write")
public class AdoptReviewWriteController extends HttpServlet {
	
	//입양후기게시글작성(화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/adopt/adoptReviewForm.jsp").forward(req, resp);
	}
	
	//입양후기게시글작성
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 꺼내기
		String shelterNo = req.getParameter("shelterNo");
		String title = req.getParameter("title");
		String content = req.getParameter("content"); 
		
		//데이터 뭉치기
		AdoptVo vo = new AdoptVo();
		vo.setShelterNo(shelterNo);
		vo.setTitle(title);
		vo.setContent(content);
		
		int result = 0;
		try {
			//서비스 호출
			AdoptReviewService ars = new AdoptReviewService();
			result = ars.ReviewWrite(vo);
		} catch (Exception e) {
			System.out.println("[ERROR] 게시글 작성 중 예외발생 ...");
			e.printStackTrace();
		}
		
		//화면
		if(result == 1) {
			req.getSession().setAttribute("alertMsg", "게시글 작성 성공!");
			resp.sendRedirect("/webapp");
		}else {
			req.getSession().setAttribute("alertMsg", "게시글 작성 실패 ㅠ");
			resp.sendRedirect("/webapp");
		}
		
	}

}//class
