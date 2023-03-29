package com.kh.app.notice.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.kh.app.notice.service.NoticeService;
import com.kh.app.notice.vo.NoticeVo;
import com.kh.app.util.page.PageVo;

@WebServlet("/notice/noticeList")
public class NoticeListController extends HttpServlet {
	private NoticeService bs = new NoticeService();

	// 게시글 목록 (화면)
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			// 데이터 꺼내기 (페이징 처리를 위한 데이터 준비)
			int currentPage = 1;
			int listCount = bs.selectCount();
			int pageLimit = 5;
			int boardLimit = 5;

			// 데이터 뭉치기
			PageVo pageVo = new PageVo(listCount, currentPage, pageLimit, boardLimit);

			// 서비스 호출
			List<NoticeVo> boardList = bs.selectList(pageVo);

			// 화면
			req.setAttribute("boardList", boardList);
			req.setAttribute("pageVo", pageVo);
			req.getRequestDispatcher("/WEB-INF/views/notice/noticeList.jsp").forward(req, resp);

		} catch (Exception e) {
			System.out.println("[ERROR] 게시글 조회중 예외 발생 ...");
			e.printStackTrace();
			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}