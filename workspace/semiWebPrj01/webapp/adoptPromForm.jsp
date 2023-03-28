<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>

<!doctype html>



<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

    <title>입양홍보 작성</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <!-- CSS FILES -->
    <link href="bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${root}/resources/css/common/adoptForm.css"> 
    <!-- open api.js 주소검색 -->
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <style>
        .agree p{
            font-size: 15px;
        }
        
        

        .notice p{
            font-size: 10px;
        }

    </style>
</head>

<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>

        <section class="contact-section section-padding" id="section_6">
            <div class="container">
                <div class="row">

                    <div class="col-lg-8 col-12 mx-auto">
                        <h2 class="text-center mb-4">입양 게시글 작성</h2>

                        <!-- 맨위에 버튼 네비게이션 -->

                        <nav class="d-flex justify-content-center">
                            <div class="nav nav-tabs align-items-baseline justify-content-center" id="nav-tab"
                                role="tablist">
                                <button class="nav-link active" id="nav-ContactForm-tab" data-bs-toggle="tab"
                                    data-bs-target="#nav-ContactForm" type="button" role="tab"
                                    aria-controls="nav-ContactForm" aria-selected="false">
                                    <h5>입양 등록</h5>
                                </button>

                            
                            </div>
                        </nav>

                        <!-- 보호소가 작성하는 입양등록 페이지 -->

                        <div class="tab-content shadow-lg mt-5" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-ContactForm" role="tabpanel"
                                aria-labelledby="nav-ContactForm-tab">
                                <form class="custom-form contact-form mb-5 mb-lg-0" action="" method="post"
                                    role="form">
                                    <div class="contact-form-body">
                                        <div class="shlter_name">
                                            <h6>보호소 정보</h6>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <input type="text" name="contact-name" id="contact-name"
                                                    class="form-control" value="kh보호소" required>
                                            </div>

                                            <div class="col-lg-6 col-md-6 col-12">
                                                <input type="email" name="contact-email" id="contact-email"
                                                    pattern="[^ @]*@[^ @]*" class="form-control"
                                                    value="kh보호소 이메일" required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <input type="text" name="contact-name" id="contact-name"
                                                    class="form-control" value="kh보호소 전화번호" required>
                                            </div>

                                           
                                        </div>

                                        <input type="text" name="contact-company" id="contact-company"
                                            class="form-control" value="kh보호소 주소" required>

                                         <div class="animal_name">
                                            <h6>동물 정보</h6>
                                         </div>   
                                         <div class="row">
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <div class="form-check form-control" style="border-color: white;">
                                                    <input class="form-check-input" type="radio" name="animalForm1"
                                                        id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        강아지
                                                    </label>
                                                </div>
                                            </div>
            
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <div class="form-check form-control" style="border-color: white;">
                                                    <input class="form-check-input" type="radio" name="animalForm1"
                                                        id="flexRadioDefault2">
                                                    <label class="form-check-label" for="flexRadioDefault2">
                                                        고양이
                                                    </label>
                                                </div>
                                            </div>
                                        </div>

                                       
                                        <input type="text" name="contact-company" id="contact-company"
                                            class="form-control" placeholder="이름" required>
                                        <input type="text" name="contact-company" id="contact-company"
                                            class="form-control" placeholder="성별" required>
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6 col-12">
                                                    <div class="form-check form-control" style="border-color: white;">
                                                        <input class="form-check-input" type="radio" name="animalForm2"
                                                            id="flexRadioDefault1">
                                                        <label class="form-check-label" for="flexRadioDefault1">
                                                            중성화 O
                                                        </label>
                                                    </div>
                                                </div>
                
                                                <div class="col-lg-6 col-md-6 col-12">
                                                    <div class="form-check form-control" style="border-color: white;">
                                                        <input class="form-check-input" type="radio" name="animalForm2"
                                                            id="flexRadioDefault2">
                                                        <label class="form-check-label" for="flexRadioDefault2">
                                                            중성화 X
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        <input type="text" name="contact-company" id="contact-company"
                                            class="form-control" placeholder="추정나이" required>
                                        <input type="text" name="contact-company" id="contact-company"
                                            class="form-control" placeholder="몸무게" required>   
                                        <input type="text" name="contact-company" id="contact-company"
                                            class="form-control" placeholder="털색" required>    
                                        <input type="text" name="contact-company" id="contact-company"
                                            class="form-control" placeholder="친화도" required> 
                                            

                                        <textarea name="contact-message" rows="3" class="form-control"
                                            id="contact-message" placeholder="기타사항"></textarea>
                                        <div>
                                            <input type="file" name="f">
                                        </div>

                                        <div class="col-lg-4 col-md-10 col-8 mx-auto">
                                            <button type="submit" class="form-control" style="background-color: #FCE593;"><b>등록하기</b></button>
                                        </div>
                                    </div>
                                </form>
                            </div>


                           

                            
                     </div>
                 </div>
                </div>
            </div>
        </section>
        
        <%@include file="/WEB-INF/views/common/footer.jsp" %>
</body>

</html>