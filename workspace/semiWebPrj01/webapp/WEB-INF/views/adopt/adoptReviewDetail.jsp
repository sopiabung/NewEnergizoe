<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html> 
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.104.2">
    <title>입양후기페이지 상세</title>

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

        .content-center {
            text-align: center;
        }
        
        a{
            text-decoration: none;
        }
    </style>

    <!-- Custom styles for this template -->
    <link href="headers.css" rel="stylesheet">
</head>

<body>

   		<%@include file="/WEB-INF/views/common/header.jsp"%>

        <!-- 게시글 부분 -->
        <div class="container post">
            <div class="row">

                <div class="col-md-12 margin-left">
                    <h1>입양 후기  동물 정보<!--변수로 넣어서 신고 / 실종 / 보호로 분류 --></h1>
                </div>

                <!-- 동물 사진 -->
                <!-- Image Slider -->
                <div id="myCarousel" class="carousel slide col-md-6" data-bs-ride="carousel">
                   
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <svg class="bd-placeholder-img" width="100%" height="100%" aria-hidden="true"
                                preserveAspectRatio="xMidYMid slice" focusable="false" viewBox="0 0 2560 1600">
                                <image href="KH-IMG/강아지2마리.jpg" width="100%" height="100%" />
                            </svg>


                        
                        </div>
                        <div class="carousel-item">
                            <svg class="bd-placeholder-img" width="100%" height="100%" aria-hidden="true"
                                preserveAspectRatio="xMidYMid slice" focusable="false" viewBox="0 0 2000 1440">
                                <image href="KH-IMG/화난 포메.jpg" width="100%" height="100%" />
                            </svg>

                        </div>
                        <div class="carousel-item">
                            <svg class="bd-placeholder-img" width="100%" height="100%" aria-hidden="true"
                                preserveAspectRatio="xMidYMid slice" focusable="false" viewBox="0 0 3398 2550">
                                <image href="KH-IMG/허스키5마리.jpg" width="100%" height="100%" />
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
                    <h1>아기사자</h1>
                    <hr>

                    <!-- 동물 능력치 -->
                    <div class="row post">

                        <!-- 동물 종 -->
                        <div class="col-md-6">
                            <h6><small>종 / 품종</small></h6>
                        </div>
                        <div class="col-md-6">
                            <h6>개 / 포메라니안</h6>
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
                            <h6><small>추정나이</small></h6>
                        </div>
                        <div class="col-md-6">
                            <h6>6개월</h6>
                        </div><br><br>

                        <!-- 몸무게 -->
                        <div class="col-md-6">
                            <h6><small>몸무게</small></h6>
                        </div>
                        <div class="col-md-6">
                            <h6>2.6kg</h6>
                        </div><br><br>

                        <!-- 특징 ( 털색 , 꼬리 짧 , 김 등등) -->
                        <div class="col-md-6">
                            <h6><small>털색</small></h6>
                        </div>
                        <div class="col-md-6">
                            <h6>베이지</h6>
                        </div><br><br>
                        <hr>


                       




                    </div>
                   

                </div>

            </div>
            <div class="col-md-12 content-center post">
                <h1>
                    입양해온지 벌써 6개월~~~~~~~
                    처음엔 꼬질 꼬질 했지만 이렇게 예뻐졌답니다 ㅎㅎㅎ
                </h1>




            </div>
            <!-- 게시글 부분 -->
        </div>



















		<%@include file="/WEB-INF/views/common/footer.jsp" %>

</body>

</html>