<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.104.2">
    <title>자유게시판 사진자랑 목록</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
 <!-- CSS only -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
 <!-- JavaScript Bundle with Popper -->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
 <!-- Custom styles for this template -->
 <link href="carousel.css" rel="stylesheet">

<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      
      #writeBtn{
        float: right;
        position: relative;

      }
     
      .nav-itemFree{
        margin-left: 310px;
      }
      #navbarSet{
        width: 100%;
      }
      #photocard{
        margin-top: 50px;
       
      }
    </style>

    <!-- Custom styles for this template -->
    <link href="headers.css" rel="stylesheet">
  </head>
  
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>  
  <!-- 헤더 들어갈자리 -->

  <!-- 메인 -->
  <div class="text-center">
    <a href="#"><img src="resources/img/b1.jpg" width="100%" class="img-fluid" alt="..."></a>
  </div>
  

  <nav class="navbar navbar-expand-lg bg-light" id="navbarSet">
    <div class="container-fluid">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav"  id="navbarNavIn">
          <li class="nav-itemFree">
            <a class="nav-link active" aria-current="page" href="#">사진자랑</a>
          </li>
          <li class="nav-itemFree">
            <a class="nav-link active" aria-current="page" href="#">우리아이이야기</a>
          </li>
          <li class="nav-itemFree">
            <a class="nav-link active" aria-current="page" href="#">소통해요</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="col-md-3 text-end" id="writeBtn">
    <button type="button" class="btn btn-outline-primary me-2">글쓰기</button>
  </div>

  <div class="container" id="photocard">
    <div class="row">
      <div class="col-md-4 ">
        <div class="card">
          <img src="resources/img/d1.jpg"
            class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">우리 강아지에요!!</h5>
            <p class="card-text"> 반갑습니다 저희 강아지 귀엽죠 ?? ㅎㅎ </p>
          </div>
        </div>
      </div>

      <div class="col-md-4 ">
        <div class="card">
          <img src="resources/img/d1.jpg"
            class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">우리 강아지에요!!</h5>
            <p class="card-text"> 반갑습니다 저희 강아지 귀엽죠 ?? ㅎㅎ </p>
          </div>
        </div>
      </div>

      <div class="col-md-4 ">
        <div class="card">
          <img src="resources/img/d1.jpg"
            class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">우리 강아지에요!!</h5>
            <p class="card-text"> 반갑습니다 저희 강아지 귀엽죠 ?? ㅎㅎ </p>
          </div>
        </div>
      </div>

    </div>
  </div>

  <div class="container" id="photocard">
    <div class="row">
      <div class="col-md-4 ">
        <div class="card">
          <img src="resources/img/d1.jpg"
            class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">우리 강아지에요!!</h5>
            <p class="card-text"> 반갑습니다 저희 강아지 귀엽죠 ?? ㅎㅎ </p>
          </div>
        </div>
      </div>

      <div class="col-md-4 ">
        <div class="card">
          <img src="resources/img/d1.jpg"
            class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">우리 강아지에요!!</h5>
            <p class="card-text"> 반갑습니다 저희 강아지 귀엽죠 ?? ㅎㅎ </p>
          </div>
        </div>
      </div>

      <div class="col-md-4 ">
        <div class="card">
          <img src="resources/img/d1.jpg"
            class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">우리 강아지에요!!</h5>
            <p class="card-text"> 반갑습니다 저희 강아지 귀엽죠 ?? ㅎㅎ </p>
          </div>
        </div>
      </div>

    </div>
  </div>
  
    <!-- 푸터 들어갈자리 -->
    <%@include file="/WEB-INF/views/common/paging.jsp" %>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>

  </body>
</html>
