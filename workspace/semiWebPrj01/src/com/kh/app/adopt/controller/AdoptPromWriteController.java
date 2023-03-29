package com.kh.app.adopt.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.kh.app.adopt.service.AdoptPromService;
import com.kh.app.adopt.vo.AniadoptVo;

@MultipartConfig(
		maxFileSize = 1024 * 1024 * 100 , 
		maxRequestSize = 1024 * 1024 * 100 *10
)
@WebServlet("/adopt/prom/write")
public class AdoptPromWriteController extends HttpServlet {
	
	//입양홍보게시글작성(화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/adopt/adoptPromForm.jsp").forward(req, resp);
	}
	
	//입양홍보게시글작성
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 꺼내기
		String shelAddress = req.getParameter("shelAddress");
		String animalSpec = req.getParameter("animalSpec");
		String animalName = req.getParameter("animalName");
		String animalGender = req.getParameter("animalGender");
		String animalNeut = req.getParameter("animalNeut");
		String animalAge = req.getParameter("animalAge");
		String animalWeight = req.getParameter("animalWeight");
		String character = req.getParameter("character");
		//파일 서버에 저장
		Part f = req.getPart("f"); 
		
		
		//데이터 뭉치기
		AniadoptVo vo = new AniadoptVo();
		vo.setMv().s;
		
		
		int result = 0;
		try {
			//서비스 호출
			AdoptPromService aps = new AdoptPromService();
			result = aps.PromWrite(vo);
		}catch(Exception e) {
			System.out.println("[ERROR] 게시글 작성 중 예외발생!!!");
			e.printStackTrace();
		}
		
		
		//화면
		if(result == 1) {
			req.getSession().setAttribute("id", vo.getMemberNo());
			req.getSession().setAttribute("alertMsg", "게시글 작성 성공!");
			resp.sendRedirect("/webapp");
		}else {
			req.getSession().setAttribute("alertMsg", "게시글 작성 실패 ㅠ");
			resp.sendRedirect("/webapp");
		}
		
	}
	
}//class
