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
  <title>봉사모집글 목록</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
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
    div {
      display: block;
    }

    .btn-primary btn-lg {
      margin-left: 0;
    }

    .guide-btn {
      float: right;
    }

    .show-menu {
      font-size: 30px;
    }

    .search-menu {
      float: right;
    }

    .guide-img {
      margin: auto;
      width: 100%;
      height: 100%;
      position: relative;
    }

    .logo-guide {
      text-align: center;
      height: 400px;

    }

    .guide-text1 {
      position: absolute;
      top: 40%;
      left: 20%;
    }

    .guide-text2 {
      position: absolute;
      top: 92%;
      left: 2%;
    }

    .guide-btn {
      position: absolute;
      right: 20%;
      bottom: 2%;
    }

    .menu-img {
      width: 100%;
      height: 80%;
    }

    .vol-name {
      font-weight: border;
    }

    .footer {
      background-color: #FCE593;
    }


    .toolbar-size {
      margin-top: 3%;
      text-align: center;
    }

    .choice-bar {
      width: 100%;
      height: 50px;
      display: flex;
      justify-content: space-evenly;
      align-items: center;
      border: 1px solid gray;
      box-sizing: border-box;
    }

    .select-menu {
      margin-top: 1.5%;
    }

    .choice-wrapper1 {
      margin-top: 2%;
    }

    .choice-wrapper2 {
      margin-top: 2%;
    }

    .info1 {
      margin-top: 3%;

    }

    .info2 {
      margin-top: 3%;
    }

    .write-btn {
      margin-top: 1%;
    }

    .btn-toolbar {
      margin-top: 2%;
      margin-bottom: 2%;
    }

    .lasthr {
      margin-top: 4%;
    }
  </style>
  <!-- Custom styles for this template -->
  <link href="headers.css" rel="stylesheet">
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
        <div class="container-fluid py-5 logo-guide">
          <img class="guide-img" src="https://dimg.donga.com/wps/NEWS/IMAGE/2022/01/28/111500268.2.jpg" alt="">
          <ul class="nav justify-content-center select-menu">
            <li class="nav-item">
              <a class="nav-link" href="#">봉사목록</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">즐겨찾기</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">신청내역</a>
          </li>
          </ul>
        </div>
        <div class="container text-center">
          <div class="row">
            <div class="col-sm-2 show-menu">
              보호소 목록
            </div>
            <div class="col-sm-10">
              <nav class="navbar navbar-light bg-light search-menu">
                <div class="container-fluid">
                  <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">search</button>
                  </form>
                </div>
              </nav>
            </div>
            <div class="choice-wrapper1 col-sm-12">
              <div class="row">
                <div class="choice-menu col-sm-6">
                  <div><img src="https://dimg.donga.com/wps/NEWS/IMAGE/2022/01/28/111500268.2.jpg" alt=""></div>
                  <div class="row">
                    <div class="col-sm-9 info1 infoname">시흥 보호소</div>
                    <div class="col-sm-3 info1"><i class="bi bi-star-fill"></i></div>
                    <div class="col-sm-9 info2 address">경기도 시흥시 봉화로 18, 동원아파트 104동 503호</div>
                    <div class="col-sm-3 info2">
                      <div class="row">
                        <div class="col-md-12">
                          <button class="btn btn-primary vol-btn">자세히 보기</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="choice-menu col-sm-6">
                  <img src="https://dimg.donga.com/wps/NEWS/IMAGE/2022/01/28/111500268.2.jpg" alt="">
                  <div class="row">
                    <div class="col-sm-9 info1 infoname">시흥 보호소</div>
                    <div class="col-sm-3 info1"><i class="bi bi-star-fill"></i></div>
                    <div class="col-sm-9 info2 address">경기도 시흥시 봉화로 18, 동원아파트 104동 503호</div>
                    <div class="col-sm-3 info2">
                      <div class="row">
                        <div class="col-md-12">
                          <button class="btn btn-primary vol-btn">자세히 보기</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="choice-wrapper2 col-sm-12">
              <div class="row">
                <div class="choice-menu col-sm-6">
                  <div><img src="https://dimg.donga.com/wps/NEWS/IMAGE/2022/01/28/111500268.2.jpg" alt=""></div>
                  <div class="row">
                    <div class="col-sm-9 info1 infoname">시흥 보호소</div>
                    <div class="col-sm-3 info1"><i class="bi bi-star-fill"></i></div>
                    <div class="col-sm-9 info2 address">경기도 시흥시 봉화로 18, 동원아파트 104동 503호</div>
                    <div class="col-sm-3 info2">
                      <div class="row">
                        <div class="col-md-12">
                          <button class="btn btn-primary vol-btn">자세히 보기</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="choice-menu col-sm-6">
                  <img src="https://dimg.donga.com/wps/NEWS/IMAGE/2022/01/28/111500268.2.jpg" alt="">
                  <div class="row">
                    <div class="col-sm-9 info1 infoname">시흥 보호소</div>
                    <div class="col-sm-3 info1"><i class="bi bi-star-fill"></i></div>
                    <div class="col-sm-9 info2 address">경기도 시흥시 봉화로 18, 동원아파트 104동 503호</div>
                    <div class="col-sm-3 info2">
                      <div class="row">
                        <div class="col-md-12">
                          <button class="btn btn-primary vol-btn">자세히 보기</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <hr class="lasthr">
            <div class=" d-flex justify-content-end write-btn">
              <button class="btn btn-primary vol-btn">글 작성하기</button>
            </div>

            
            <!-- FOOTER -->
            <%@include file="/WEB-INF/views/common/paging.jsp" %>
			<%@include file="/WEB-INF/views/common/footer.jsp" %>
            

            <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
            
            
            
</body>

</html>