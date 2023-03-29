package com.kh.app.free.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import com.kh.app.free.service.FreeService;
import com.kh.app.free.vo.FreeAttachmentVo;
import com.kh.app.free.vo.FreeVo;

@MultipartConfig(maxFileSize = 1024 * 1024 * 50, // 파일 하나당 크기
		maxRequestSize = 1024 * 1024 * 50 * 10 // 리퀘스트 총 크기
)
@WebServlet("/free/freeForm")
public class FreeWriterController extends HttpServlet {
	// 게시글 작성(화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/free/freeForm.jsp").forward(req, resp);
	}

	// 게시글 작성
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 데이터 꺼내기
		// String writer = req.getParameter("writer");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String writer = req.getParameter("writer");

		Part f = req.getPart("f"); // 파일 객체 얻음

		// 파일 서버에 저장 시작
		InputStream fis = f.getInputStream(); // 인풋 스트림 준비

		String path = req.getServletContext().getRealPath("/resources/img/");
		String originfileName = f.getSubmittedFileName();
		String ext = originfileName.substring(originfileName.lastIndexOf("."));

		String fileName = UUID.randomUUID().toString();

		File target = new File(path + fileName + ext);
		FileOutputStream fos = new FileOutputStream(target);// 아웃풋 스트림 준비

		// Read , Write
		byte[] buf = new byte[1024];
		int size = 0;
		while ((size = fis.read(buf)) != -1) {
			fos.write(buf, 0, size);
		}

		fis.close();
		fos.close();

		// 데이터 뭉치기
		FreeVo vo = new FreeVo();
		vo.setWriter(writer);
		vo.setTitle(title);
		vo.setContent(content);

		int result = 0;
		try {
			// 파일 정보 디비에 인서트 시작 (원본명,변경된이름)
			FreeAttachmentVo atVo = new FreeAttachmentVo();
			atVo.setOriginName(originfileName);
			atVo.setChangeName(fileName + ext);
			// 파일 정보 디비에 인서트 끝

			// 서비스 호출
			FreeService bs = new FreeService();
			result = bs.write(vo, atVo);

		} catch (Exception e) {
			System.out.println("[ERROR] 게시글 작성 중 예외발생 ...");
			e.printStackTrace();
		}
		// 화면
		if (result == 1) {
			req.getSession().setAttribute("alertMsg", "게시글 작성 성공!");
			resp.sendRedirect("/app01/free/freeList");
		} else {
			req.getSession().setAttribute("alertMsg", "게시글 작성 실패 ...");
			resp.sendRedirect("/");
		}
	}
}