<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.104.2">
  <title>로그인</title>

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
    /* ======================== CSS 는 이 밑에다가 =================== */
    .bg-secondary {
      --bs-bg-opacity: none;
    }

    .modal-content {
      background-color: #fdee65;
    }

    #bottomBtn {
      position: relative;
      left: 13%;
      right: 13%;
    }

    /* ======================== CSS 는 이 위에다가 =================== */
  </style>

  <!-- Custom styles for this template -->
  <link href="headers.css" rel="stylesheet">
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>

  <!-- 헤더 자리 -->

  <!-- ================ 본문은 이 아래에다가 ================== -->


  <div class="modal modal-signin position-static d-block bg-secondary py-5" tabindex="-1" role="dialog"
    id="modalSignin">
    <div class="modal-dialog" role="document">
      <div class="modal-content rounded-4 shadow">
        <div class="modal-header p-5 pb-4 border-bottom-0">
          <!-- <h1 class="modal-title fs-5" >Modal title</h1> -->
          <h1 class="fw-bold mb-0 fs-2">LOGIN</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>

        <div class="modal-body p-5 pt-0">
          <form action="/app01/member/login" method="post">
            <div class="form-floating mb-3">
              <input name="memberId" type="text" class="form-control rounded-3" id="floatingInput" placeholder="ID">
              <label for="floatingInput">ID</label>
            </div>
            <div class="form-floating mb-3">
              <input name="memberPwd" type="password" class="form-control rounded-3" id="floatingPassword" placeholder="Password">
              <label for="floatingPassword">Password</label>
            </div>
            <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit">Login</button>
          </form>

          <div id="bottomBtn">
            <button type="button" class="btn btn-outline-primary" disabled>아이디/비밀번호 찾기</button>
            <button type="button" class="btn btn-outline-primary" disabled>회원가입</button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- ================ 본문은 이 위에다가 ==================== -->

  <!-- 푸터 자리 -->
  <%@include file="/WEB-INF/views/common/footer.jsp" %>
  

  <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>