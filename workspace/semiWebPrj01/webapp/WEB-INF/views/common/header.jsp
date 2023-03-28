<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
	pageContext.setAttribute("root", request.getContextPath());
%>
<!-- Custom styles for this template --> <link href="navbar.css" rel="stylesheet">
<link rel="stylesheet" href="${root}/resources/css/common/header.css">

    <main>
    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
      <symbol id="bootstrap" viewBox="0 0 118 94">
        <title>Bootstrap</title>
        <path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"></path>
      </symbol>
    </svg>
   
     <!-- Header -->
     <div class="container">
       <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
         <a href="/app01" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
           <svg class="bi me-2" width="80" height="72" role="img" aria-label="PetTail">
             <image href="/app01/resources/img/로고.png".jpg width="80" height="72" />
           </svg>
         </a>

    <nav class="navbar navbar-expand-lg" >
      <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample10" aria-controls="navbarsExample10" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample10">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="/app01/introduce.jsp">소개</a>
            </li>
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">신고하기</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="/app01/reportList.jsp">실종 신고</a></li>
                <li><a class="dropdown-item" href="#">목격 신고</a></li>
                <li><a class="dropdown-item" href="#">보호 신고</a></li>
              </ul>
            </li>
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">입양하기</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="/app01/adoptPromList.jsp">입양 신청</a></li>
                <li><a class="dropdown-item" href="/app01/adoptReviewList.jsp">입양 후기</a></li>
              </ul>
            </li>
            
            <li class="nav-item">
              <a class="nav-link active" href="/app01/volunList.jsp">봉사</a>
            </li>
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">자유</a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="/app01/freePhotoList.jsp">사진 자랑</a></li>
                <li><a class="dropdown-item" href="/app01/freeCommList.jsp">자유 게시판</a></li>
                <li><a class="dropdown-item" href="/app01/freeStoryList.jsp">우리 아이 이야기</a></li>
              </ul>
            </li>
            
          </ul>
        </div>
      </div>
    </nav>

    <div class="col-md-3 text-end">
    	<c:if test="${loginMember != null }">
    		${loginMember.nick}님 환영합니다.
    		
    	</c:if>
    	
    	<c:if test="${loginMember == null }">
		      <button type="button" class="btn btn-outline-primary me-2"><a style="text-decoration: none; color: blue;" href="/app01/login.jsp">로그인</a></button>
		      <button type="button" class="btn btn-primary"><a style="text-decoration: none; color: blue;" href="/app01/signup.jsp">회원가입</a></button>
    	</c:if>
    </div>


</main>
    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>