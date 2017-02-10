<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head></head>
<body>
	<div style="width: 100%;">
		
		<div id="container" style="height: 60%; border: solid 1px;">
			<table class="tbContainer">
			<thead class=tbhead>
				<tr>
					<th>결과</th>
					<th>날짜</th>
				</tr>
			</thead>
			<tbody>	
			<c:if test="${list != null }">
				<c:forEach items="${list }" var="list" varStatus="status">
						<tr>
							  <td>${list.vs_result }</td>
							<td>${list.reg_date }</td>
						</tr>
				</c:forEach>
			</c:if>
			<c:if test="${list == null }">
				<tr>
					<td colspan="5">게임한 기록이 없습니다.</td>
				</tr>				
			</c:if>
			</tbody>
			</table>
		<div id="pageNavigation" align="center" class="pagination">
		<c:if test="${totalPage == 1 }">
			<a>${totalPage }</a>
		</c:if>
		<c:if test="${ totalPage > 1 }">
		<c:set var="totalpage" value="${totalPage}"/>
		<c:set var="currentpage" value="${currentPage}"/>
			<c:forEach begin="1" end="${totalpage }" var="i">
				<c:if test="${i == currentpage }">
					<a href="${pageContext.request.contextPath}/history?page=${i}" class="pageNo"><strong>${i}</strong></a>
				</c:if>
				<c:if test="${i != currentpage }">
				<a href="${pageContext.request.contextPath}/history?page=${i}" class="pageNo">${i}</a>
				</c:if>
			</c:forEach>
		</c:if>
		
		</div>
		</div>
	</div>
</body>
</html>