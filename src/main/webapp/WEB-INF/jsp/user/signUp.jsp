<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="d-flex justify-content-center">
	<div class="sign-up-box">
		<form id="signUpForm" method="post" action="/user/sign_up">
			<table class="sign-up-table table table-bordered">
				<tr>		
					<td>
					<div class="text-center signUpImage mb-5 ml-3 mt-4"><img alt="이미지2" width="130" height="130" src="data:image/png;base64,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"></div>
						<%-- 인풋박스 옆에 중복확인을 붙이기 위해 div를 하나 더 만들고 d-flex --%>
						<div class="d-flex">
							<input type="text" id="loginId" name="loginId"
								class="form-control col-9" placeholder="아이디를 입력하세요.">
							<button type="button" id="loginIdCheckBtn"
								class="btn btn-success ml-2 ">중복확인</button>
							<br>
						</div> <%-- 아이디 체크 결과 --%> <%-- d-none 클래스: display none (보이지 않게) --%>
						<div id="idCheckLength" class="small text-danger d-none">ID를
							4자 이상 입력해주세요.</div>
						<div id="idCheckDuplicated" class="small text-danger d-none">이미
							사용중인 ID입니다.</div>
						<div id="idCheckOk" class="small text-success d-none">사용 가능한
							ID 입니다.</div>
					</td>
				</tr>
				<tr>
				
					<td><input type="password" id="password" name="password"
						class="form-control" placeholder="비밀번호"></td>
				</tr>
				<tr>
				
					<td><input type="password" id="confirmPassword"
						class="form-control" placeholder="비밀번호 재입력"></td>
				</tr>
				<tr>
				
					<td><input type="text" id="name" name="name"
						class="form-control" placeholder="사용자 이름"></td>
				</tr>
				<tr>		
					<td><input type="text" id="email" name="email"
						class="form-control" placeholder="이메일 주소">
	
					<button type="submit" id="signUpBtn" class="btn btn-primary float-right col-12 mt-5 mb-2">Join</button>		
					</td>
				</tr>
			</table>
			<br>

		</form>
	</div>
</div>




<script>
$(document).ready(function() {
	// 중복 확인 버튼 클릭
	$('#loginIdCheckBtn').on('click', function(){
		//  경고 문구 초기화
		$('#idCheckLength').addClass("d-none");    <%-- addClass -  요소에 클래스를 추가한다   <%-- d-none 클래스: display none (보이지 않게) --%>
		$('#idCheckDuplicated').addClass("d-none");
		$('#idCheckOk').addClass("d-none");
		
		
		let loginId = $('#loginId').val().trim();
		
		// 4자 미만이면 경고 문구 노출
		if (loginId.length < 4) {
			$('#idCheckLength').removeClass('d-none');   // removeClass - 요소에 클래스를 제거한다
			return;
		}
		
		
		
		
		
		
		// AJAX 통신 - 중복확인
		$.ajax({
			// request        // *** 요청이 안되면 여기를 봐라!!! 
				url:"/user/is_duplicated_id"
				, data:{"loginId":loginId}
		
		
			// response 
			, success:function(data) {   // call back 함수
				if (data.result) {
					// 중복
					$("#idCheckDuplicated").removeClass("d-none");
				} else {
					// 사용 가능
					$("#idCheckOk").removeClass("d-none");
				}
				
				
			}
			
			,error: function(error) {
				alert("아이디 중복확인에 실패했습니다. 관리자에게 문의해주세요.");
			}
			
		});
	});
	
	
	
	
		// 회원가입
		$('#signUpForm').on('submit', function(e) {  // 멈추고 싶으면 e를 써줌. event  // form태그가 동작 안하게 하고 싶을때 e 붙임
			e.preventDefault();   // submit 기능 중단  // submit을 쓰면 다음페이지로 넘어감.
			
			
			//  validation
			let loginId = $('#loginId').val().trim();
			let password = $('#password').val();
			let confirmPassword = $('#confirmPassword').val();
			let name = $('#name').val().trim();
			let email = $('#email').val().trim();
			
			if (!loginId) {
				alert("아이디를 입력하세요.")
				return false;  // form일 때는 false를 해야지 동작안함.
			}
			
			if (!password || !confirmPassword) {
				alert("비밀번호를 입력하세요.");
				return false;
			}
			
			
			if (password != confirmPassword) {
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
			
			
			if (!name) {
				alert("이름을  입력하세요.");
				return false;
			}
			
			if(!email) {    // 이메일 형식에 맞는지 정규식 확인하는거 필요! 
				alert("이메일을 입력하세요.");
				return false;
			}
			
			
			// 아이디 중복확인 완료 됐는지 확인 - idCheckOk d-none이 있으면 alert 띄우기 
			if ($("#idCheckOk").hasClass("d-none")) {
				alert("아이디 중복확인을 다시 해주세요.");
				return false;
			}
			
			
			// 서버로 보내는 방법
			// 1) 서브밋
			//$(this)[0].submit();  // this - $('#signUpForm')태그임.   // 임의로 submit 호출(즉 페이지 넘기기)  // UserController(일반 컨트롤러)로 보내야함. - 화면 이동 때문에.. 
			
			// 2) AJAX + form태그 활용 case   // RestController 
			let url = $(this).attr("action");  // this - form태그  // attr - 속성  //action?????????????????????????? 어디서 나타난거지???????????action="/user/sign_up" 인가..?????
			console.log(url);
			let params = $(this).serialize();  // 폼태그에 있는 *** name 속성값들로  파라미터 구성 // Query Ajax로 호출하기 전에 serialize를 해주면 form안에 값들을 한 번에 전송 가능한 data로 만들 수 있어 많은 data를 보낼 때 유용
			console.log(params);
			
			
			$.post(url, params)	// request // ****** 질문 : params는 위에 validation 변수들 ??????
			.done(function(data) {  // success와 똑같음.  ajax 호출을 만드는 함수의 옵션으로 성공 함수를 전달하는 대신, 함수 자체에서 $.ajax를 반환하고 콜백을 done, fail, then 등으로 바인딩할 수 있다  // ***질문: data는 RestController에서 온 return 값???
				// response
				if (data.code == 1) {  // 성공
					alert("가입을 환영합니다! 로그인을 해주세요.")
					location.href = "/user/sign_in_view";    // 절대경로로 써야됨.
				} else { // 실패
					alert(data.errorMessage);
					
				}
			});  
		});
	
});

</script>