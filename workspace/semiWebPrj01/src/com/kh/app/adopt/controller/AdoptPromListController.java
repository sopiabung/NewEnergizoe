package com.kh.app.adopt.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.adopt.service.AdoptPromService;
import com.kh.app.adopt.vo.AniadoptVo;
import com.kh.app.util.page.PageVo;

@WebServlet("/adopt/prom/list")
public class AdoptPromListController extends HttpServlet {
	
	//입양홍보목록 
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/adopt/adoptPromList.jsp").forward(req, resp);
		
		AdoptPromService aps = new AdoptPromService();
		try {
			//데이터 꺼내기(페이징 처리를 위한 데이터 준비)
			int currentPage = Integer.parseInt(req.getParameter("page"));
			int listCount = aps.selectCount();
			int pageLimit = 5;
			int boardLimit = 5;
			
			//데이터 뭉치기
			PageVo pageVo = new PageVo(listCount, currentPage, pageLimit, boardLimit);
			
			//서비스 호출
			List<AniadoptVo> adpList = aps.promList(pageVo);
			
			//화면
			req.getSession().setAttribute("adpList", adpList);
			req.setAttribute("pageVo", pageVo);
			
		
			
		}catch(Exception e) {
			System.out.println("[ERROR] 입양홍보목록조회 중 예외 발생 ..."); 
			e.printStackTrace();
			//에러페이지로 포워딩
			req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req, resp);
	}
		
		
	
	}
	
	//입양홍보목록
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
		
	}
	
}//class
