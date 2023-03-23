<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

    <title>입양홍보/신청서 작성</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <!-- CSS FILES -->
    <link href="bootstrap.min.css" rel="stylesheet">
    <link href="templatemo-festava-live.css" rel="stylesheet">
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

                                <button class="nav-link" id="nav-ContactMap-tab" data-bs-toggle="tab"
                                    data-bs-target="#nav-ContactMap" type="button" role="tab"
                                    aria-controls="nav-ContactMap" aria-selected="false">
                                    <h5>입양 신청서</h5>
                                </button>
                            </div>
                        </nav>

                        <!-- 보호소가 작성하는 입양등록 페이지 -->

                        <div class="tab-content shadow-lg mt-5" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-ContactForm" role="tabpanel"
                                aria-labelledby="nav-ContactForm-tab">
                                <form class="custom-form contact-form mb-5 mb-lg-0" action="#" method="post"
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

                                            <div class="col-lg-6 col-md-6 col-12">
                                                <input type="address" name="contact-person" id="contact-person"
                                                    pattern="" class="form-control"
                                                    value="kh보호소 담당자" required>
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
                                                    <input class="form-check-input" type="radio" name="animalForm"
                                                        id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        강아지
                                                    </label>
                                                </div>
                                            </div>
            
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <div class="form-check form-control" style="border-color: white;">
                                                    <input class="form-check-input" type="radio" name="animalForm"
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
                                                        <input class="form-check-input" type="radio" name="animalForm"
                                                            id="flexRadioDefault1">
                                                        <label class="form-check-label" for="flexRadioDefault1">
                                                            중성화 O
                                                        </label>
                                                    </div>
                                                </div>
                
                                                <div class="col-lg-6 col-md-6 col-12">
                                                    <div class="form-check form-control" style="border-color: white;">
                                                        <input class="form-check-input" type="radio" name="animalForm"
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

                                        <div class="col-lg-4 col-md-10 col-8 mx-auto">
                                            <button type="submit" class="form-control" style="background-color: #FCE593;"><b>등록하기</b></button>
                                        </div>
                                    </div>
                                </form>
                            </div>


                            <!-- ------입양신청서------- -->

                            <div class="tab-pane fade" id="nav-ContactMap" role="tabpanel"
                                aria-labelledby="nav-ContactMap-tab">

                                <div class="tab-pane fade show active" id="nav-ContactForm" role="tabpanel"
                                aria-labelledby="nav-ContactForm-tab">
                                <form class="custom-form contact-form mb-5 mb-lg-0" action="#" method="post"
                                    role="form">
                                    <div class="contact-form-body">
                                        <div class="shlter_name">
                                            <h6>개인 정보</h6>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <input type="text" name="contact-name" id="contact-name"
                                                    class="form-control" placeholder="성명" required>
                                            </div>

                                            <div class="col-lg-6 col-md-6 col-12">
                                                <input type="text" name="contact-name" id="contact-name"
                                                    class="form-control" placeholder="연락처(010-0000-0000)" required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <input type="text" name="contact-name" id="contact-name"
                                                    class="form-control" placeholder="이메일주소" required>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <input type="text" name="contact-name" id="contact-name"
                                                    class="form-control" placeholder="대체연락처(010-0000-0000)" required>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <div class="form-check form-control" style="border-color: white;">
                                                    <input class="form-check-input" type="radio" name="person"
                                                        id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        남
                                                    </label>
                                                </div>
                                            </div>
            
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <div class="form-check form-control" style="border-color: white;">
                                                    <input class="form-check-input" type="radio" name="person"
                                                        id="flexRadioDefault2">
                                                    <label class="form-check-label" for="flexRadioDefault2">
                                                        여
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <input type="text" name="contact-company" id="contact-company"
                                            class="form-control" placeholder="나이(숫자만입력)" required>
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <input type="text" name="contact-address" id="contact-address"
                                                    class="form-control" placeholder="우편번호" required>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <input type="text" name="contact-name" id="contact-name"
                                                    class="form-control" placeholder="주소찾기" required>
                                            </div>
                                        </div>
                                        <input type="text" name="contact-company" id="contact-company"
                                            class="form-control" placeholder="주소" required>
                                        <input type="text" name="contact-company" id="contact-company"
                                        class="form-control" placeholder="상세주소(필수입력)" required>   
                                        <input type="text" name="contact-company" id="contact-company"
                                        class="form-control" placeholder="직업/직장명(필수입력)" required>  
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <div class="form-check form-control" style="border-color: white;">
                                                    <input class="form-check-input" type="radio" name="person"
                                                        id="flexRadioDefault1">
                                                    <label class="form-check-label" for="flexRadioDefault1">
                                                        미혼
                                                    </label>
                                                </div>
                                            </div>
            
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <div class="form-check form-control" style="border-color: white;">
                                                    <input class="form-check-input" type="radio" name="person"
                                                        id="flexRadioDefault2">
                                                    <label class="form-check-label" for="flexRadioDefault2">
                                                        기혼
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                            <div class="information">
                                                <h6>개인정보 수집 및 이용에 대한 동의</h6>
                                            </div>
                                            <div class="agree">
                                                <p>1. 수집하는 개인정보의 항목: 성명, 주소, 이메일, 휴대전화번호<br>
                                                2. 개인정보의 수집, 이용 목적: 본 서명의 목적에 맞는 입양에 활용하기 위함<br>
                                                3. 개인정보의 보유 및 이용기간: 5년(관계법령에서 정한 일정한 기간)<br></p>
                                            </div>
                                            <div class="notice">
                                                <p>법률에서 정하는 경우를 제외하고는 귀하의 동의 없이 개인정보를 제3자에게 제공하지 않습니다.</p>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <div class="form-check form-control" style="border-color: white;">
                                                    <input class="form-check-input" type="checkbox" name="agree"
                                                        id="flexRadioDefault2">
                                                    <label class="form-check-label" for="flexRadioDefault2">
                                                        개인정보 이용에 동의합니다.
                                                    </label>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="adopt_q">
                                                <h6>입양 질문</h6>
                                            </div>
                                            <input type="text" name="contact-company" id="contact-company"
                                            class="form-control" placeholder="입양을 희망하는 동물의 종류와(강아지 or 고양이) 이름을 적어주세요" required>
                                            <input type="text" name="contact-company" id="contact-company"
                                            class="form-control" placeholder="입양을 결정하시기 까지 얼마나 오랜 시간을 고민하셨나요?" required>
                                            <input type="text" name="contact-company" id="contact-company"
                                            class="form-control" placeholder="입양을 원하시는 가장 큰 이유는 무엇인가요?" required>
                                            <input type="text" name="contact-company" id="contact-company"
                                            class="form-control" placeholder="가족 구성원은 몇 명인가요? 구성원을 소개해주세요." required>

                                            <div class="row">
                                                <h6>입양결정에 가족 모두 동의하십니까?</h6>
                                                <div class="col-md-3">
                                                    <div class="form-check form-control" style="border-color: white;">
                                                        <input class="form-check-input" type="radio" name="person"
                                                            id="flexRadioDefault1">
                                                        <label class="form-check-label" for="flexRadioDefault1">
                                                            동의
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-check form-control" style="border-color: white;">
                                                        <input class="form-check-input" type="radio" name="person"
                                                            id="flexRadioDefault2">
                                                        <label class="form-check-label" for="flexRadioDefault2">
                                                            일부동의
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-check form-control" style="border-color: white;">
                                                        <input class="form-check-input" type="radio" name="person"
                                                            id="flexRadioDefault2">
                                                        <label class="form-check-label" for="flexRadioDefault2">
                                                            반대
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <input type="text" name="contact-company" id="contact-company"
                                            class="form-control" placeholder="키우고 계신 반려동물이 있나요? 있다면 소개해주세요." required>
                                            <div class="information">
                                                <h6>입양동의</h6>
                                            </div>
                                            <div class="agree">
                                                <p> 본인은 보호소를 통하여 반려동물을 입양함에 있어 입양동물이 자연사하는 시점까지 책임 있는 보호자로서<br>
                                                    입양동물에게 최적의 환경과 보살핌을 제공할 것이며 최선을 다하여 입양동물을 보호할 의무가 있습니다.
                                                </p>
                                            </div>
                                                <div class="form-check form-control" style="border-color: white;">
                                                    <input class="form-check-input" type="checkbox" name="agree"
                                                        id="flexRadioDefault2">
                                                    <label class="form-check-label" for="flexRadioDefault2" style="color:black">
                                                        동의합니다.
                                                    </label>
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
            </div>
        </section>
</body>

</html>