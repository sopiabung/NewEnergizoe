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
    <title>소개페이지</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
 <!-- CSS only -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
 <!-- JavaScript Bundle with Popper -->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  

<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      
    </style>

    
  </head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
    


    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>


    <!-- main 아래 추가하기 -->
    <body>
    
    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <svg class="bd-placeholder-img" width="100%" height="100%" viewBox="0 0 1920 1080" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                <image href="resources/img/dog51920x1080.jpg".jpg width="100%" />              
            </svg>
            
    
            <div class="container">
              <div class="carousel-caption text-start">
                <h1 style="color:red">유실, 유기동물 13만마리...</h1>
                <p style="color:red" font-size="300%">
                    주인을 찾지 못하거나 입양되지 않으면 대부분 안락사를 당하게 되는 것이 현실입니다.
                </p>
                
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <svg class="bd-placeholder-img" width="100%" height="100%"  viewBox="0 0 1920 1080" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                <image href="resources/img/dog31920x1080.jpg".jpg width="100%"  /> 
            </svg>
    
            <div class="container">
              <div class="carousel-caption">
                <h1>반려동물의 입양은...</h1>
                <p style="color:black">
                    반려동물을 소유권 이전의 대상이 아닌 살아있는 생물이자 가족 구성원으로 보는 관점입니다.
                </p>
                
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <svg class="bd-placeholder-img" width="100%" height="100%" viewBox="0 0 1920 1080" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false">
                <image href="resources/img/dog71920x1080.jpg".jpg width="100%"  />
            </svg>
    
            <div class="container">
              <div class="carousel-caption text-end">
                <h1>반려동물 사지말고 입양하세요</h1>
                <p style="color:black">인간중심 사회 속에서 착취와 고통으로 긴급한 도움이 필요한 <br>
                    동물들을 사랑하는 마음으로 감싸 안아 주세요.</p>
            
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
      <br>

<!-- 노랑이 -->
    
    <div class="row mb-2">
        <div class="col-md-6">
          <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
              
              <h3 class="mb-6">인사말</h3><br>
              <p class="card-text mb-auto">
                안녕하세요.<br>
                3조 에너자이조 입니다.<br>
                저희는 제대로 알려지지 못한 채 자연사 하거나 안락사 되는 <br>
                유기동물들을 세상에 알리고 유기동물에게 가족과 함께 하는 <br>
                따뜻한 삶을 선물해 주고 싶은 마음들이 모여 펫테일 플랫폼을 <br>
                만들어 보았습니다.<br>
                <br>
                <strong>" 펫테일 "</strong> 이름의 의미는 " 어느 동물이나 꼬리가 존재한다." 의<br>
                '동물의 꼬리' 에서  착안 했고 <br>
                
                <br>
                이 꼬리의 의미는 <strong>버팀목</strong>  이라고 볼 수 있는데, 동물은 사람의 꼬리가 되어 안정을 주고, 사람은
                동물의 <strong>" 안식처 "</strong> 가 되어 주는 의미를 가진 펫테일 입니다.</p>
              
            </div>
            <div class="col-auto d-none d-lg-block">
                <svg class="bd-placeholder-img rounded-circle" width="140" height="189"  role="img" preserveAspectRatio="xMidYMid slice" focusable="false">
                    <image href="resources/img/pettail.png".jpg width="150" height="189" />
                  </svg>
    
            </div>
          </div>
        </div>
        
        <div class="col-md-6">
          <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
              
              <h3 class="mb-0">기획의도</h3><br>
              
              <p class="mb-auto">
                품종의 유행에 따라 분양되었다가,<br>
                끝없이 늘어나는 유기 동물 수에 비해 
                보호소들의 환경은<br> 열악합니다.<br>
                <br>
                이중 절반에 가까운 동물들은 결국 가족을 만나지 못하고 <br>
                자연사 하거나 안락사 되고 있습니다.<br>
                <br>
                저희 펫테일은 세상으로부터 잊혀진채 무지개 다리를 <br>
                건너는 동물 친구들이 없도록, 유기동물에게 따뜻한 <br>
                가족의 품을 느끼게 해주려고 합니다.<br>
                <br>
                
                <h3>소중한 생명 사지말고 입양하세요.</h3>
                </p>
              
            </div>
            <div class="col-auto d-none d-lg-block">
              <svg class="bd-placeholder-img" width="200" height="250"  role="img" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" x="100%" y="100%"/>
                <image href="resources/img/dog11.png".jpg width="150" height="189" />
            </svg>
    
            </div>
          </div>
        </div>
      </div>

    
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
  </body>
</html>