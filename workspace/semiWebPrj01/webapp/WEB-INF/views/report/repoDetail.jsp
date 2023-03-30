<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.2/examples/headers/">
<!-- Custom styles for this template -->
<link href="carousel.css" rel="stylesheet">
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
<style>

.col-md-6{
	display: flex;
	padding-left: 100px;
	justify-content: space-around;
	margin: 0 auto;
	margin-bottom: 30px;
}

.content2{
	width: 50%;
	height: 200px;
	border: 1px solid black;
	margin: 0 auto;
	padding-top: 20px;
}

.gigi{
	text-align: left;
	padding-left: 500px;
}

.my-3px{
	text-decoration-line: underline;
  	text-decoration-color: #0081f3;
  	text-decoration-thickness: 4px;
}

.my-4px{
	text-decoration-line: underline;
	text-decoration-color: #0081f3;
	text-decoration-thickness: 3px;
  	text-decoration-style: wavy;
}

</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/header.jsp"%>

	<div class="container" style="margin-top: 30px">
		<div class="row">
			<div class="col-sm-12"
				style="text-align: center; margin-bottom: 50px;">
				<h2>
					<div class="my-3px"><b>실종신고 상세내용</b></div>
				</h2>
					<form action="/app01/report/Write" method="post">

					<div class="container2" style="margin-top: 80px">
						
						<div class="col-md-6">
						 <h4>제목 : ${ReportMisVo.title}</h4>
						 <h4>작성자 : ${ReportMisVo.writer}</h4><br>
						</div>
						<div class="gigi">
						 <h5>작성일시 : ${ReportMisVo.enrollDate}</h5>
						 <h5>실종날짜 : ${ReportMisVo.misDate}</h5>
						 <h5>실종지역 : ${ReportMisVo.area}</h5>						
						</div>
						 <br><hr><br>
						 <div class="my-4px">
						 <h3>상세내용</h3><br>
						 </div>
						 <div class="content2"> ${ReportMisVo.content}</div>
					</div>
						 <br>
						<!-- 입양하기 버튼 -->
					<div class="row">
						<div class="col-md" style="text-align: center;">
							<button class="btn btn-primary adopt-btn">작성자와 채팅</button>
							<a class="btn btn-primary adopt-btn" href="/app01/report/List">목록으로</a>
						</div>
					</div>

				  </form>
			</div>
		 </div>
		</div>

</body>
</html>