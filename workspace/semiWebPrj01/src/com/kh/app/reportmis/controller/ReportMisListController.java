package com.kh.app.reportmis.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.reportmis.service.ReportMisService;
import com.kh.app.reportmis.vo.ReportMisVo;
import com.kh.app.util.page.PageVo;

@WebServlet("/reportMis/list")
public class ReportMisListController extends HttpServlet{
	
	private ReportMisService rms = new ReportMisService();
	
	//실종신고게시글 목록 (화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			//데이터 꺼내기(페이징 처리를 위한 데이터 준비)
			int currentPage = Integer.parseInt(req.getParameter("page"));
			int listCount = rms.selectCount();
			int pageLimit = 5;
			int boardLimit = 10; //1페이지에 10개씩 보이게
			
			//데이터 뭉치기
			PageVo pageVo = new PageVo(listCount, currentPage, pageLimit, boardLimit);
			
			//서비스 호출
			List<ReportMisVo> reportMisList = rms.selectList(pageVo);
			
			//화면
			req.setAttribute("reportMisList", reportMisList);
			req.setAttribute("pageVo", pageVo);
			req.getRequestDispatcher("/WEB-INF/views/report/reportList.jsp").forward(req, resp);
			
		}catch(Exception e){
			System.out.println("[ERROR] 실종신고게시글 조회 중 예외 발생 ...");
			e.printStackTrace();
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
