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
    <title>봉사자모집글 작성</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
 <!-- CSS only -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
 <!-- JavaScript Bundle with Popper -->
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
      .uploadPhoto{
        text-align: center;
    }
    
    .submitBtn{
        text-align: center;
      }
    </style>
    <!-- Custom styles for this template -->
  </head>
<body>
    
		<%@include file="/WEB-INF/views/common/header.jsp"%> 

    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
  <!-- main 아래부터 작성 -->
  
  
  <div class="container" style="margin-top:30px">
    <div class="row">
      <div class="col-sm-12">
          <h2>보호소 모집 정보 올리기</h2>
          
            <form action="${root}/" method = "POST" enctype="multipart/form-data">
            <div class="form-group">
              <label for="exampleSelect1" class="form-label mt-4">봉사 종류</label>
              <select class="form-select" id="exampleSelect1" name="type">
                <option>전체</option>
                <option>돌봄</option>
                <option>산책</option>
                <option>이동</option>
                <option>청소</option>
                <option>기타</option>
              </select>
            </div>
          </div>          
          &nbsp          
          <div class="form-group">
            <label for="usr" font-size>봉사 시작 시간</label>
            <input type="datetime-local" name="volDate">
          </div>
          &nbsp&nbsp
          <div class="form-group">
            <label for="usr" font-size>봉사 종료 시간</label>
            <input type="datetime-local" name="endTime">
          </div>
          &nbsp&nbsp
          <div class="form-group">
            <label for="usr" font-size>봉사 필요 인원</label>
            <input type="number" name="needPeople">
          </div>
          &nbsp&nbsp
          <div class="form-outline mb-4">
          <label for="usr">내용</label>           
            <textarea name="content" class="form-control" id="textAreaExample6" rows="8" placeholder="봉사 · 보호소에 대한 정보를 자세히 작성해주세요." ></textarea>
            <label class="form-label" for="textAreaExample6"></label>
          </div>
          <div class="form-group uploadPhoto">
            <label for="usr">사진파일첨부 (최대3장)</label>
          <br>          
            <input type="file" class="form-control-file border">
            <input type="file" class="form-control-file border">
            <input type="file" class="form-control-file border">
          </div>
          <br>
          &nbsp &nbsp
          <div class="submitBtn">
              <button  type="submit" class="btn btn-primary">등록하기</button>
              <button  type="submit" class="btn btn-primary">목록으로</button>
          </div>
           
          </form>
      </div>
    </div>
  </div>
    <!-- FOOTER -->
	  <%@include file="/WEB-INF/views/common/footer.jsp" %>

  </body>
</html>