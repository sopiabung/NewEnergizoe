package com.kh.app.adopt.controller;

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

import com.kh.app.adopt.service.AdoptPromService;
import com.kh.app.animal.vo.AnimalVo;
import com.kh.app.board.vo.AdoptPhotoVo;

@MultipartConfig(maxFileSize = 1024 * 1024 * 100, maxRequestSize = 1024 * 1024 * 100 * 10)

@WebServlet("/adopt/prom/write")
public class AdoptPromWriteController extends HttpServlet {


	// 입양홍보게시글작성
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 데이터 꺼내기

		String animalType = req.getParameter("animalType");
		String animalName = req.getParameter("animalName");
		String animalGender = req.getParameter("animalGender");
		String animalNeut = req.getParameter("animalNeut");
		String animalBirthYear = req.getParameter("animalBirthYear");
		String animalWeight = req.getParameter("animalWeight");
		String character = req.getParameter("character");
		// 파일 서버에 저장
		Part f = req.getPart("f");


		// 파일 서버에 저장
		InputStream fis = f.getInputStream(); // 인풋 스트림 준비

		String path = req.getServletContext().getRealPath("/resources/img/");// 최상단 경로를 얻어올수 있다
		String originfileName = f.getSubmittedFileName();
		String ext = originfileName.substring(originfileName.lastIndexOf("."));// 맨뒤에서 처음으로 등장한 .의 위치

		String fileName = UUID.randomUUID().toString();

		File target = new File(path + fileName + ext);
		FileOutputStream fos = new FileOutputStream(target); // 아웃풋 스트림 준비

		// Read , Write
		byte[] buf = new byte[1024];
		int size = 0;
		while ((size = fis.read(buf)) != -1) {
			fos.write(buf, 0, size);
		}

		fis.close();
		fos.close();
		// ㄴ서버에 저장 끝

		// 데이터 뭉치기
		AnimalVo vo = new AnimalVo();
		vo.setTypeCode(Integer.parseInt(animalType));
		vo.setName(animalName);
		vo.setGender(animalGender);
		vo.setNeutYnx(animalNeut);
		vo.setBirthYear(animalBirthYear);
		vo.setWeight(animalWeight);
		vo.setCharacter(character);

		int result = 0;
		try {
			// 파일 정보 디비에 인서트 시작 (원본명, 변경된이름)

			AdoptPhotoVo atVo = new AdoptPhotoVo();
			atVo.setOriginName(originfileName);
			atVo.setChangeName(fileName + ext);

			// 파일 정보 디비에 인서트 끝

			// 서비스 호출
			AdoptPromService aps = new AdoptPromService();
			result = aps.write(vo, atVo);

		} catch (Exception e) {
			System.out.println("[ERROR] 입양홍보 게시글 작성 중 예외 발생");
			e.printStackTrace();
		}

		// 화면
		String root = req.getContextPath();
		if (result == 1) {
			req.getSession().setAttribute("alertMsg", "게시글 작성 성공 ㅎㅎ");
			resp.sendRedirect("/app01");
		} else {
			req.getSession().setAttribute("alertMsg", "게시글 작성 실패 ㅠ");
			resp.sendRedirect("/app01");
//			resp.sendRedirect(root);
		}

	}

}// class
