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
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    crossorigin="anonymous"></script>
  <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .uploadPhoto {
      text-align: center;
    }

    .submitBtn {
      text-align: center;
    }

    .upload-file {
      margin-top: 3%;
    }
  </style>
  <!-- Custom styles for this template -->
  <link href="headers.css" rel="stylesheet">
</head>

<body>
  <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="bootstrap" viewBox="0 0 118 94">
      <title>Bootstrap</title>
      <path fill-rule="evenodd" clip-rule="evenodd"
        d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z">
      </path>
    </symbol>
  </svg>
  <%@include file="/WEB-INF/views/common/header.jsp"%>

  <main>
  
    <!-- main 아래부터 작성 -->


    <div class="container" style="margin-top:30px">
      <div class="row">
        <div class="col-sm-12">
          <h2>봉사자 모집 정보 올리기</h2>
          <form action="writeAction" method="POST" enctype="multipart/form-data">
            <div class="form-group">
              <label for="exampleSelect1" class="form-label mt-4">봉사 종류</label>
              <select class="form-select" id="exampleSelect1">
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
          <label for="usr" font-size>날짜</label>
          <input type="date">
        </div>
        &nbsp
        <div class="form-group">
          <label for="exampleSelect1" class="form-label mt-4">지역</label>
          <select class="form-select" id="exampleSelect1">
            <option>전체</option>
            <option>강남구</option>
            <option>강동구</option>
            <option>강북구</option>
            <option>강서구</option>
            <option>관악구</option>
            <option>광진구</option>
            <option>구로구</option>
            <option>금천구</option>
            <option>노원구</option>
            <option>도봉구</option>
            <option>동대문구</option>
            <option>동작구</option>
            <option>마포구</option>
            <option>서대문구</option>
            <option>서초구</option>
            <option>성동구</option>
            <option>성북구</option>
            <option>송파구</option>
            <option>양천구</option>
            <option>영등포구</option>
            <option>용산구</option>
            <option>은평구</option>
            <option>종로구</option>
            <option>중구</option>
            <option>중랑구</option>
          </select>
          &nbsp
          <div class="form-group">
            <label for="usr">장소</label>
            <input type="text" placeholder="보호소 주소를 구체적으로 적어주세요." class="form-control" id="title" name="title">
          </div>
          &nbsp
          <div class="form-group">
            <label for="usr">아이디</label>
            <input type="text" required class="form-control" id="title" name="title">
          </div>
          &nbsp
          <div class="form-group">
            <label for="usr">연락처</label>
            <input type="text" required class="form-control" id="title" name="title">
          </div>
          &nbsp
          <div class="form-outline mb-4">
            <label for="usr">내용</label>
            <textarea class="form-control" id="textAreaExample6" rows="8"
              placeholder="봉사 · 보호소에 대한 정보를 자세히 작성해주세요."></textarea>
            <label class="form-label" for="textAreaExample6"></label>
          </div>
          <div class="form-group uploadPhoto">
            <label for="usr">사진파일첨부 (최대3장)</label>
            <div class="upload-file">
              <input type="file" class="form-control-file border" name="file">
              <input type="file" class="form-control-file border" name="file">
              <input type="file" class="form-control-file border" name="file">
            </div>
          </div>
          <br>
          &nbsp &nbsp
          <div class="submitBtn">
            <button type="submit" class="btn btn-primary">등록하기</button>
            <button type="submit" class="btn btn-primary">목록으로</button>
          </div>
          </form>
        </div>
      </div>
    </div>
    <!-- FOOTER -->
    <%@include file="/WEB-INF/views/common/footer.jsp" %>
   
</body>
</html>