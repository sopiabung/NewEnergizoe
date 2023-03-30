package com.kh.app.report.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.report.service.ReportMisService;
import com.kh.app.report.vo.ReportMisVo;

@WebServlet("/report/detail")
public class ReportMisDetailController extends HttpServlet{
	
	//게시글 상세 조회
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			//데이터 꺼내기
			String no = req.getParameter("no");
			
			//데이터 뭉치기
			
			//서비스 호출
			ReportMisService rs = new ReportMisService();
			ReportMisVo vo = rs.selectOne(no);
			
			//화면
			req.getSession().setAttribute("ReportMisVo" , vo);
			req.getRequestDispatcher("/WEB-INF/views/report/repoDetail.jsp").forward(req, resp);
			
		}catch (Exception e){
			System.out.println("[ERROR] 실종신고게시글 상세조회 중 예외 발생 ...");
			e.printStackTrace();
		}
	}//method

}//class
