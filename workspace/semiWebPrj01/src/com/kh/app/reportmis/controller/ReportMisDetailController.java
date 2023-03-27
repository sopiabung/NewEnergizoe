package com.kh.app.reportmis.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.reportmis.service.ReportMisService;
import com.kh.app.reportmis.vo.ReportMisVo;

@WebServlet("/reportMis/detail")
public class ReportMisDetailController extends HttpServlet{
	
	//게시글 상세 조회
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			//데이터 꺼내기
			String reportNo = req.getParameter("reportNo");
			
			//데이터 뭉치기
			
			//서비스 호출
			ReportMisService rms = new ReportMisService();
			ReportMisVo vo = rms.selectOne(reportNo);
			
			//화면
			req.setAttribute("ReportMisVo" , vo);
			req.getRequestDispatcher("/WEB-INF/views/report/reportDetail.jsp").forward(req, resp);
			
		}catch (Exception e){
			System.out.println("[ERROR] 실종신고게시글 상세조회 중 예외 발생 ...");
			e.printStackTrace();
		}
	}//method

}//class