<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>글목록</h1>


	<table>
		<tr>
			<th>아이디</th>
			<th>제목</th>
			<th>작성일</th>
		</tr>
		<c:forEach var="article" items="${articles}">
		<tr>
			<td>${article.id}</td>
			<td>${article.title}</td>
			<td><fmt:formatDate pattern="yyyy년 MM월 dd일" value="${article.createdAt}"/></td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>