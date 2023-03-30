<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>채팅창</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link href="chat.css">

</head>
<body>
	
	<%@include file="/WEB-INF/views/common/header.jsp"%>

    <section style="background-color: #eee;">
        <div class="container py-5">
      
          <div class="row d-flex justify-content-center">
            <div class="col-md-8 col-lg-6 col-xl-4">
      
              <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center p-3"
                  style="border-top: 4px solid #FCE593;">
                  <h5 class="mb-0">채팅하기</h5>
                  <div class="d-flex flex-row align-items-center">
                    <span class="badge bg-warning me-3">20</span>
                    <button type="button" class="btn-close" aria-label="Close"></button>
                    <i class="fas fa-minus me-3 text-muted fa-xs"></i>
                    <i class="fas fa-comments me-3 text-muted fa-xs"></i>
                    <i class="fas fa-times text-muted fa-xs"></i>
                  </div>
                </div>
                <div class="card-body" data-mdb-perfect-scrollbar="true" style="position: relative; height: 750px">
      
                  <div class="d-flex justify-content-between">
                    <p class="small mb-1">멍뭉이</p>
                    <p class="small mb-1 text-muted">19 Mar 2:00 pm</p>
                  </div>
                  <div class="d-flex flex-row justify-content-start">
                    <img src="image/2074793925_0.jpg" alt="avatar 1" style="width: 45px; height: 100%; border-radius: 50%;">
                    <div>
                      <p class="small p-2 ms-3 mb-3 rounded-3" style="background-color: #f5f6f7;">안녕하세요</p>
                    </div>
                  </div>
      
                  <div class="d-flex justify-content-between">
                    <p class="small mb-1 text-muted">19 Mar 2:05 pm</p>
                    <p class="small mb-1">냥펀치</p>
                  </div>
                  <div class="d-flex flex-row justify-content-end mb-4 pt-1">
                    <div>
                      <p class="small p-2 me-3 mb-3 text-white rounded-3 bg-warning">네 안녕하세요</p>
                    </div>
                    <img src="image/썸네일.jpg" alt="avatar 1" style="width: 45px; height: 100%; border-radius: 50%;">
                  </div>
      
                  <div class="d-flex justify-content-between">
                    <p class="small mb-1">멍뭉이</p>
                    <p class="small mb-1 text-muted">19 Mar 5:37 pm</p>
                  </div>
                  <div class="d-flex flex-row justify-content-start">
                    <img src="image/2074793925_0.jpg" alt="avatar 1" style="width: 45px; height: 100%; border-radius: 50%;">
                   
                    <div>
                      <p class="small p-2 ms-3 mb-3 rounded-3" style="background-color: #f5f6f7;">입양하고싶어요</p>
                    </div>
                  </div>
      
                  <div class="d-flex justify-content-between">
                    <p class="small mb-1 text-muted">19 Mar 6:10 pm</p>
                    <p class="small mb-1">냥펀치</p>
                  </div>
                  <div class="d-flex flex-row justify-content-end mb-4 pt-1">
                    <div>
                      <p class="small p-2 me-3 mb-3 text-white rounded-3 bg-warning">책임 질 자신있나요?</p>
                    </div>
                    <img src="image/썸네일.jpg" alt="avatar 1" style="width: 45px; height: 100%; border-radius: 50%;">
                  </div>
      
                </div>
                <div class="card-footer text-muted d-flex justify-content-start align-items-center p-3">
                  <div class="input-group mb-0">
                    <input type="text" name="content" class="form-control" placeholder="메시지를 입력하세요"
                      aria-label="Recipient's username" aria-describedby="button-addon2" />
                    <button class="btn btn-warning" type="button" id="button-addon2" style="padding-top: .55rem;">
                      전송하기
                    </button>
                  </div>
                </div>
              </div>
      
            </div>
          </div>
      
        </div>
      </section>
      
      <%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>