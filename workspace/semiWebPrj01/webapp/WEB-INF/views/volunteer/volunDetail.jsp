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
  <title>봉사자모집 상세</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>
  <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    /* ======================== CSS 는 이 밑에다가 =================== */

    .wrapper1 {
      width: 1300px;
      margin: auto;
    }

    .vol-btn {
      height: 60px;
      width: 100%;

    }

    .vol-name {
      margin-bottom: 2%;
    }

    .item2 {
      margin-top: 4%;
    }

    .item2-text {
      margin: auto;
    }

    .vol-aboutTitle {
      margin-top: 5%;
    }

    .vol-about {
      margin-top: 3%;
      margin-bottom: 5%;
    }



    /* ======================== CSS 는 이 위에다가 =================== */
  </style>

  <!-- Custom styles for this template -->
  <link href="headers.css" rel="stylesheet">
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
  <!-- ================ HTML은 이 아래에다가 ================== -->
  <div class="wrapper1">
    <div class="vol-name">
      <h1>보호소 상세 정보</h1>
    </div>

    <hr>
    <div class="row">
      <div class="item1 col-sm-6 col-6 col-md-6"><img
          src="https://dimg.donga.com/wps/NEWS/IMAGE/2022/01/28/111500268.2.jpg" alt=""></div>
      <div class="item2 col-sm-6 col-6 col-md-6">
        <div class="item2-text"></div>
        <h2>시흥 보호소</h2>
        <hr>
        <div class="row">
          <div class="col-md-6">
            <h6>위치</h6>
          </div>
          <div class="col-md-6">
            경기도 시흥시 봉화로 18, 104동 503호</h6>
          </div><br><br>

          <div class="col-md-6">
            <h6>연락처</h6>
          </div>
          <div class="col-md-6">
            010-3191-2476</h6>
          </div><br><br>

          <div class="col-md-6">
            <h6>봉사 날짜</h6>
          </div><br><br>
          <div class="col-md-6">
            2023년 3월 22일</h6>
          </div><br><br>

          <div class="col-md-6">
            <h6>필요 봉사 인원</h6>
          </div><br><br>
          <div class="col-md-6">
            4 / 8 명</h6>
          </div><br><br>

          <div class="col-md-6">
            <h6>봉사 종류</h6>
          </div>
          <div class="col-md-6">
            산책</h6>
          </div><br>
          <hr>
        </div>
        <div class="row">
          <div class="col-md-12">
            <button onclick="location.href='/app01/volun/write'" class="btn btn-primary vol-btn">봉사 신청하기</button>
          </div>
        </div>

      </div>
    </div>
    <div class="col-md-12 vol-aboutTitle">
      <hr>
      <h1>봉사 내용</h1>
    </div>
    <div class="col-md-12 vol-about">
      산책 봉사 하실 분 모셔요~
    </div>

    <!-- ================ HTML은 이 위에다가 ==================== -->
    <!-- FOOTER -->
    <%@include file="/WEB-INF/views/common/footer.jsp" %>


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>