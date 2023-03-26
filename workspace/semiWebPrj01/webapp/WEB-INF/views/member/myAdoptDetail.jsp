<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.104.2">
        <title>내가 입양한 동물 상세페이지</title>

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
            /* 여기부터 내가 만든 css */

            .margin-left {
                margin-left: 66px;
                margin-bottom: 30px;
            }


            .post {
                margin-top: 3%;
                margin-bottom: 3%;

            }


            .img-size {
                width: 700px;
            }

            .yesOrNo1 {
                text-align: center;
                background-color: #FCE593;
                margin: 0;
            }

            .yesOrNo2 {
                display: flex;
                place-content: center;
                place-items: center;
                background-color: ghostwhite;
                height: 100PX;
                margin: 0;
            }

            .adopt-btn {
                width: 100%;
                height: 74px;
            }

            .place-center {
                place-content: center center;
                place-items: center center;
            }
        </style>

        <!-- Custom styles for this template -->
        <link href="headers.css" rel="stylesheet">
        <style>
            .osSwitch {
                position: relative;
                display: inline-block;
                width: 34px;
                height: 15.3px
            }

            .osSwitch input {
                opacity: 0;
                width: 0;
                height: 0
            }

            .osSlider {
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                border-radius: 34px;
                background-color: #93a0b5;
                transition: 0.4s
            }

            .osSlider:before {
                position: absolute;
                content: '';
                height: 13px;
                width: 13px;
                left: 2px;
                bottom: 1px;
                border-radius: 50%;
                background-color: white;
                transition: 0.4s
            }

            input:checked+.sliderGreen {
                background-color: #04d289
            }

            input:checked+.sliderRed {
                background-color: #ff3b30
            }

            input:not(:checked)+.defaultGreen {
                background-color: #04d289
            }

            input:checked+.osSlider:before {
                transform: translateX(17px)
            }
        </style>
        <style>
            @font-face {
                font-family: 'SegoeUI_online_security';
                src: url(chrome-extension://llbcnfanfmjhpedaedhbcnpgeepdnnok/segoe-ui.woff);
            }

            @font-face {
                font-family: 'SegoeUI_bold_online_security';
                src: url(chrome-extension://llbcnfanfmjhpedaedhbcnpgeepdnnok/segoe-ui-bold.woff);
            }
        </style>
    </head>

    <body>
    	<%@include file="/WEB-INF/views/common/header.jsp"%>
       <!-- 헤더 자리 -->

        <!-- 게시글 부분 -->
        <div class="container post">
            <div class="row">

                <div class="col-md-12 margin-left">
                    <h1>내가 품은 평생가족</h1>
                </div>

                <!-- 동물 사진 -->
                <!-- Image Slider -->
                <div id="myCarousel" class="carousel slide col-md-6 pointer-event" data-bs-ride="carousel">

                    <div class="carousel-inner">
                        <div class="carousel-item">
                            <svg class="bd-placeholder-img" width="100%" height="650px" aria-hidden="true"
                                preserveAspectRatio="xMidYMid slice" focusable="false" viewBox="0 0 2560 1600">
                                <image href="/YW_images/불독.jpg" width="100%" height="100%"></image>
                            </svg>



                        </div>
                        <div class="carousel-item active">
                            <svg class="bd-placeholder-img" width="100%" height="650px" aria-hidden="true"
                                preserveAspectRatio="xMidYMid slice" focusable="false" viewBox="0 0 2560 1600">
                                <image href="/YW_images/화이트 불독.jpg" width="100%" height="100%"></image>
                            </svg>

                        </div>
                        <div class="carousel-item">
                            <svg class="bd-placeholder-img" width="100%" height="650px" aria-hidden="true"
                                preserveAspectRatio="xMidYMid slice" focusable="false" viewBox="0 0 2560 1600">
                                <image href="/YW_images/나뭇가지불독.jpg" width="100%" height="100%"></image>
                            </svg>


                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
                <!-- 동물 사진 끝 -->

                <!-- 동물 정보 -->
                <div class="col-md-6">
                    <!-- 동물이름 -->
                    <br>
                    <h1>꾸덕</h1>
                    <hr>

                    <!-- 동물 능력치 -->
                    <div class="row post">

                        <!-- 동물 종 -->
                        <div class="col-md-6">
                            <h6><small>종</small></h6>
                        </div>
                        <div class="col-md-6">
                            <h6>개</h6>
                        </div><br><br>

                        <!-- 동물성별 -->
                        <div class="col-md-6">
                            <h6><small>성별 (중성화)</small></h6>
                        </div>
                        <div class="col-md-6">
                            <h6>남 / O</h6>
                        </div><br><br>

                        <!-- 나이 -->
                        <div class="col-md-6">
                            <h6><small>추정 출생연도</small></h6>
                        </div>
                        <div class="col-md-6">
                            <h6>2010년생</h6>
                        </div><br><br>

                        <!-- 몸무게 -->
                        <div class="col-md-6">
                            <h6><small>몸무게</small></h6>
                        </div>
                        <div class="col-md-6">
                            <h6>2.6kg</h6>
                        </div><br><br>

                        <!-- 털색 -->
                        <div class="col-md-6">
                            <h6><small>털색</small></h6>
                        </div>
                        <div class="col-md-6">
                            <h6>베이지</h6>
                        </div><br><br>
                        <hr>

                        <!-- 동물 친화도 및 훈련도 -->
                        <br>
                        <div class="col-md-6 place-center">
                            <strong>친화도</strong>&nbsp;&nbsp;
                            <progress value="80" max="100">친화도</progress>
                        </div>
                        <div class="col-md-6 place-center">
                            <strong>활발함</strong>&nbsp;&nbsp;
                            <progress value="90" max="100"></progress>
                        </div>
                        <br><br>

                        <!-- YES OR NO -->
                        <div class="col-md-3">
                            <h6 class="yesOrNo1">타동물 친화</h6>
                        </div>
                        <div class="col-md-3">
                            <h6 class="yesOrNo1">어린이 친화</h6>
                        </div>
                        <div class="col-md-3">
                            <h6 class="yesOrNo1">산책 가능</h6>
                        </div>
                        <div class="col-md-3">
                            <h6 class="yesOrNo1">배변 훈련</h6>
                        </div>

                        <div class="col-md-3">
                            <h6 class="yesOrNo2"><strong>YES</strong></h6>
                        </div>
                        <div class="col-md-3">
                            <h6 class="yesOrNo2"><strong>YES</strong></h6>
                        </div>
                        <div class="col-md-3">
                            <h6 class="yesOrNo2"><strong>YES</strong></h6>
                        </div>
                        <div class="col-md-3">
                            <h6 class="yesOrNo2"><strong>NO</strong></h6>
                        </div>
                        <br><br><br><br><br>
                    </div>

                    <!-- 입양하기 버튼 -->
                    <div class="row">
                        <div class="col-md-12">
                            <button class="btn btn-warning adopt-btn">마음으로 입양하여 지갑으로 키워줘세요 :) </button>
                        </div>
                    </div>



                </div>

            </div>





        </div>
        <!-- 게시글 부분 -->





















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
    </body>
    
    <%@include file="/WEB-INF/views/common/footer.jsp" %>

</html>