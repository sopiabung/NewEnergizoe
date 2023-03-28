<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.104.2">
  <title>입양후기페이지 목록</title>

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
        

        <div class="container" id="reviewmain">
          <div class="carousel-caption text-start">
            <h1>입양 후기</h1>
             
	            <c:if test="id != null">
	           		 <p><a class="btn btn-lg btn-warning" style="background-color: #FCE593;" href="/app01/adoptReviewForm.jsp">후기작성하기</a></p>
	            </c:if>
           
          </div>
        </div>
      </div>
      
     </div>
    </div>



   
      <!-- 게시글 목록 -->
      <div class="container">
        <div class="row">

          
          <div class="col-md-3 img-size">
            <div class="card">
              <img src="resources/img/화난 포메.jpg"
                class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">도레미</h5>
                <p class="card-text"> <b>개 ( 포메라니안 )</b> <br> 남 ( 중성화 O ) <br> 2살 9개월 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>


          <div class="col-md-3 img-size">
            <div class="card">
              <img src="resources/img/화난 포메.jpg"
                class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">도레미</h5>
                <p class="card-text"> <b>개 ( 포메라니안 )</b> <br> 남 ( 중성화 O ) <br> 2살 9개월 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>
          <div class="col-md-3 img-size">
            <div class="card">
              <img src="resources/img/화난 포메.jpg"
                class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">도레미</h5>
                <p class="card-text"> <b>개 ( 포메라니안 )</b> <br> 남 ( 중성화 O ) <br> 2살 9개월 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>
          <div class="col-md-3 img-size">
            <div class="card">
              <img src="resources/img/화난 포메.jpg"
                class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">도레미</h5>
                <p class="card-text"> <b>개 ( 포메라니안 )</b> <br> 남 ( 중성화 O ) <br> 2살 9개월 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>
          <div class="col-md-3 img-size">
            <div class="card">
              <img src="resources/img/화난 포메.jpg"
                class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">도레미</h5>
                <p class="card-text"> <b>개 ( 포메라니안 )</b> <br> 남 ( 중성화 O ) <br> 2살 9개월 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>
          <div class="col-md-3 img-size">
            <div class="card">
              <img src="resources/img/화난 포메.jpg"
                class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">도레미</h5>
                <p class="card-text"> <b>개 ( 포메라니안 )</b> <br> 남 ( 중성화 O ) <br> 2살 9개월 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>
          <div class="col-md-3 img-size">
            <div class="card">
              <img src="resources/img/화난 포메.jpg"
                class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">도레미</h5>
                <p class="card-text"> <b>개 ( 포메라니안 )</b> <br> 남 ( 중성화 O ) <br> 2살 9개월 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>
          <div class="col-md-3 img-size">
            <div class="card">
              <img src="resources/img/화난 포메.jpg"
                class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">도레미</h5>
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