package com.kh.app.report.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.report.service.ReportMisService;
import com.kh.app.report.vo.ReportMisVo;
import com.kh.app.util.page.PageVo;

@WebServlet("/report/List")
public class ReportMisListController extends HttpServlet{
	
	//실종신고게시글 목록 (화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 뭉치기
		
		List<ReportMisVo> ReportMisList = null;
		try {
	
			//서비스 호출
			ReportMisService rs = new ReportMisService();
			ReportMisList = rs.selectList();
			
		}catch(Exception e){
			System.out.println("[ERROR] 실종신고게시글 조회 중 예외 발생 ...");
			e.printStackTrace();
			req.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(req, resp);
		}
		
		//화면
		req.setAttribute("ReportMisList", ReportMisList);
		req.getRequestDispatcher("/WEB-INF/views/report/reportList.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
