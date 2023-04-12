<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<div id="wrap" class="container text-center">
			<form method="POST" action="#">
				<div class="loginImg"><img id="loginImg" class="mb-5" alt="이미지1"  width="200" height="80" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKnXdbpj6ls3U9mq6oO9EqeW_sWf-FVtWl-Q&usqp=CAU"></div>
				<div class="justify-content-center d-flex"><input id="loginId" name="loginId"  type="text" class="form-control col-4 mb-3 " value="아이디를 입력하세요."></div>
				<div class="justify-content-center d-flex"><input id="loginPassword" name="loginPassword" type="text" class="form-control col-4 mb-3" value="비밀번호를 입력하세요."></div>
				<div><button id="longInBtn" name="longInBtn" type="button" class="btn btn-primary col-4 mb-3">로그인</button></div>
				<div><button id="joinBtn" name="joinBtn" type="button" class="btn btn-primary col-4">회원가입</button></div>
			</form>
	</div>
