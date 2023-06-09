<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="d-flex justify-content-center postDetailBox">

	<%-- 이미지가 있을 때만 이미지 영역 추가 --%>
	<c:if test="${not empty post.imagePath}">
		<%-- not empty는 null도 체크함. --%>
		<div class="imageMemo mr-3 ">
			<img src="${post.imagePath}" alt="업로드 된 이미지" width="400" height="450">
		</div>
	</c:if>


	<%-- 메모 영역 --%>
	<div class="w-50">
		<div class="mb-3 ">
			<img class="imgDetail" width="80" height="80" alt="header이미지"
				src="data:image/png;base64,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">
		</div>
		<input type="text" id="subject" class="form-control"
			placeholder="제목을 입력하세요." value="${post.subject}">
		<textarea rows="10" class="form-control" id="content"
			placeholder="글 내용을 입력하세요.">${post.content}</textarea>

		<%-- 삭제, 파일선택, 목록, 수정 --%>
		<div class="d-flex justify-content-between mt-2">
			<div class="d-flex justify-content-end ">
				<%-- mx, my 검색!  --%>
				<button type="button" id="postDeleteBtn" class="btn btn-light" data-post-id="${post.id}">삭제</button>
				<div>
					<input class="ml-1 mt-2 text-light" type="file" id="file"
						multiple='multiple' accept=".jpg, .jpeg, .png, .gif">
				</div>
				<%-- 확장자 선택 가능 : accept=".jpg, .jpeg, .png, .gif" --%>
			</div>
			<div>
				<a href="/post/post_list_view" class="btn btn-light">목록</a>
				<button type="button" id="saveBtn" class="btn btn-warning"
					data-post-id="${post.id}">수정</button>
			</div>
		</div>
	</div>
</div>
<script>
	$(document).ready(
			function() {
				//  수정 버튼 클릭
				$('#saveBtn').on(
						'click',
						function() {
							//alert("ddd");
							let subject = $('#subject').val().trim();
							let content = $('#content').val();
							let file = $('#file').val();
							let postId = $(this).data("post-id");
							//let postId = ${post.id};   // ** String으로 변환 해야됨. 

							if (!subject) {
								alert("제목을 입력하세요.");
								return;
							}

							console.log(subject);
							console.log(content);
							console.log(file);
							console.log(postId);

							// 파일이 업로드 된 경우 확장자 체크
							if (file != '') {
								let ext = file.split(".").pop().toLowerCase();
								//alert(ext);
								if ($.inArray(ext, [ 'jpg', 'jpeg', 'gif',
										'png', 'webp' ]) == -1) { // 없다 =  -1
									alert("이미지 파일만 업로드 할 수 있습니다.");
									$('#file').val(''); // 파일을 비운다.
									return;
								}
							}

							// 폼태그를 자바스크립트에서 만든다.(이미지 때문에)
							let formData = new FormData();
							formData.append("postId", postId);
							formData.append("subject", subject);
							formData.append("content", content);
							formData.append("file", $('#file')[0].files[0]);

							// AJAX
							$.ajax({
								// request
								type : "PUT",
								url : "/post/update",
								data : formData,
								encType : "multipart/form-data" // 파일 업로드를 위한 필수 설정
								,
								processData : false // 파일 업로드를 위한 필수 설정//json으로 가는거 방지. 
								,
								contentType : false // 파일 업로드를 위한 필수 설정

								// response
								,
								success : function(data) {
									if (data.code == 1) {
										alert("메모가 수정되었습니다.");
										location.reload(true); // 새로고침
									} else {
										alert(data.errorMessage);
									}
								},
								error : function(request, status, error) {
									alert("메모 수정 시 실패했습니다.");
								}

							}); // ajax

						}); // saveBtn
						
						
						
						
						
						
						// delete
						$('#postDeleteBtn').on('click', function() {
							let postId = $(this).data('post-id');
							// alert(postId);
							
							
							$.ajax({
								type:"DELETE"
								, url:"/post/delete"
								, data: {"postId":postId}
								, success:function(data) {
									if (data.code == 1) {
										alert("삭제 되었습니다.");
										location.href = "/post/post_list_view";
									} else {
										alert(data.errorMessage);
									}
								}
								, error:function(request, status, error) {
									alert("메모를 삭제하는데 실패했습니다.");
								}
								
							});
							
						}); // deletes

			}); // document
</script>