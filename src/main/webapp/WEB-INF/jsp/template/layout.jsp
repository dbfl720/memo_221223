<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEMO 게시판</title>
<!-- bootstrap -->
<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<!-- 내가 만든 스타일시트 (하단에 써야 적용됨)  -->
<link rel="stylesheet" type="text/css" href="/static/css/style.css">
</head>
<body>
	<div id="wrap" >
		<header class="bg-warning">
		<%-- 상대 경로 (위로 올라가서 경로 찾기 )..을 이용 --%>
			<jsp:include page="../include/header.jsp" /> <%--  <% .. 위로 올라간다.  %> --%>
		</header>
		<section class="contents">
			<jsp:include page="../${view}.jsp"  />
		</section>
		<footer class="bg-warning">
			<%-- 절대 경로 (잘 안씀) --%>
			<jsp:include page="/WEB-INF/jsp/include/footer.jsp"  />
		</footer>
	</div> 
</body>
</html>