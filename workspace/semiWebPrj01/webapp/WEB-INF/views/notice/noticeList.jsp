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
<title>공지사항 목록</title>

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
<!-- Custom styles for this template -->
<link href="carousel.css" rel="stylesheet">

<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

<link href="/resources/common/bootstrap.min.css" rel="stylesheet">

<style>
.nav-item1 {
	margin-left: 310px;
}

#navbarSet1 {
	width: 100%;
}

#writeBtn {
	float: right;
	position: relative;
}

#footerBtn1 {
	margin-left: 45%;
}

#noticeList {
	margin-left: 280px;
	width: 1000px;
}

.center {
    place-content: center;
    place-items: center;
}


</style>

<!-- Custom styles for this template -->
<link href="headers.css" rel="stylesheet">
</head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<!-- 헤더들어갈자리자리 -->

	<!-- 메인 -->
	<div class="text-center">
		<a href="#"><img src="/app01/resources/img/notice1.jpg" width="100%"
			class="img-fluid" alt="..."></a>
	</div>

<div class="col-md-3 text-end" id="writeBtn">
		<button onclick="location.href='/app01/notice/noticeForm'" type="button" class="btn btn-outline-primary me-2">글쓰기</button>
	</div>

	<table class="table table-hover" id="noticeList">
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${boardList}" var="bvo">
				<tr>
					<th>${bvo.no}</th>
					<td>${bvo.title}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- 푸터들어갈자리 -->
	<%@include file="/WEB-INF/views/common/paging.jsp"%>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>
<script>
	const tbody = document.querySelector("tbody");
	tbody.addEventListener("click", function(event) {
		const no = event.target.parentNode.children[0].innerText;
		location.href = "/app01/notice/noticeDetail?no=" + no;
	});
</script>