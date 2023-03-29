package com.kh.app.volun.controller;

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

import com.kh.app.board.vo.VolunPhotoVo;
import com.kh.app.volun.service.VolunService;
import com.kh.app.volun.vo.VolunVo;

//봉사자 모집 글 작성
@MultipartConfig(
	// 50MB
	maxFileSize = 1024 * 10124 * 50, // 파일 하나당 크기
	maxRequestSize = 1024 * 1024 * 50 * 10 // 리퀘스트 총 크기		
		)
@WebServlet("/volun/write")
public class VolunWriteController extends HttpServlet { 

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/volunteer/volunForm.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 데이터 꺼내기
		String shelNo = req.getParameter("shelNo");
		String type = req.getParameter("type");
		String volDate = req.getParameter("volDate");
		String endTime = req.getParameter("endTime");
		String needPeople = req.getParameter("needPeople");
		String content = req.getParameter("content");
		Part f = req.getPart("f");

		// 파일 서버에 저장 시작
		InputStream fis = f.getInputStream(); // 인풋 스트림 준비 완

		String path = req.getServletContext().getRealPath("/resources/img/");
		String OriginFileName = f.getSubmittedFileName();
		// 7이라고 안 적어도 마지막 글자까지 가져옴
		String ext = OriginFileName.substring(OriginFileName.lastIndexOf("."));

		// UUID : 16진수로 랜덤숫자를 뽑아오는 것. 중복 확률 아주아주 낮음.
		String fileName = UUID.randomUUID().toString();

		// File 임폴트할때는 java.io 객체로
		File target = new File(path + fileName + ext);
		FileOutputStream fos = new FileOutputStream(target); // 아웃풋 스트림 준비

		// read, write
		byte[] buf = new byte[1024];
		int size = 0;
		while ((size = fis.read(buf)) != -1) {
			fos.write(buf, 0, size);
		}

		fis.close();
		fos.close();

		// 서버에 저장 끝

		// 데이터 뭉치기
		VolunVo vo = new VolunVo();

		vo.setShelNo(shelNo);
		vo.setType(type);
		vo.setVolDate(volDate);
		vo.setEndTime(endTime);
		vo.setNeedPeople(needPeople);
		vo.setContent(content);

		int result = 0;
		try {
			// 파일정보 DB에 인서트 시작 (원본명, 변경된 이름)

			VolunPhotoVo atVo = new VolunPhotoVo();
			atVo.setOriginName(OriginFileName);
			atVo.setChangeName(fileName + ext);

			// 파일정보 DB에 인서트 끝

			// 서비스 호출
			VolunService bs = new VolunService();
			result = bs.write(vo, atVo);

		} catch (Exception e) {
			System.out.println("[ERROR] 봉사자모집글 작성 중 예외발생");
			e.printStackTrace();
		}

		// 화면
		if (result == 1) {
			req.getSession().setAttribute("alertMsg", "게시글 작성 성공!");
			resp.sendRedirect("${root}/volunList.jsp"); // 최상단경로로 보내기
		} else {
			req.getSession().setAttribute("alertMsg", "게시글 작성 실패!");
			resp.sendRedirect("${root}/WEB-INF/views/volunteer/volunForm.jsp"); // 최상단경로로 보내기
		}

	}

}
