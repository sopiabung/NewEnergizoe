<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.104.2">
<meta name="theme-color" content="#712cf9">
<title>회원가입</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.2/examples/headers/">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
/* ======================== CSS 는 이 밑에다가 =================== */
.col-md-7, .col-lg-8 {
	margin: auto;
	width: 530px;
	padding: 5%;
	border-radius: 1%;
}

#title {
	padding: 5% 5%;
	background: rgb(252, 222, 88);
}


/* ======================== CSS 는 이 위에다가 =================== */
</style>

<!-- Custom styles for this template -->
<link href="headers.css" rel="stylesheet">
</head>

<body class="bg-light">
	<%@include file="/WEB-INF/views/common/header.jsp"%>

	<!-- 헤더 자리 -->

	<!-- ================ HTML은 이 아래에다가 ================== -->

	<div class="container">
		<main>
			<div class="py-5 text-center">
				<img class="d-block mx-auto mb-4" src="resources/img/강아지고양이손들.png"
					alt="강아지고양이손들" width="100%">
				<div id="title">
					<h1>회원가입</h1>
					<p class="lead">저희와 함께 오갈데 없는 동물친구들의 손을 잡아주세요</p>
				</div>
			</div>
			<br>

			<!-- input 샘플 -->
			<!--<div class="col-12 input">
            <label for="?" class="form-label">?<span class="text-muted"></span></label>
            <input type="text" class="form-control" id="?" placeholder="?" required>
            <div class="invalid-feedback">
              ?
            </div>
          </div> -->

			<div class="col-md-7 col-lg-8">
				<form action="${root}/member/join" method="post"
					class="needs-validation" novalidate>
					<div class="row g-3">
						
					<div class="input-group mb-3">
						<select name="memberDiv" class="form-select" id="inputGroupSelect01">
							<option selected>전체</option>
							<option value="1">일반회원</option>
							<option value="2">보호소회원</option>
						</select>
					</div>
					<div class="col-12 input">
						<label for="id" class="form-label">아이디</label>
						<div class="input-group has-validation">
							<input name="memberId" type="text" class="form-control" id="id"
								placeholder="id" required>
							<div class="invalid-feedback">아이디를 입력해주세요</div>
						</div>
					</div>

					<div class="col-12 input">
						<label for="password" class="form-label">비밀번호<span
							class="text-muted"></span></label> <input name="memberPwd"
							type="password" class="form-control" id="password"
							placeholder="password" required>
						<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
					</div>

					<div class="col-12 input">
						<label for="password" class="form-label">비밀번호 확인<span
							class="text-muted"></span></label> <input name="membwePwdre"
							type="password" class="form-control" id="password-check"
							placeholder="password check" required>
						<div class="invalid-feedback">비밀번호를 한번 더 입력해주세요.</div>
					</div>

					<div class="col-12 input">
						<label for="nick" class="form-label">닉네임<span
							class="text-muted"></span></label> <input name="memberNick" type="text"
							class="form-control" id="nick" placeholder="nick" required>
						<div class="invalid-feedback">닉네임을 입력해주세요.</div>
					</div>

					<div class="col-12 input">
						<label for="name" class="form-label">이름<span
							class="text-muted"></span></label> <input name="memberName" type="text"
							class="form-control" id="name" placeholder="name" required>
						<div class="invalid-feedback">이름을 입력해주세요.</div>
					</div>

					<div class="col-12 input">
						<label for="phone" class="form-label">휴대전화 번호<span
							class="text-muted"></span></label> <input name="memberHp" type="text"
							class="form-control" id="phone" placeholder="01012341234"
							required>
						<div class="invalid-feedback">휴대폰번호를 00000000000 형식으로
							입력해주세요. ( 하이픈(-) 제외 )</div>
					</div>

					<div class="col-12 input">
						<label for="email" class="form-label">이메일 <span
							class="text-muted"></span></label> <input name="memberEmail" type="email"
							class="form-control" id="email" placeholder="you@example.com"
							required>
						<div class="invalid-feedback">이메일이 유효하지 않습니다.</div>
					</div>

					<div class="col-12 input">
						<label for="birth" class="form-label">생년월일<span
							class="text-muted"></span></label> <input name="memberBirth" type="text"
							class="form-control" id="birth" placeholder="19901231" required>
						<div class="invalid-feedback">생년월일 숫자만 8개 입력해주세요.</div>
					</div>

					<div class="col-12 input">
						<label for="address" class="form-label">주소</label> <input
							name="memberAddress" type="text" class="form-control"
							id="address" placeholder="서울특별시 강남구 역삼동" required>
						<div class="invalid-feedback">주소를 입력해주세요.</div>
					</div>

					<hr class="my-4">

					<button class="w-100 btn btn-primary btn-lg" type="submit">회원
						가입하기</button>
			</div>
			</form>
	</div>
	</main>
	</div>
	</main>

	<!-- ================ HTML은 이 위에다가 ==================== -->

	<!-- 헤더 자리 -->
	<%@include file="/WEB-INF/views/common/footer.jsp"%>

	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
	<!-- 아래한줄 있어야하는건지 모르겠음 -->
	<script src="checkout.js"></script>
</body>

</html>