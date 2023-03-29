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
    <title>신고글 작성</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/headers/">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
      

    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
    
    
    </style>

  </head>
<body>
	<%@include file="/WEB-INF/views/common/header.jsp"%>

    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
  <!-- main 아래부터 작성 -->
  
  <div class="container" style="margin-top:30px">
    <div class="row">
      <div class="col-sm-12">
          <h2>실종신고</h2>
          
            <form action="/app01/report/detail" method = "POST" enctype="multipart/form-data">
            <!-- <div class="form-group">
              <label for="exampleSelect1" class="form-label mt-4">상태</label>
              <select class="form-select" id="exampleSelect1">
                <option>전체</option>
                <option>실종</option>
                <option>보호</option>
                <option>목격</option>
                <option>완료</option>
              </select>
            </div> -->
          </div>          
          &nbsp;          
          <!--<div class="form-group">
            <label for="usr" font-size>실종날짜</label>&emsp;
            <input type="date" >
          </div>  -->
          &nbsp;
          <div class="form-group">
            <!-- <label for="exampleSelect1" class="form-label mt-4">실종지역</label>
            <select class="form-select" id="exampleSelect1">
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
              <option>중랑구</option> -->
            </select>
          &nbsp;
          <!-- <div class="form-group">
            <label for="usr">실종장소</label>
            <input type="text" placeholder="잃어버린 장소를 구체적으로 적어주세요." class="form-control" id="area" name = "area">
          </div>
          &nbsp;
          <div class="form-group">
            <label for="usr">보호자 이름</label>
            <input type="text" required class="form-control" id="proName" name = "proName">
          </div>
          &nbsp;
          <div class="form-group">
            <label for="usr">보호자 연락처</label>
            <input type="text" required class="form-control" id="proHp" name = "proHp">
          </div>
          &nbsp; -->
          <!-- 동물정보 -->
          <div class="form-group" style="padding-bottom: 30px;">
            <label for="exampleSelect1" class="form-label mt-4">품종</label>
            <select class="form-select" id="exampleSelect1" name="breedDog" >
              <option>강아지-전체</option>
              <option>믹스견</option>
              <option>골든리트리버</option>
              <option>닥스훈트</option>
              <option>래브라도리트리버</option>
              <option>몰티즈</option>
              <option>슈나우저</option>
              <option>푸들</option>
              <option>미니핀</option>
              <option>베들링턴테일러</option>
              <option>보더콜리</option>
              <option>보스턴테리어</option>
              <option>비글</option>
              <option>비숑프리제</option>
              <option>사모예드</option>
              <option>셰틀랜드쉽독</option>
              <option>시바이누</option>
              <option>시베리안허스키</option>
              <option>시츄</option>
              <option>코카스파니엘</option>
              <option>요크셔테리어</option>
              <option>웰시코기</option>
              <option>그레이하운드</option>
              <option>스피츠</option>
              <option>진돗개</option>
              <option>치와와</option>
              <option>파피용</option>
              <option>퍼그</option>
              <option>페키니즈</option>
              <option>포메라니안</option>
              <option>프렌치불독</option>
              <option>기타</option>
            </select>
            <select class="form-select" id="exampleSelect1" name="breedCat">
              <option>고양이-전체</option>
              <option>믹스고양이</option>
              <option>네벨룽</option>
              <option>노르웨이 숲</option>
              <option>데번렉스</option>
              <option>라펌</option>
              <option>러시안블루</option>
              <option>맹크스</option>
              <option>먼치킨</option>
              <option>메인쿤</option>
              <option>발리니즈</option>
              <option>밤비노</option>
              <option>버만</option>
              <option>버미즈</option>
              <option>버밀라</option>
              <option>벵갈</option>
              <option>봄베이</option>
              <option>브라징리안쇼트헤어</option>
              <option>브리티시쇼트헤어</option>
              <option>샤르트뢰</option>
              <option>샴</option>
              <option>스코티시폴드</option>
              <option>아라비안마우</option>
              <option>아메리칸밥테일</option>
              <option>아메리칸컬</option>
              <option>아비시니안</option>
              <option>이그조틱쇼트헤어</option>
              <option>코리안쇼트헤어</option>
              <option>터키시앙고라</option>
              <option>페르시안</option>
              <option>히말라얀</option>
              <option>기타</option>
            </select>
            <input type="text" placeholder="위에 맞는 품종이 없을 시 적어주세요." class="form-control" id="etc" name = "etc">
            &nbsp;
          <!-- <div class="form-group">
            <label for="usr">성별</label>
            
             <div class="form-check">
              <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
              <label class="form-check-label" for="flexRadioDefault1">
                미확인
              </label>              
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" >
              <label class="form-check-label" for="flexRadioDefault2">
                암컷
              </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
              <label class="form-check-label" for="flexRadioDefault1">
                수컷
              </label>              
            </div>
            <hr>
            <div class="form-check">
              <input class="form-check-input" type="checkbox" name="flexRadioDefault" id="flexRadioDefault2" >
              <label class="form-check-label" for="flexRadioDefault2">
                중성화완료
              </label>
            </div>
          </div> -->
          <br>
          <label for="usr">성별</label><br>
          <form action="processForm" method="post">
		    <label for="male">수컷</label>
		    <input class="form-check-input" type="radio" id="male" name="gender" value="male">
		    <br>
		    <label for="female">암컷</label>
		    <input class="form-check-input" type="radio" id="female" name="gender" value="female">
		    <br>
		  </form>
          &nbsp;
           <div class="form-group">
            <label for="usr">반려동물 이름</label>
            <input type="text" class="form-control" name="animalName">
           </div>&nbsp;
          <div class="form-group">
            <label for="usr">나이</label>
            <select class="form-select" id="exampleSelect1" name="age">
              <option>1개월-3개월</option>
              <option>4개월-6개월</option>
              <option>7개월-9개월</option>
              <option>10개월-1년</option>
              <option>2년-4년</option>
              <option>5년-7년</option>
              <option>아라비안마우</option>
              <option>8년-10년</option>
              <option>11년-13년</option>
              <option>14년 이상</option>
            </select>
          </div>&nbsp;
          <div class="form-group">
            <label for="usr">몸무게</label>
            <select class="form-select" id="exampleSelect1" name="weight">
              <option>1kg미만</option>
              <option>1kg-3kg</option>
              <option>4kg-6kg</option>
              <option>7kg-9kg</option>
              <option>10kg-12kg</option>
              <option>13kg-15kg</option>
              <option>15kg이상</option>
              <option>20kg이상</option>            
            </select>            
          </div>
          &nbsp;
          <div class="form-group">
            <label for="usr">털색</label>
            <input type="text" required placeholder="털색을 설명해주세요." class="form-control" id="color" name="color">
          </div>
          &nbsp;
          <div class="form-group">
            <label for="usr">특징</label>
            <input type="text" required placeholder="눈에 띄는 특징을 적어주세요." class="form-control" id="character" name="character">
          </div>
          &nbsp;
          <div class="form-outline mb-4">
          <label for="usr">내용</label>           
            <textarea class="form-control" id="textAreaExample6" rows="3" placeholder="기타사항을 입력해주세요." name="
"></textarea>
            <label class="form-label" for="textAreaExample6"></label>
          </div>
          <div class="form-group">
            <label for="usr">사진파일첨부 (최대3장)</label>
          <br>          
            <input type="file" class="form-control-file border" name="file" >
            <input type="file" class="form-control-file border" name="file" >
            <input type="file" class="form-control-file border" name="file" >
          </div>
          <br>
            <button type="submit" class="btn btn-primary" onclick="location.href='${root}/report/detail'">등록하기</button>
      </div>
    </div>
  </div>
  </body>
</html>