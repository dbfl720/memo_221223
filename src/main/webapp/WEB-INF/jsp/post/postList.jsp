<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="d-flex justify-content-center postListBox">
	<div class="w-50">  <%-- width값 50프로. --%>
		<div class="mb-3">
			<img class="postListImg" width="60" height="60" alt="header이미지" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYLwP2AGFo9E5h4dxl854Fj0jrTtGA8FUsYyD5Z5oR88F10W0G8WkwmmixTIaeEpRLAMU&usqp=CAU">
		</div>
		
		<table class="table text-light">
			<thead>
				<tr>
					<th>No.</th>
					<th>제목</th>
					<th>작성날짜</th>
					<th>수정날짜</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${postList}" var="postLists">
				<tr>
					<td>${postLists.id}</td>
					<td><a href="/post/post_detail_view?postId=${postLists.id}" class="memoSubject">${postLists.subject}</a></td>
					<td><fmt:formatDate value="${postLists.createdAt}" pattern="yyyy년 M월 d일" /></td>
					<td><fmt:formatDate value="${postLists.updatedAt}" pattern="yyyy년 M월 d일" /></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		
		
		<!-- 페이징 -->
		<div class="d-flex justify-content-center">
			<c:if test="${prevId ne 0}">
				<a href="/post/post_list_view?prevId=${prevId}" class="mr-5">&lt;&lt; 이전</a> <%-- 계산안하고 서버에 넘기기. --%>
			</c:if>
			<c:if test="${nextId ne 0}">
			<a href="/post/post_list_view?nextId=${nextId}">다음 &gt;&gt;</a>
			</c:if>
		</div>
		
		<div class="d-flex justify-content-end">
			<a href="/post/post_create_view" class="btn btn-warning">글쓰기</a>
		</div>
	</div>
</div>