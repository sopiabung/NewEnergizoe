<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">



<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.104.2">
  <title>입양홍보페이지 전체목록</title>

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






    .adopt-category {
      display: flex;
      place-content: center center;
      place-items: center center;
      height: 200px;
      background-color: #FCE593;
      border-radius: 60px;
      margin-bottom: 50px;
    }
    #writeBtn {
        margin-left: 70%;
        margin-bottom: 30px;
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
          <image href="resources/img/puppy.jpg" width="100%" height="100%" />
        </svg>
        

        <div class="container">
          <div class="carousel-caption text-start">
            <h1>사지말고 입양하세요</h1>
            <p>생명은 사고 파는게 아니에요..</p>
             
	            <c:if test="${adpList} != null">
	           		 <p><a class="btn btn-lg btn-primary" href="/app01/adoptPromForm2.jsp">입양하기</a></p>
	            </c:if>
           
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
            <td>크기</td>
            <td>연령</td>
            <td>활발함</td>
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
                    <li><a class="dropdown-item" href="#">소 (8kg 미만)</a></li>
                    <li><a class="dropdown-item" href="#">중 (8 ~ 18kg 미만)</a></li>
                    <li><a class="dropdown-item" href="#">대 (8kg 이상)</a></li>
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
                    <li><a class="dropdown-item" href="#">Puppy (~ 6개월)</a></li>
                    <li><a class="dropdown-item" href="#">Junior (7개월 ~ 2살)</a></li>
                    <li><a class="dropdown-item" href="#">Adult (3살 ~ 8살)</a></li>
                    <li><a class="dropdown-item" href="#">Senior (9살~)</a></li>
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
                    <li><a class="dropdown-item" href="#">얌전</a></li>
                    <li><a class="dropdown-item" href="#">보통</a></li>
                    <li><a class="dropdown-item" href="#">활발</a></li>
                    <li><a class="dropdown-item" href="#">매우 활발</a></li>
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
      <div class="col-md-3 text-end" id="writeBtn">
        <button type="button" class="btn btn-outline me-2" style="background-color: #FCE593;" onclick="location.href='/app01/adopt/write'">글쓰기</button>
      </div>
      
      <div class="container">
        <div class="row">

          <c:forEach items="${adpList}" var="avo" >
          	<div class="col-md-3 img-size" onclick="location.href='/adopt/prom/detail'">
            <div class="card">
              <img src="resources/img/화난 포메.jpg"
                class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">${avo.title }</h5>
                <p class="card-text"> <b>${avo.aniNo}</b> 
                <br> ${avo.gender} ${avo.neutYnx} 
                <br> ${avo.birthYear} / ${avo.weight} / ${avo.color} </p>
              </div>
            </div>
          </div>
          </c:forEach>
          <!-- row div  -->
        </div>
        <!-- con div  -->
      </div>
          
          
      <!-- 게시글 목록 끝 -->

	<%@include file="/WEB-INF/views/common/paging.jsp" %>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>

</body>

</html>