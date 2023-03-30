package com.kh.app.chat.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.app.chat.service.ChatService;
import com.kh.app.chat.vo.ChatVo;
import com.kh.app.util.page.PageVo;

//변동가능!!
@WebServlet("/chat/list")
public class ChatListController extends HttpServlet {
	
	private ChatService bs = new ChatService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/WEB-INF/views/chat/chatList.jsp").forward(req, resp);
//		try {
//
//			//데이터 꺼내기(데이터 준비)
//			int currentPage = Integer.parseInt(req.getParameter("page"));	
////			int listCount = bs.selectChatList();
//			int pageLimit = 5;
//			int	boardLimit = 11;
//
//			//데이터 뭉치기
////			PageVo pageVo = new PageVo(listCount, currentPage, pageLimit, boardLimit);
//
//			//서비스 호출
////			List<ChatVo> boardList = bs.selectChatList(pageVo);
//
//
//
//			//화면
////			req.setAttribute("boardList", boardList);
////			req.setAttribute("pageVo", pageVo);
//
//		} catch (Exception e) {
//			System.out.println("[ERROR] 게시글 조회 중 예외 발생 ...");
//			e.printStackTrace();
//			req.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(req, resp);
//		}
//
//
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}



}
