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
  #textAreaExample6{
  	width: 80%;
  	margin: 0 auto;
  }
  
  </style>
</head>
<body>

	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<div class="container" style="margin-top:30px">
     <div class="row">
      <div class="col-sm-12" style="text-align: center; margin-bottom: 50px;">
          <h2><b>실종신고 작성하기</b></h2>
          
          <form action="/app01/report/Write" method="post">
          
          <input type="hidden" name="writer" value="${loginMember.no}">
          
          <div class="container2" style="margin-top:80px">
          <label for="usr">제목</label>&emsp;&emsp;
          	<input style="width: 30%;" type="text" name="title" placeholder="제목을 입력하세요">
          </div>
          	
          <div class="container2" style="margin-top:20px">      
    	  실종날짜&nbsp;<input style="width: 30%;" type="text" name="misDate" placeholder="ex)20230329">
    	  </div>
    	  
    	  <div class="container2" style="margin-top:20px"> 
    	  실종지역&nbsp;<input style="width: 30%;" type="text" name="area" placeholder="ex)서울시 강남구 역삼동">
    	  </div>
    	  
    	  <div class="container2" style="margin-top:30px"> 
    	  <p>내용작성<p>
    	 <textarea style="width: 80%; height: 200px;" rows="5" name="content" placeholder="실종 반려동물 이름, 나이, 품종, 성별, 특징 등 구체적으로 작성"></textarea>
          </div>

       
          <br><br><br>
            <button type="submit" class="btn btn-primary">등록하기</button>
          
          </form>
	   </div>
	 </div>
   </div>

</body>
</html>