<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-flex justify-content-center">
	<div class="w-50"> 
		<div class="mb-3">
			<img width="120" height="120" alt="header이미지" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAflBMVEX///8AAADt7e20tLQnJyd6enr5+fn8/PywsLDOzs7y8vLr6+swMDBoaGiHh4fLy8tFRUVUVFTBwcHk5ORzc3PZ2dkgICCcnJw+Pj5PT08YGBjDw8Onp6dfX19LS0sfHx+QkJAzMzNAQEAMDAyAgICVlZWenp6MjIx2dnZbW1sp2wbdAAAKa0lEQVR4nO2da5uqKhSAy0zTyspLV5tsaprp///BXQbITUQj0f3wfjpPujusgcW6QoOBwWAwGAwGg8FgMBgMBoPBYDAYDAaDwWAwGAwfwE8Ok0mYTHWP40O4k91+mHNZpr7u0ajH3QwJro7uESkmmQ1pDrrHpJQRI9+DH92jUghXwOEw0D0uZUwKofbrCyZipntkiihm8JpYjpVszuiDie6xKQHN4DYCn7jFpCZah6YGJM0S+9Dacj7sKUjAlYt/7K7AxyNdA1MF0sEVZeFdoIy2nnEpAwn45dKPpuCJp2NcykBL9IvzMH09Grc+KoWU6CDAsfNn59aHpQ60RHd8Lzt4PY24D/sAErDMIng9N4loie7K3ohez8M2R6WQUjNRML302SIWZqI80gVz2M84keuq0Rx6rIdiMwGZ93cvRUv0LhIQbKXb1oaljiIe3ApSaj4IhbO2hqUOLKIfrktFtEBmcdi/5CmZkykTcQpzb9d2R6cAOuk044poQQFPvUubFq6aSET/BJ920FS4juOU75CYq+bB/7QZEa01fNax4DA6ZPFxebbt7W4+Tnn1FcJVW5SJiHSwUwI6YUzn5S/LH2qNURE9EvFMiIh0cLhob/xVePGQz/6GDZ5x1bgL1YdmojszaKXnEvly/uBEclw1zkKd2l0T0PsTiZdzzyM8briERIQ76rRjS9QRTx/CTjEzQey0aKG+RPTRDHZCwKh6+ljoiB6J+PRurE7pYDJnRr+M00WSRFHihdnRZh4/YSN6TBetLpkJn9k97xPSAPpJdqLf4WbVCqMBixVdWKK0d3naWLzXFivyNX5E71Ff1gEB/SM5orh8USVjrOJZFtEvyK/Tv0STNT6ec8qdPoSD5nFZGicsuiVgiA9nG4oSEU+KBS1IuGALVf8STTH5vqv/3kXxRTTVfoc8GUzAmUQ2Wi6r1iVXDUuyZFXrc1BdfHnRpWjigOSzZaLvyuJLjr/ujoAREjCWeb26+PLEQo6B/iU6QKtJqiFLovgy6FhEH8CxpDJvy+lgYXv0L9HCaN1k3pYqvqB+hE7MoFsrSStnJqLCOV+OtKdGf2TmBCKpg0SIZd/0dgajfbSemRDNoM/EkFedpTSYpM4k3hX2ySCKiB7jrk0f4azYdTwZsavGNj7rVEhYzZPZ0yVdtTN8bUTnC7QoJEw6zatflXTV8Kza9JeeyHHbColC1Oo/rqSrRqUNXSYveWxXIaHKVHcly5mJYokWcoQ7RiEldF4R0BQKt8YcQTslho8EJNQ6YRRy05JCIlNYqRySOnjiCvjACigZW7KQMJf0W/WinKsmDHjZQkELCgknZi2ddJLUQb7lcUMqyzr8+rBCIlNY1WAm6apJpCyYisF680kZofpXhfWSZkKu+GIFl2Ez7rWbG1BUKE78YjqoJqL3JSt3LHVFhEOqiOuLGXxHBwnc8KuRhMda8iFTWNFA96GsGqeEV81eVrYcSVNY11WTNwDT+gpZ7ZfgwI07E74lGdGf6ws4eCpkSZhVRq2UFooKhSGbpKvWOLPthktGjHJq9YU7UmOSi+jf65NxLUlqOrLQFAqjQsniC2smDsGP7g5nqaiwabiU5MGS3kZ8eEBOGBU2iOhzYBChbrgNgKZQZAEaFl8WpfFTm8gkSJsVX5xxsfPpTObDpIIgKpR01SgzccATwWrHXAs4PQIfSK74QpkJh3DENHY5SyRI69bo828iOjlinYUKqCrlprCJDk7xCVxrNRXVUWHd4stzBvFOlWGgt5oGw5xSU1i3+PKYQQ/3oM+a3ZnKBGnd4otHLtDh5gODrkNlVFi3TyZxiEToXbc/OrhDVSl5XoRLom9BEf3lRiZ69Z97raoVFreRWH55GBMRLYwFsfZ6fWWCtORGIDnsLhzrrYgK3xJQs4l4gUwh3+GYiASoYNuJo2iuuFb4hoDnjtyJdAPj4XvTzZfop8sr0qBthrugmgq41p6RKYBTmPEekkt0b0swW85vh07dgnh+jZ6bIMVa6reZF3VhW6wP9Nd4bgdawMNtF4xaQ+A65D1D2ZVe3/Y3LtfCBAoo1T/bWb5fQvDOGcC2qKzlISkGhOScvd0HAvb9FjywmXC2SaihHehWfot16RzO/48pHIBDjhxrAKawI75lc0DkxKZRoBr27zIVCpDvYxPdMKbSMCa1QKPHLFNw4mmmY1BqAWUvprkEZOO/dYxJLTBTSntmYA77fE8jwIK+GbXZwOWrZ1RKQU3lVzwmj2A1sZ8hE4GDCtA2CqF8uHb7e08jDn4BwDgNF+Htjn0icRyh+xA1MIbem/wnPyIJ/3SPTgnCWfwfNPGhiyVVlZxOJK7fxslouWYhKnF24MSuChyic/WZsS7O7P4fP5EC8ooXe7YLRq9+BSwhfO17qD9Auw2xr2DdWg/nfD4Wcw2ydDH97HQnv0HjnQ+4aWS3SYPG8nM8qjjH0Bw//5M3dEKA0t2pj8ciYUr50NGlFGwVzfoCQJWJyf42rB/O1NcBivacZk5I6UXMU/rclSQ7tWY0we6qanRPLehh550jufElqCZ7SySCiDiL2UgHQEjPa11qLOHQVqSOU/KsqdQ1HQxgR+GtLPADaX/JISwALUG7Q3h48PhglG6C+P5FXSowV1AKps7Sfjdc/eCfc54cwKDJRA7YmJiNmzEvv2+ajgV1V1yzCURRMFsodK/wqxtK+JCxec3bT7fkd8WNo1WQrKH1xsd+wq+WhOTJpbjZWmVuupW4TK2UV5FtT/SHRCmxQGpJGHrkNSb3sOZEuklGB3TbdwJVkDrELGnyQ592rCXhaOBcyX++HnvS/TWuF1Cr87Eq3isRAYMA/ZBFwLmMtKaEnB9x3M9lZjIazdlbXvbvth+95mv//P/7zM0jTSV8eHzshaZ2MCrtWnH8w+3I/IsHX28nUiI4XEr1XqwbSzhwNqyMD3Z/2SiJoqnvOw/8aRQlo5/xvaw/VYH7B7zrFX0Vx+v7N80lfO73XBlzLmt7NpvZJ9Gx2NlNSShWGgWuntf/3N6R8EGtA6EkV0Xeu8P99v1x9NoX3prDnCioebL3ySxWlwAL2a+/xCFaHe9L+Nz/r+c64u2yRGU2hL6mex94+NerkPApJHcb47D9reseVPKNf//3jXaxFEmYk4zGW96dZuBPux1PPpL/QBXEh+pxPFuVEuZE3ij7O66ev4yx35/s2fbrPr9uDt7nmm5fVwCdrgv+4hBJSCeu4D12Uiba8XMEP3GiDH8z35TvyyCRSiZHgAmZ0fsBWA39KnWABAfZ/gVdO0ptYFdxi8NTQMKZF9gxNVyR7664n3YesPnh59OLRDGRYE15H/YAGOkVmohXVLFtE51d6FSvvgTodOLxtZ9bZHB7Bd6PhSa28ha0zlF45vPbKI2ZWGA+8bxJ8dK+f9VGixZJTB9LxgeuJHfup40zmnrhnX/KBhvOpz0VkBdhPS0CR/D+9qZQRTZwdnJKBUTHj5V/28A7ok10V9Q/kxglYtZ//XJHOViLzTgeZwcyzHGS9PoXB6nSqNxgMBgMBoPBYDAYDAaDwWAwGAwGg8FgMBgMhgf/AJXRe5CIXDtiAAAAAElFTkSuQmCC">

		</div>
		<input type="text" id="subject" class="form-control" placeholder="제목을 입력하세요.">
		<textarea rows="10" class="form-control" id="content" placeholder="글 내용을 입력하세요."></textarea>
		
		<%-- 목록, 파일선택, 모두 지우기, 저장 --%>
		<div class="d-flex justify-content-between  mt-2">
			<div class="d-flex justify-content-end ">   <%-- mx, my 검색!  --%>
				<button type="button" id="postListBtn" class="btn btn-dark">목록</button>
				<input class="ml-1 mt-2" type="file" id="file" multiple='multiple' accept=".jpg, .jpeg, .png, .gif"> <%-- 확장자 선택 가능 : accept=".jpg, .jpeg, .png, .gif" --%>
			</div>
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
			, enctype:"multipart/form-data"  // 파일 업로드를 위한 필수 설정.   // **이미지를 보낼때는 반드시 있어야한다.  
			, processData:false  			// 파일 업로드를 위한 필수 설정.     // string이 아니라는 정보 - false 
			, contentType:false            // 파일 업로드를 위한 필수 설정.
			
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



