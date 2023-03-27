package com.kh.app.reportmis.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.kh.app.reportmis.service.ReportMisService;
import com.kh.app.reportmis.vo.AttachmentVo;
import com.kh.app.reportmis.vo.ReportMisVo;

@WebServlet("/reportMis/write")
public class ReportMisWirteController extends HttpServlet{
	
	//게시글 작성(화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/report/reportList.jsp").forward(req, resp);
	}
	
	//게시글 작성
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 꺼내기
		String writer = req.getParameter("writer");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		//파일 객체
		Part f = req.getPart("f"); 
		
		//파일 서버에 저장 시작
		InputStream fis = f.getInputStream();
		
		String path = req.getServletContext().getRealPath("resources/img/");
		String OriginfileName = f.getSubmittedFileName();
		String ext = OriginfileName.substring(OriginfileName.lastIndexOf("."));
		
		String fileName = UUID.randomUUID().toString();
		
		File target = new File(path + fileName + ext);
		FileOutputStream fos = new FileOutputStream(target);
		
		byte[] buf = new byte[1024];
		int size = 0;
		while((size = fis.read(buf)) != -1) {
			fos.write(buf, 0, size);
		}
		
		fis.close();
		fos.close();
		
		
		//데이터 뭉치기
		ReportMisVo vo = new ReportMisVo();
		vo.setWriter(writer);
		vo.setTitle(title);
		vo.setContent(content);
		
		int result = 0;
		try {
			
			AttachmentVo atVo = new AttachmentVo();
			atVo.setOriginName(OriginfileName);
			atVo.setChangeName(fileName + ext);
			
			//서비스 호출
			ReportMisService rms = new ReportMisService();
			result = rms.write(vo, atVo);
			
		}catch(Exception e) {
			System.out.println("[ERROR] 실종신고게시글 작성 중 예외 발생 ...");
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
