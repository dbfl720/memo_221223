<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
 <div class="h-100 d-flex justify-content-between align-items-center">
    <%-- logo --%>
    <c:if test="${not empty userId}">
	    <div>
		<h1 class="font-weight-bold ml-4"><a href="/post/post_list_view" class="headerLogo ">MEMO 게시판</a></h1>
	    </div>
    </c:if>
    <c:if test="${empty userId}">
    	<div>
		<h1 class="font-weight-bold ml-4"><a href="/user/sign_in_view" class="headerLogo ">MEMO 게시판</a></h1>
	    </div>
    </c:if>
    
    <%-- 로그인 정보 --%>
    <c:if test="${not empty userId}">
    	<div class="d-flex font-weight-bold"><div class="createUserName font-weight-bold">${userName}</div><div class="createUserName2">님 안녕하세요.</div><a href="/user/sign_out" class="loginText ml-5 mr-5">Logout</a></div> 
     </c:if>
     <c:if test="${empty userId}">
     	<a href="/user/sign_in_view" class="loginText font-weight-bold mr-5">Login</a>
     </c:if>
 </div>
    