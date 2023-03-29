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
<title>자유게시판 우리아이이야기 목록</title>

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

<style>
#storyList {
	margin-left: 280px;
	width: 1000px;
}

#footerBtn {
	margin-left: 45%;
}

#writeBtn {
	float: right;
	position: relative;
}

.nav-itemFree {
	margin-left: 310px;
}

#navbarSet {
	width: 100%;
}
</style>

<!-- Custom styles for this template -->
<link href="headers.css" rel="stylesheet">
</head>
<body>

	<%@include file="/WEB-INF/views/common/header.jsp"%>
	<!-- 헤더들어갈자리  -->
	<!-- 메인 -->
	<div class="text-center">
		<a href="#"><img src="resources/img/b1.jpg" width="100%"
			class="img-fluid" alt="..."></a>
	</div>

	<nav class="navbar navbar-expand-lg bg-light" id="navbarSet">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav" id="navbarNavIn">
					<li class="nav-itemFree"><a class="nav-link active"
						aria-current="page" href="#">사진자랑</a></li>
					<li class="nav-itemFree"><a class="nav-link active"
						aria-current="page" href="#">우리아이이야기</a></li>
					<li class="nav-itemFree"><a class="nav-link active"
						aria-current="page" href="#">소통해요</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="col-md-3 text-end" id="writeBtn">
		<button onclick="location.href='/app01/free/freeForm'" type="button" class="btn btn-outline-primary me-2">글쓰기</button>
	</div>

	<table class="table table-hover" id="storyList">
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
	<div id="page-area">
		<c:if test="${ pageVo.currentPage > 1 }">
			<a href="/notice/noticeList?page=${pageVo.currentPage-1}">이전</a>
		</c:if>

		<c:forEach var="i" begin="${pageVo.startPage}" end="${pageVo.endPage}">
			<c:if test="${pageVo.currentPage == i}">
				<span>${i}</span>
			</c:if>
			<c:if test="${pageVo.currentPage != i}">
				<a href="/notice/noticeList?page=${i}">${i}</a>
			</c:if>
		</c:forEach>

		<c:if test="${ pageVo.currentPage < pageVo.maxPage }">
			<a href="/notice/noticeList?page=${pageVo.currentPage+1}">다음</a>
		</c:if>
	</div>
	<!-- 푸터들어갈자리 -->
	<%@include file="/WEB-INF/views/common/paging.jsp"%>
	<%@include file="/WEB-INF/views/common/footer.jsp"%>
</body>
</html>
<script>
	const tbody = document.querySelector("tbody");
	tbody.addEventListener("click", function(event) {
		const no = event.target.parentNode.children[0].innerText;
		location.href = "/app01/free/freeDetail?no=" + no;
	});
</script>
