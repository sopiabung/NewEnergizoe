<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.104.2">
<title>공지사항 상세페이지</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.2/examples/headers/">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
#noticetitle {
	margin-left: 630px;
	font-size: 20px;
}

#noticeinfo {
	width: fit-content;
	margin-left: 900px;
	font-size: 12px;
}

#noticemain {
	margin-top: 50px;
	margin-bottom: 300px;
	margin-left: 620px;
}

#footerBtn {
	margin-left: 44%;
}

#listbtn{
    float: right;
	position: relative;
    }
</style>

<link href="headers.css" rel="stylesheet">
</head>

<body>
	<!-- 헤더들어갈자리 -->
	<%@include file="/WEB-INF/views/common/header.jsp"%>

	<!-- 본문 여기에 -->
	<main class="flex-shrink-0">
		<a id="listbtn"href="/app01/notice/noticeList" class="btn btn-outline-secondary">목록으로</a>
		<div class="row">

			<div>
				<h1 style="margin-left: 45%;">공지사항</h1>
				<hr style="margin-left: 40%; width: 300px;">
				<!-- 제목 -->
				<div class="col-md-6" id="noticetitle">
					<p>${noticeVo.title}</p>
				</div>
				<div class="col-md-2" id="noticeinfo">
					<p>
					<!-- 
						<input type="text" value="${NoticeVo.writer}" readonly>
					 -->
					</p>

				</div>
				<div class="col-md-6" id="noticemain">
					<p>${noticeVo.content}</p>
				</div>
			</div>
		</div>
	</main>
	<!-- 푸터들어갈자리 -->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>