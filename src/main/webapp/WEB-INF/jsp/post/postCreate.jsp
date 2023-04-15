<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-flex justify-content-center">
	<div class="w-50"> 
		<h1>글쓰기</h1>
		<input type="text" id="subject" class="form-control" placeholder="제목을 입력하세요.">
		<textarea rows="10" class="form-control" id="content" placeholder="글 내용을 입력하세요."></textarea>
		<div class="d-flex justify-content-end my-3">   <%-- mx, my 검색!  --%>
			<input type="file" id="file" accept=".jpg, .jpeg, .png, .gif"> <%-- 확장자 선택 가능 : accept=".jpg, .jpeg, .png, .gif" --%>
		</div>
		
		<div class="d-flex justify-content-between">
			<button type="button" id="postListBtn" class="btn btn-dark">목록</button>
			
			<div>
				<button type="button" id="clearBtn" class="btn btn-secondary">모두 지우기</button>
				<button type="button" id="saveBtn" class="btn btn-warning">저장</button>
			</div>
		</div>
	</div>

</div>
<script>
$(document).ready(function() {
	// 목록 버튼 클릭 => 글 목록으로 이동
	$('#postListBtn').on('click', function(){
		location.href= "/post/post_list_view";
	
	});
	
	
	// 모두 지우기 버튼
	$('#clearBtn').on('click', function() {
		$('#subject').val("");  // 공백으로 하면 지워짐.
		$('#content').val("");
	});
	
	
	
	// 글 저장
	$('#saveBtn').on('click', function() {
		let subject = $('#subject').val().trim();
		let content = $('#content').val();
		let file = $('#file').val();  // 이미지 경로  - C:\fakepath\스크린샷 2023-04-14 오후 4.40.32.png
		
		if (!subject) {
			alert("제목을 입력하세요.");
			return;
		}
		
		if (!content) {
			alert("내용을 입력하세요.");
			return;
		}
		
		// alert(file);
		
		// 파일이 업로드 된 경우에만 확장자 체크
		if (file != "") {
			// 확장자만 뽑아서 소문자로 변경한다. 
			let ext = file.split(".").pop().toLowerCase();  // 마지막칸 꺼내랏 pop() // toLowerCase() 소문자로 바꾸 // toUpperCase()
			//alert(ext);
			if ($.inArray(ext, ['jpg', 'jpeg', 'png', 'gif']) == -1) {  //$.inArray : 이 배열안에 확장자가 있는가 검사하는 함수. // 포함되어 있지 않으면 -1
				alert("이미지 파일만 업로드 할 수 있습니다.");
				$('#file').val(""); // 파일을 비운다. 
				return;
			}
		}
		
		
		
		
		// 서버 AJAX
		// 이미지를 업로드 할 때는 form태가 반드시 있어야 한다.  -  post로 반드시 보내야함. enctype 필요.
		// append 함수는 form태그의 name 속성과 같다. 
		// 데이터를 담는 과정
		// ************** 1111111. 서버 AJAX에서 제일 처음으로 request를 보낸다.
		// ******* 11111111. AJAX 코드가 잘 되고 있는지  check **** - 여기에 오타가 있으면 요청도 못가고 에러 뜸.
		let formData = new FormData();
		formData.append("subject", subject);  // (key , value) - value : 위에 subject 변수
		formData.append("content", content);
		formData.append("file", $('#file')[0].files[0]);  // 한개에 파일만 업로드. 첫번째에 있는. 
		
		
		
		$.ajax({
			// request - 이미지를 넣는  case. 
			type:"POST"  // 이미지 때문에 post,커다란 파일 post
			, url:"/post/create"
			, data:formData   // formData 함수가 RequestBody 알아서 채워서 보내준다. 
			, enctype:"multipart/form-data"  // **이미지를 보낼때는 반드시 있어야한다.  // 파일 업로드를 위한 필수 설정.
			, processData:false  // string이 아니라는 정보 - false // 파일 업로드를 위한 필수 설정.
			, contentType:false // 파일 업로드를 위한 필수 설정.
			
			// response
			, success:function(data){
				if (data.code == 1) {
					// 성공
					alert("메모가 저장되었습니다.");
					location.href = "/post/post_list_view";
				} else {
					// 실패
					alert(data.errorMessage);
				}
			}
			, error:function(request, status, error) {
				alert("글을 저장하는데 실패했습니다.");
			}
		});
	});
});

</script>



