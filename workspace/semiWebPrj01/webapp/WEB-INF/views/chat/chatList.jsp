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
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- 추가한 스크립트 -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"></link>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>
    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
    <style>
      .container {
        max-width: 100%;
      }
      .search-wrap{
        text-align: right;
      }

      .pageNo {
        justify-content: center;
        padding-left: 310px;
        padding-top: 50px;
      }

      .btn {
        background-color: #0081f3;
        border: none;
      }

      .btn:hover {
        background-color: #FCE593;
      }
    </style>
  </head>
<body>
	
	<%@include file="/WEB-INF/views/common/header.jsp"%>
	
  <form>
    <div class="container mt-5">
      <h3 class="text-center">채팅목록</h3>
      <hr/><br>
  <br><br>
                <div id="board-list" >
                    <div class="container">
                        <table class="table" id="user-table">
                        <thead>
                       	<a href="/app01/chat">
                         <tr>
                           <th width="6%" class="text-center">방번호</th>
                           <th width="44%" class="text-center">게시글제목</th>
                           <th width="17%" class="text-center">아이디</th>
                           <th width="20%" class="text-center">작성일</th>
                           <th width="13%" class="text-center">구분(입양/홍보)</th>
                         </tr>
                       	</a>
                         </thead>
                         <tbody>
                         <c:forEach var="vo" items="">
                         <tr class="board_info">
                           <td width="6%" class="text-center">D</td>
                           <td width="44%"><a href="#">D</a>&nbsp;&nbsp;</td>
                           <td width="15%" class="text-center">D</td>
                           <td width="17%" class="text-center">작성일</td>
                           <td width="13%" class="text-center">구분</td>
                         </tr>
                         </c:forEach>
                         </tbody>
                       </table>

                       <!-- 페이지 번호 -->
                           <div class="pageNo">
                               &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                               <a href="#" class="btn btn-sm btn-success">이전</a>
                               페이지 1 2 3 4 5 넘어가게
                               <a href="#" class="btn btn-sm btn-success">다음</a>
                           </div>
                    </div>
                </div>
               </div>
               </div>
              </div>
            </div>
    </form>
    
		<%@include file="/WEB-INF/views/common/footer.jsp" %>
    
  </body>
</html>