<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en"><head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.104.2">
  <title>내가 입양한 동물 전체목록</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">

  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

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
      font-size: x-large;
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
<style>.osSwitch{position:relative;display:inline-block;width:34px;height:15.3px}.osSwitch input{opacity:0;width:0;height:0}.osSlider{position:absolute;top:0;left:0;right:0;bottom:0;border-radius:34px;background-color:#93a0b5;transition:0.4s}.osSlider:before{position:absolute;content:'';height:13px;width:13px;left:2px;bottom:1px;border-radius:50%;background-color:white;transition:0.4s}input:checked+.sliderGreen{background-color:#04d289}input:checked+.sliderRed{background-color:#ff3b30}input:not(:checked)+.defaultGreen{background-color:#04d289}input:checked+.osSlider:before{transform:translateX(17px)}
</style><style>
    @font-face {
      font-family: 'SegoeUI_online_security'; 
      src: url(chrome-extension://llbcnfanfmjhpedaedhbcnpgeepdnnok/segoe-ui.woff);
    }

    @font-face {
      font-family: 'SegoeUI_bold_online_security'; 
      src: url(chrome-extension://llbcnfanfmjhpedaedhbcnpgeepdnnok/segoe-ui-bold.woff);
    }
</style></head>

<body>

    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    
    
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	      <!-- 헤더 자리 -->

    <!-- 입양 이미지 -->
    <div>
   
      <!-- Image Slider -->
  <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">

    <div class="carousel-inner">
      <div class="carousel-item active">
        <svg class="bd-placeholder-img" width="100%" height="100%" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false" viewBox="0 0 2560 1600">
          <image href="/YW_images/폭안긴고양이.jpg" width="100%" height="100%"></image>
        </svg>
        

        <div class="container">
          <div class="carousel-caption text-start">
            <h1>내가 품은 평생가족</h1>
            <p> 평생 온기를 느껴보지 못 한 아이들을 입양해주셔서 감사합니다.</p>
            
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
      
      <!-- 카테고리 토글 검색 끝 -->

      <!-- 게시글 목록 -->
      <div class="container">
        <div class="row">

          
          <div class="col-md-3 img-size">
            <div class="card">
              <img src="/YW_images/나뭇가지불독.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">꾸덕</h5>
                <p class="card-text"> <b>개</b> <br> 남 ( 중성화 O ) <br> 2010년생 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>

          <div class="col-md-3 img-size">
            <div class="card">
              <img src="/YW_images/뛰는개.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">도레</h5>
                <p class="card-text"> <b>개</b> <br> 여 ( 중성화 O ) <br> 2009년생 / 13.3kg / 검정 </p>
              </div>
            </div>
          </div>

          <div class="col-md-3 img-size">
            <div class="card">
              <img src="/YW_images/목줄 진돗개.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">먀꾸</h5>
                <p class="card-text"> <b>개</b> <br> 남 ( 중성화 O ) <br> 2019년생 / 19.3kg / 흰색 </p>
              </div>
            </div>
          </div>

          <div class="col-md-3 img-size">
            <div class="card">
              <img src="/YW_images/나뭇가지불독.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">도레미</h5>
                <p class="card-text"> <b>개</b> <br> 남 ( 중성화 O ) <br> 2010년생 / 2.3kg / 베이지 </p>
              </div>
            </div>
          </div>

          <div class="col-md-3 img-size">
            <div class="card">
              <img src="/YW_images/잔디고양이.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">초코</h5>
                <p class="card-text"> <b>고양이</b> <br> 여 ( 중성화 O ) <br> 2012년생 / 5.8kg / 고등어태비 </p>
              </div>
            </div>
          </div>

          <div class="col-md-3 img-size">
            <div class="card">
              <img src="/YW_images/목줄 개.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">말랑카우</h5>
                <p class="card-text"> <b>개</b> <br> 여 ( 중성화 O ) <br> 2020년생 / 25kg / 베이지 </p>
              </div>
            </div>
          </div>

          <div class="col-md-3 img-size">
            <div class="card">
              <img src="/YW_images/화이트 불독.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">송디</h5>
                <p class="card-text"> <b>개</b> <br> 남 ( 중성화 O ) <br> 2023년생 / 12.7kg / 흰색 </p>
              </div>
            </div>
          </div>

          <div class="col-md-3 img-size">
            <div class="card">
              <img src="/YW_images/갇힌웃는개.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">누미</h5>
                <p class="card-text"> <b>개</b> <br> 여 ( 중성화 O ) <br> 2021년생 / 14.7kg / 베이지 </p>
              </div>
            </div>
          </div>

          <!-- row div  -->
        </div>
        <!-- con div  -->
      </div>
      <!-- 게시글 목록 끝 -->

      <!-- 게시글 리스트 -->
      <div class="btn-toolbar center" role="toolbar" aria-label="Toolbar with button groups">


        <div class="btn-group me-2" role="group" aria-label="First group">
          <button type="button" class="btn btn-primary">
            &lt;&lt; </button>
        </div>
        <div class="btn-group me-2" role="group" aria-label="First group">
          <button type="button" class="btn btn-primary">
            &lt; </button>
        </div>

        <div class="btn-group me-2" role="group" aria-label="First group">
          <button type="button" class="btn btn-primary">1</button>
          <button type="button" class="btn btn-primary">2</button>
          <button type="button" class="btn btn-primary">3</button>
          <button type="button" class="btn btn-primary">4</button>
        </div>

        <div class="btn-group me-2" role="group" aria-label="First group">
          <button type="button" class="btn btn-primary">&gt;</button>
        </div>
        <div class="btn-group me-2" role="group" aria-label="First group">
          <button type="button" class="btn btn-primary">&gt;&gt;</button>
        </div>

      </div>
      <!-- 게시글 리스트 끝 -->























      <!-- 푸터 자리 -->

<!-- Code injected by live-server -->
<script>
	// <![CDATA[  <-- For SVG support
	if ('WebSocket' in window) {
		(function () {
			function refreshCSS() {
				var sheets = [].slice.call(document.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
						elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
			var address = protocol + window.location.host + window.location.pathname + '/ws';
			var socket = new WebSocket(address);
			socket.onmessage = function (msg) {
				if (msg.data == 'reload') window.location.reload();
				else if (msg.data == 'refreshcss') refreshCSS();
			};
			if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
				console.log('Live reload enabled.');
				sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
			}
		})();
	}
	else {
		console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
	}
	// ]]>
		</script>
	
	
		<%@include file="/WEB-INF/views/common/paging.jsp" %>
		<%@include file="/WEB-INF/views/common/footer.jsp" %>
	</body>
</html>