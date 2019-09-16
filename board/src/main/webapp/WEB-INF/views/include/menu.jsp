<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<div style="text-align: center;">
	<a href="${path}/">main</a>
	<a href="${path}/test.do">테스트</a>
	<a href="${path}/member/list.do">회원관리</a>
	<a href="${path}/upload/uploadForm">업로드 테스트</a>
	<a href="${path}/shop/product/list.do">상품게시판</a>
	<a href="${path}/board/notice/list.do">공지사항</a>
</div>
<div style="text-align: right;">
<c:choose>
	<c:when test="${sessionScope.userid == null }">
	<a href="${path}/member/login.do">로그인</a>
	<a href="${path}/admin/login.do">관리자 로그인</a>	
	</c:when>
	<c:otherwise>
		${sessionScope.name}님이 로그인중입니다
	<a href="${path}/member/logout.do">로그아웃</a>
	</c:otherwise>

</c:choose>	
	

</div>







