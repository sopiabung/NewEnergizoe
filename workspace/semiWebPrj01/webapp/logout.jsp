<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // 세션에서 로그인 정보 삭제
    session.removeAttribute("loginMember");

    // 로그인 페이지로 이동
    response.sendRedirect("/app01");
%>