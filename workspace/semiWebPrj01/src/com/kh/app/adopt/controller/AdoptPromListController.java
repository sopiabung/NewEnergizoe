package com.kh.app.adopt.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.adopt.service.AdoptPromService;
import com.kh.app.adopt.vo.AdoptVo;

@WebServlet("/adopt/adoptPromList")
public class AdoptPromListController extends HttpServlet {
	
	//입양홍보목록 
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 꺼내기
		
		//데이터 뭉치기
		
		List<AdoptVo> adpList = null;
		try {
			//서비스 호출
			AdoptPromService aps = new AdoptPromService();
			adpList = aps.promList();
			
		}catch(Exception e) {
			System.out.println("[ERROR] 게시글 조회 중 예외 발생 ..."); 
			e.printStackTrace();
		}
		
		
		//화면
		req.setAttribute("adpList", adpList);
		req.getRequestDispatcher("/WEB-INF/views/adopt/adoptPromList.jsp").forward(req, resp);
	}
	
	//입양홍보목록
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
		
	}
	
}//class
