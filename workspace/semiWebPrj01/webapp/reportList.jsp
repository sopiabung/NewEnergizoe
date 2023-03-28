<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.104.2">
  <title>신고페이지 목록</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">

  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>

  <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/carousel/">


  <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>

    <!--여기부터 내가 만든-->
    .img-size {
      width: 100%;
      height: auto;
      padding-bottom: 50px;
      border-radius: 20%;
    }

    .center {
      display: flex;
      place-content: center;
      place-items: center;
    }

    div>div {
      margin-bottom: 30px;
    }

    a {
      text-decoration: none;
      color: black;
      font-size: x-large;
    }

    .adopt-category {
      display: flex;
      place-content: center;
      place-items: center;
      height: 200px;
      background-color: #FCE593;
      border-radius: 60px;
      margin-bottom: 50px;
    }
    
    .btn {
      background-color: #0081f3;
      color: white;	
    }
   
  </style>

  <!-- Custom styles for this template -->
  <link href="headers.css" rel="stylesheet">
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>

    <!-- 입양 이미지 -->
    <div>
   
      <!-- Image Slider -->
  <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">

    <div class="carousel-inner">
      <div class="carousel-item active">
        <svg class="bd-placeholder-img" width="100%" height="100%" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false" viewBox="0 0 2560 1600">
          <image href="resources/img/유기견.jpg" width="100%" height="100%" />
        </svg>
        

        <div class="container">
          <div class="carousel-caption text-start">
            <h1>우리아이를 찾아주세요</h1>
            <p>제보를 기다립니다</p>
            <button class="btn btn-lg btn-outline-secondary" onclick="location.href='${root}/report/write'">실종신고하기</button>
          </div>
        </div>
      </div>
      
     </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>

        

      <!-- 카테고리 토글 검색 -->
      <div class="adopt-category">
        <table>
          <tr>
            <td>동물구분</td>
            <td>성별</td>
            <td>지역</td>
            <td>실종/목격 일자</td>
          </tr>

          <!-- 동물 구분-->
          <tr>
            <td>
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                    aria-expanded="false">
                    ALL
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">개</a></li>
                    <li><a class="dropdown-item" href="#">고양이</a></li>
                    <li><a class="dropdown-item" href="#">기타</a></li>
                  </ul>
                </li>
              </ul>
            </td>
            <td>
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                    aria-expanded="false">
                    ALL
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">암컷</a></li>
                    <li><a class="dropdown-item" href="#">수컷</a></li>
                  </ul>
                </li>
              </ul>
            </td>

            <td>
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                    aria-expanded="false">
                    ALL
                  </a>
                  <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">서울/경기</a></li>
                    <li><a class="dropdown-item" href="#">기타</a></li>
                  </ul>
                </li>
              </ul>
            </td>
            <td>
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                    aria-expanded="false">
                    ALL
                  </a>
                  <ul class="dropdown-menu">
                    <h1>달력</h1>
                  </ul>
                </li>
              </ul>
            </td>
          </tr>
          <tr>
            <td colspan="5">
              <form class="d-flex" role="search">
                <input style="width: 300px;" class="form-control me-2" type="search" placeholder="Search"
                  aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
              </form>
            </td>
          </tr>
        </table>
      </div>
      <!-- 카테고리 토글 검색 끝 -->

      <!-- 게시글 목록 -->
      <div class="container">
        <div class="row">

          
          <div class="col-md-3 img-size">
            <div class="card">
              <a href="#"><img src="KH-IMG/다운로드.jpg"
                class="card-img-top" alt="..."></a>
              <div class="card-body">
                <h5 class="card-title"><a href="#">도레미</a></h5>
                <p class="card-text"> <b>개 ( 포메라니안 )</b> <br> 남 ( 중성화 O ) <br> 2살 9개월 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>


          <div class="col-md-3 img-size">
            <div class="card">
              <a href="#"><img src="KH-IMG/다운로드.jpg"
                class="card-img-top" alt="..."></a>
              <div class="card-body">
                <h5 class="card-title"><a href="#">도레미</a></h5>
                <p class="card-text"> <b>개 ( 포메라니안 )</b> <br> 남 ( 중성화 O ) <br> 2살 9개월 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>
          <div class="col-md-3 img-size">
            <div class="card">
              <a href="#"><img src="KH-IMG/다운로드.jpg"
                class="card-img-top" alt="..."></a>
              <div class="card-body">
                <h5 class="card-title"><a href="#">도레미</a></h5>
                <p class="card-text"> <b>개 ( 포메라니안 )</b> <br> 남 ( 중성화 O ) <br> 2살 9개월 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>
          <div class="col-md-3 img-size">
            <div class="card">
              <a href="#"><img src="KH-IMG/다운로드.jpg"
                class="card-img-top" alt="..."></a>
              <div class="card-body">
                <h5 class="card-title"><a href="#">도레미</a></h5>
                <p class="card-text"> <b>개 ( 포메라니안 )</b> <br> 남 ( 중성화 O ) <br> 2살 9개월 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>
          <div class="col-md-3 img-size">
            <div class="card">
              <a href="#"><img src="KH-IMG/다운로드.jpg"
                class="card-img-top" alt="..."></a>
              <div class="card-body">
                <h5 class="card-title"><a href="#">도레미</a></h5>
                <p class="card-text"> <b>개 ( 포메라니안 )</b> <br> 남 ( 중성화 O ) <br> 2살 9개월 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>
          <div class="col-md-3 img-size">
            <div class="card">
              <a href="#"><img src="KH-IMG/다운로드.jpg"
                class="card-img-top" alt="..."></a>
              <div class="card-body">
                <h5 class="card-title"><a href="#">도레미</a></h5>
                <p class="card-text"> <b>개 ( 포메라니안 )</b> <br> 남 ( 중성화 O ) <br> 2살 9개월 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>
          <div class="col-md-3 img-size">
            <div class="card">
              <a href="#"><img src="KH-IMG/다운로드.jpg"
                class="card-img-top" alt="..."></a>
              <div class="card-body">
                <h5 class="card-title"><a href="#">도레미</a></h5>
                <p class="card-text"> <b>개 ( 포메라니안 )</b> <br> 남 ( 중성화 O ) <br> 2살 9개월 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>
          <div class="col-md-3 img-size">
            <div class="card">
              <a href="#"><img src="KH-IMG/다운로드.jpg"
                class="card-img-top" alt="..."></a>
              <div class="card-body">
                <h5 class="card-title"><a href="#">도레미</a></h5>
                <p class="card-text"> <b>개 ( 포메라니안 )</b> <br> 남 ( 중성화 O ) <br> 2살 9개월 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>

          <!-- row div  -->
        </div>
        <!-- con div  -->
      </div>
      <!-- 게시글 목록 끝 -->

    
      
	    <%@include file="/WEB-INF/views/common/paging.jsp" %>
		<%@include file="/WEB-INF/views/common/footer.jsp" %>
	
</body>

</html>