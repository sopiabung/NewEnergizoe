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
    <title>공지사항 작성</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
      

    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- 추가한 스크립트 -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"></link>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>

    <style>
      
        /* 내가 추가한 style */
        .card {
          display: flex;
          flex-wrap: nowrap;
          padding-bottom: 1rem;
          margin-top: -1px;
          overflow-x: auto;
          
        }
        .card-body {
          height: 500px;
        }
        #inputMessage{
          height: 200px;
        }
      
    </style>
  </head>
<body>
<%@include file="/WEB-INF/views/common/header.jsp"%>
    
    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
  
    <!-- main 아래부터 작성 -->
  <form action="/app01/notice/noticeForm" method="post" enctype="multipart/form-data"> 
    <div class="container mt-5" >
      <h3 class="text-center">공지게시글</h3>
      <br>
      <div class="card">
          <div class="card-body">
              <form role="form" data-toggle="validator">
                  
                  <div class="form-group">
                      <label>제목</label>
                      <input type="text" class="form-control" name="title">                     
                  </div>
                   <div class="form-group">
                      <label>내용</label>
                      <textarea class="form-control" data-error="Please enter message." id="inputMessage"
                           required="" name="content"></textarea>
                      <!-- Error -->
                      <div class="help-block with-errors"></div>
                  </div>
                  <!-- 
                  <div class="form-group">
                      <input type="file" class="form-control-file border" name="file" >
                  </div>
                   -->

                  <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">등록</button>
                  </div>
              </form>
          </div>
      </div>
  </div>
    </form>
    

	<%@include file="/WEB-INF/views/common/footer.jsp" %>
  </body>
</html>