package com.kh.app.adopt.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.adopt.service.AdoptReviewService;
import com.kh.app.adopt.vo.AdoptVo;

@WebServlet("/adopt/review/list")
public class AdoptReviewListController extends HttpServlet {
	
	//입양후기목록
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 꺼내기
		
		//데이터 뭉치기
		
		List<AdoptVo> adrList = null;
		try {
			//서비스 호출
			AdoptReviewService ars = new AdoptReviewService();
			adrList = ars.reviewList();
			
		}catch(Exception e) {
			System.out.println("[ERROR] 게시글 조회 중 예외 발생 ...");
			e.printStackTrace();
		}
		
		
		//화면
		req.setAttribute("adrList", adrList);
		req.getRequestDispatcher("/WEB-INF/views/adopt/adoptReviewList.jsp").forward(req, resp);
		
	}
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
