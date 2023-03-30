<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <!-- CSS only -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
  <!-- Custom styles for this template -->
  <link href="carousel.css" rel="stylesheet">
  <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
  	table > tbody > tr{
  		height: 50px;
  	}
  	
  	table{
  		width: 80%;
  		margin: auto;
  		margin-top: 50px;
  		text-align: center;
  	}
  	
  	table > thead > tr > th {
  		background-color: #CCE5FF;
  	}
  	
  	#btn-wrap {
  		width: 90%;
  		display: flex;
  		justify-content: end;
  	}
  	
  	#btn-wrap a btn {
  		width: 50px;
  		height: 5px;
  		padding-top: 30px;
  	}
  	
  	#page-area {
  		font-size: 18px;
  	}
  </style>
  </head>

		<%@ include file="/WEB-INF/views/common/header.jsp" %>
		
		
	<div class="container" style="margin-top:30px">
     <div class="row">
      <div class="col-sm-12" style="text-align: center; margin-bottom: 50px;">
          <h2><b>실종신고 게시판</b></h2>
		
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일시</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ReportMisList}" var="bvo">
				<tr>
					<td>${bvo.no}</td>
					<td>${bvo.title}</td>
					<td>${bvo.writer}</td>
					<td>${bvo.enrollDate}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<div id="btn-wrap">
   		<a class="btn btn-outline-primary ms-2" href="/app01/report/Write">실종신고하기</a>		
		</div>
		<div id="page-area">
			<a href="">이전</a>
			<a href="">1</a>
			<a href="">2</a>
			<a href="">3</a>
			<a href="">4</a>
			<a href="">5</a>
			<a href="">다음</a>
		</div>
	   </div>
	 </div>
   </div>

		
	
	<%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>

<script>
	const tbody = document.querySelector("tbody");
	tbody.addEventListener("click" , function(event){
		const no = event.target.parentNode.children[0].innerText;
		location.href = "/app01/report/detail?no=" + no;
	});
</script>