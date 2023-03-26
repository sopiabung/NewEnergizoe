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
    <title>내가 신청한 봉사 목록</title>
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

        .chioce-btn {
            margin-top: 7%;

        }

        .vol-btn {
            height: 50px;
            width: 80%;
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
                신청 내역
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
            <hr>
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-3">
                        <img class="guide-img" src="https://dimg.donga.com/wps/NEWS/IMAGE/2022/01/28/111500268.2.jpg"
                            alt="">
                    </div>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-md-4">
                                <h6>보호소 이름</h6>
                            </div>
                            <div class="col-md-8">
                                시흥보호소</h6>
                            </div><br><br>

                            <div class="col-md-4">
                                <h6>보호소 주소</h6>
                            </div>
                            <div class="col-md-8">
                                경기도 시흥시 봉화로 18, 동원아파트 104동 503호</h6>
                            </div><br><br>

                            <div class="col-md-4">
                                <h6>신청 날짜</h6>
                            </div><br><br>
                            <div class="col-md-8">
                                2023년 3월 22일</h6>
                            </div><br><br>

                            <div class="col-md-4">
                                <h6>신청 시간</h6>
                            </div><br><br>
                            <div class="col-md-8">
                                12:00 - 17:00</h6>
                            </div><br><br>

                            <div class="col-md-4">
                                <h6>봉사 종류</h6>
                            </div>
                            <div class="col-md-8">
                                산책</h6>
                            </div><br>
                        </div>
                    </div>
                    <div class="col-sm-3 chioce-btn">
                        <button class="btn btn-primary vol-btn">게시물 보기</button>
                    </div>
                </div>
                <hr>
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-3">
                            <img class="guide-img"
                                src="https://dimg.donga.com/wps/NEWS/IMAGE/2022/01/28/111500268.2.jpg" alt="">
                        </div>
                        <div class="col-sm-6">
                            <div class="row">
                                <div class="col-md-4">
                                    <h6>보호소 이름</h6>
                                </div>
                                <div class="col-md-8">
                                    시흥보호소</h6>
                                </div><br><br>

                                <div class="col-md-4">
                                    <h6>보호소 주소</h6>
                                </div>
                                <div class="col-md-8">
                                    경기도 시흥시 봉화로 18, 동원아파트 104동 503호</h6>
                                </div><br><br>

                                <div class="col-md-4">
                                    <h6>신청 날짜</h6>
                                </div><br><br>
                                <div class="col-md-8">
                                    2023년 3월 22일</h6>
                                </div><br><br>

                                <div class="col-md-4">
                                    <h6>신청 시간</h6>
                                </div><br><br>
                                <div class="col-md-8">
                                    12:00 - 17:00</h6>
                                </div><br><br>

                                <div class="col-md-4">
                                    <h6>봉사 종류</h6>
                                </div>
                                <div class="col-md-8">
                                    산책</h6>
                                </div><br>
                            </div>
                        </div>
                        <div class="col-sm-3 chioce-btn">
                            <button class="btn btn-primary vol-btn">게시물 보기</button>
                        </div>
                    </div>
                    <hr>
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-3">
                                <img class="guide-img"
                                    src="https://dimg.donga.com/wps/NEWS/IMAGE/2022/01/28/111500268.2.jpg" alt="">
                            </div>
                            <div class="col-sm-6">
                                <div class="row">
                                    <div class="col-md-4">
                                        <h6>보호소 이름</h6>
                                    </div>
                                    <div class="col-md-8">
                                        시흥보호소</h6>
                                    </div><br><br>

                                    <div class="col-md-4">
                                        <h6>보호소 주소</h6>
                                    </div>
                                    <div class="col-md-8">
                                        경기도 시흥시 봉화로 18, 동원아파트 104동 503호</h6>
                                    </div><br><br>

                                    <div class="col-md-4">
                                        <h6>신청 날짜</h6>
                                    </div><br><br>
                                    <div class="col-md-8">
                                        2023년 3월 22일</h6>
                                    </div><br><br>

                                    <div class="col-md-4">
                                        <h6>신청 시간</h6>
                                    </div><br><br>
                                    <div class="col-md-8">
                                        12:00 - 17:00</h6>
                                    </div><br><br>

                                    <div class="col-md-4">
                                        <h6>봉사 종류</h6>
                                    </div>
                                    <div class="col-md-8">
                                        산책</h6>
                                    </div><br>
                                </div>
                            </div>
                            <div class="col-sm-3 chioce-btn">
                                <button class="btn btn-primary vol-btn">게시물 보기</button>
                            </div>
                        </div>
                        <hr>
                        <div class="col-sm-12">
                            <div class="row">
                                <div class="col-sm-3">
                                    <img class="guide-img"
                                        src="https://dimg.donga.com/wps/NEWS/IMAGE/2022/01/28/111500268.2.jpg" alt="">
                                </div>
                                <div class="col-sm-6">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <h6>보호소 이름</h6>
                                        </div>
                                        <div class="col-md-8">
                                            시흥보호소</h6>
                                        </div><br><br>

                                        <div class="col-md-4">
                                            <h6>보호소 주소</h6>
                                        </div>
                                        <div class="col-md-8">
                                            경기도 시흥시 봉화로 18, 동원아파트 104동 503호</h6>
                                        </div><br><br>

                                        <div class="col-md-4">
                                            <h6>신청 날짜</h6>
                                        </div><br><br>
                                        <div class="col-md-8">
                                            2023년 3월 22일</h6>
                                        </div><br><br>

                                        <div class="col-md-4">
                                            <h6>신청 시간</h6>
                                        </div><br><br>
                                        <div class="col-md-8">
                                            12:00 - 17:00</h6>
                                        </div><br><br>

                                        <div class="col-md-4">
                                            <h6>봉사 종류</h6>
                                        </div>
                                        <div class="col-md-8">
                                            산책</h6>
                                        </div><br>
                                    </div>
                                </div>
                                <div class="col-sm-3 chioce-btn">
                                    <button class="btn btn-primary vol-btn">게시물 보기</button>
                                </div>
                            </div>
                            <hr>
                            <!-- 게시글 리스트 -->
                            <div class="btn-toolbar center d-flex justify-content-center col-sm-12" role="toolbar"
                                aria-label="Toolbar with button groups">


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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <%@include file="/WEB-INF/views/common/paging.jsp" %>
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
    
</body>
<!-- 게시글 리스트 끝 -->
<!-- FOOTER -->


		<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
	</body>

</html>