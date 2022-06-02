<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 동일한 이름으로 4가지 영역에 속성 저장 -->
<c:set var="scopeVar" value="Page Value"></c:set>
<c:set var="scopeVar" value="Request Value" scope="request"></c:set>
<c:set var="scopeVar" value="Session Value" scope="session"></c:set>
<c:set var="scopeVar" value="Application Value" scope="application"></c:set>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - remove</title>
</head>
<body>
	<h4>출력하기</h4>
	<ul>
		<li>scopeVar : ${scopeVar }</li>
		<li>requestScope.scopeVar : ${requestScope.scopeVar }</li>
		<li>sessionScope.scopeVar : ${sessionScope.scopeVar }</li>
		<li>applicationScope.scopeVar : ${applicationScope.scopeVar }</li>
	</ul>
	
	<h4>session 영역에서 삭제하기</h4>
	<!-- 영역을 지정한 상태에서 속성 삭제 : 이 때는 session영역에서만 삭제된다. -->
	<c:remove var="scopeVar" scope="session"/>
	<ul>
		<li>sessionScope.scopeVar : ${sessionScope.scopeVar }</li>
	</ul>
	
	<h4>scope 지정 없이 삭제하기</h4>
	<c:remove var="scopeVar"/>
	<ul>
		<li>scopeVar : ${scopeVar }</li>
		<li>requestScope.scopeVar : ${requestScope.scopeVar }</li>
		<li>applicationScope.scopeVar : ${applicationScope.scopeVar }</li>
	</ul>
</body>
</html>