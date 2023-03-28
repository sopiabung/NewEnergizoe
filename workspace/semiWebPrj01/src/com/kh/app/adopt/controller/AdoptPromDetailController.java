package com.kh.app.adopt.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.adopt.service.AdoptPromService;
import com.kh.app.adopt.vo.AdoptVo;

@WebServlet("/adopt/prom/detail")
public class AdoptPromDetailController extends HttpServlet {
	
	//입양홍보상세
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			//데이터 꺼내기
			String adpNo = req.getParameter("adpNo");
			
			//데이터 뭉치기
			
			//서비스 호출
			AdoptPromService aps = new AdoptPromService();
			AdoptVo vo = aps.selectOne(adpNo);
			
			//화면
			req.setAttribute("AdoptVo", vo);
			req.getRequestDispatcher("/WEB-INF/views/adopt/adoptPromDetail.jsp").forward(req, resp);
			
		}catch(Exception e) {
			System.out.println("[ERROR] 게시글 상세조회중 예외 발생 ...");
			e.printStackTrace();
		}
		
	}//method
	
}//class
