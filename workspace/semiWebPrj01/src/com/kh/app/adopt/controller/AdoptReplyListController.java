package com.kh.app.adopt.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.adopt.service.AdoptReviewService;
import com.kh.app.adopt.vo.AdoptReplyVo;

@WebServlet("/adopt/review/replylist")
public class AdoptReplyListController extends HttpServlet {
	
	//리플
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		List<AdoptReplyVo> adrrList = null;
		try {
			//서비스 호출
			AdoptReviewService arrs = new AdoptReviewService();
			adrrList = arrs.replyList();
		}catch(Exception e) {
			System.out.println("[ERROR] 댓글 조회 중 예외발생 ...");
			e.printStackTrace();
		}
		
		
		
		//화면
		req.setAttribute("adrrList", adrrList);
		req.getRequestDispatcher("/WEB-INF/views/adopt/adoptReviewDetail.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
	
}
