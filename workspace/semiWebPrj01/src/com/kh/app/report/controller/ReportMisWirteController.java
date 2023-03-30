package com.kh.app.report.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.report.service.ReportMisService;
import com.kh.app.report.vo.ReportMisVo;

@WebServlet("/report/Write")
public class ReportMisWirteController extends HttpServlet{
	
	//게시글 작성(화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/report/reportWrite.jsp").forward(req, resp);
	}
	
	//게시글 작성
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	
		
		//데이터 꺼내기
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String misDate = req.getParameter("misDate");
		String area = req.getParameter("area");
		String writer = req.getParameter("writer");
		
		//데이터 뭉치기
		ReportMisVo vo = new ReportMisVo();
		vo.setTitle(title);
		vo.setContent(content);
		vo.setMisDate(misDate);
		vo.setArea(area);
		vo.setWriter(writer);
		

		
		int result = 0;
		try {
			//서비스 호출
			ReportMisService rs = new ReportMisService();
			result = rs.write(vo);
		}catch(Exception e) {
			System.out.println("[ERROR] 실종신고 게시글 작성 중 예외발생 ...");
			e.printStackTrace();
		}
		
		//화면
		if(result == 1) {
			req.getSession().setAttribute("alertMsg", "실종신고 게시글 작성 성공!");
			resp.sendRedirect("/app01");
		}else {
			req.getSession().setAttribute("alertMsg", "실종신고 게시글 작성 실패 ...");
			resp.sendRedirect("/app01");
		}
		
	}
	
	
}//class
