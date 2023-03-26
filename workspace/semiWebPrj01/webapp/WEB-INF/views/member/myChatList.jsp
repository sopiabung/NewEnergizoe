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
  <title>채팅목록</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/checkout/">
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

    .accordion-item {
      background: white;
    }

    #no-accodian {
      --bs-accordion-btn-active-icon: none;
    }

    .accordion-button:not(.collapsed) {
      color: black;
      /* background-color: var(--bs-accordion-active-bg); 없앨까 */
    }

    body {
      margin-top: 0;
    }
    #accordionPanelsStayOpenExample a{
      text-decoration: none;
      color: black;
    }
    #board-list{
      text-align: center;
    }
    #board-list a{
      text-decoration: none;
      color: black;
    }
    #delBtn{
      margin-left: 960px;
    }
    /* ======================== CSS 는 이 위에다가 =================== */
  </style>

  <!-- Custom styles for this template -->
  <link href="form-validation.css" rel="stylesheet">
</head>

<body class="bg-light">
	<%@include file="/WEB-INF/views/common/header.jsp"%>

  <!-- header 올자리 -->

      <!-- ================ HTML은 이 아래에다가 ================== -->

      <div class="container">
        <main>
          <div class="py-5 text-center">
            <img class="d-block mx-auto mb-4" src="/YW_images/cat1_update.jpg" alt="고양이" width="100%">
            <h2>채팅 목록</h2>
          </div>
            <div id="board-list" >
              <div class="container">
                  <table class="table" id="user-table">
                  <thead>
                  <tr>
                    <th width="6%" class="text-center">방번호</th>
                    <th width="44%" class="text-center">게시글</th>
                    <th width="17%" class="text-center">닉네임</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach var="vo" items="">
                  <tr class="board_info">
                    <td width="6%" class="text-center">1</td>
                    <td width="44%"><a href="#" >복순이</a>
                      &nbsp;&nbsp;
                    </td>
                    <td width="15%" class="text-center">user01</td>
                  </tr>
                  <tr class="board_info">
                    <td width="6%" class="text-center">1</td>
                    <td width="44%"><a href="#" >복순이</a>
                      &nbsp;&nbsp;
                    </td>
                    <td width="15%" class="text-center">user01</td>
                  </tr>
                  <tr class="board_info">
                    <td width="6%" class="text-center">1</td>
                    <td width="44%"><a href="#" >복순이</a>
                      &nbsp;&nbsp;
                    </td>
                    <td width="15%" class="text-center">user01</td>
                  </tr>
                  <tr class="board_info">
                    <td width="6%" class="text-center">1</td>
                    <td width="44%"><a href="#" >복순이</a>
                      &nbsp;&nbsp;
                    </td>
                    <td width="15%" class="text-center">user01</td>
                  </tr>
                  <tr class="board_info">
                    <td width="6%" class="text-center">1</td>
                    <td width="44%"><a href="#" >복순이</a>
                      &nbsp;&nbsp;
                    </td>
                    <td width="15%" class="text-center">user01</td>
                  </tr>
                  <tr class="board_info">
                    <td width="6%" class="text-center">1</td>
                    <td width="44%"><a href="#" >복순이</a>
                      &nbsp;&nbsp;
                    </td>
                    <td width="15%" class="text-center">user01</td>
                  </tr>
                  <tr class="board_info">
                    <td width="6%" class="text-center">1</td>
                    <td width="44%"><a href="#" >복순이</a>
                      &nbsp;&nbsp;
                    </td>
                    <td width="15%" class="text-center">user01</td>
                  </tr>
                  <tr class="board_info">
                    <td width="6%" class="text-center">1</td>
                    <td width="44%"><a href="#" >복순이</a>
                      &nbsp;&nbsp;
                    </td>
                    <td width="15%" class="text-center">user01</td>
                  </tr>
                  <tr class="board_info">
                    <td width="6%" class="text-center">1</td>
                    <td width="44%"><a href="#" >복순이</a>
                      &nbsp;&nbsp;
                    </td>
                    <td width="15%" class="text-center">user01</td>
                  </tr>
                  </c:forEach>
                  </tbody>
                </table>

                <br>
                <div class="col-md-3 text-end" id="delBtn">
                  <button type="button" class="btn btn-outline-secondary">삭제</button>
                </div>
          

            
        </main>
      </div>

   
    <!-- ================ HTML은 이 위에다가 ==================== -->
    <!-- FOOTER  올 자리 -->
    	<%@include file="/WEB-INF/views/common/paging.jsp" %>
		<%@include file="/WEB-INF/views/common/footer.jsp" %>
    
    	<script src="form-validation.js"></script>
    	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
    	
    	
	</body>

</html>