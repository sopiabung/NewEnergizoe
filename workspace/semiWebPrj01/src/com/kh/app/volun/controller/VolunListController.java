package com.kh.app.volun.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.util.page.PageVo;
import com.kh.app.volun.service.VolunService;

//봉사자 모집글 목록 조회
@WebServlet("/volun/list")
public class VolunListController extends HttpServlet { 

	// 서비스 호출
	VolunService vs = new VolunService();

	// 게시글 목록 (화면)
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			// 데이터 꺼내기 (페이징 처리를 위한 데이터 준비)
			int currentPage = Integer.parseInt(req.getParameter("page"));
			int listCount = vs.selectCount();
			int pageLimit = 5;
			int boardLimit = 10;

			// 데이터 뭉치기
			PageVo pageVo = new PageVo(listCount, currentPage, pageLimit, boardLimit);

			// 서비스 호출
			// ResultSet이긴 한데 list배열로
//			List<VolunVo> volunList = vs.selectList(pageVo);

			// 화면
//			req.setAttribute("boardList", volunList);
			req.setAttribute("pageVo", pageVo);
			req.getRequestDispatcher("/volunList.jsp").forward(req, resp);

		} catch (Exception e) {
			System.out.println("[ERROR] 봉사모집글 조회 중 예외 발생");
			e.printStackTrace();
			req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req, resp);
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
