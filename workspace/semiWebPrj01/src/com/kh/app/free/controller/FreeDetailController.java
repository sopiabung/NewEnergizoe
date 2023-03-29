package com.kh.app.free.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.kh.app.free.service.FreeService;
import com.kh.app.free.vo.FreeVo;

@WebServlet("/free/freeDetail")
public class FreeDetailController extends HttpServlet {
	// 게시글 상세 조회
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			// 데이터 꺼내기
			String no = req.getParameter("no");

			// 서비스 호출
			FreeService bs = new FreeService();
			FreeVo freeVo = bs.selectOne(no);

			// 화면
			req.setAttribute("freeVo", freeVo);
			req.getRequestDispatcher("/WEB-INF/views/free/freeDetail.jsp").forward(req, resp);
		} catch (Exception e) {
			System.out.println("[ERROR] 게시글 상세조회중 예외 발생 ...");
			e.printStackTrace();
		}
	}// method
}