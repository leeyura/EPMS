<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/htmlHead.jsp" flush="false"/>


<body>
	<jsp:include page="../layout/header.jsp" flush="false"/> 

    <div id="main">
        <div class="wrapper">

            <jsp:include page="../layout/menu.jsp" flush="false"/>
            <section id="content" style="min-height: 647px;">
            
            <!-- add Modal -->
            <jsp:include page="../modal/addProductModal.jsp" flush="false"/>
            <jsp:include page="../modal/editProductModal.jsp" flush="false"/>
			<!-- modal 끝 -->
            
	            <div id="input-select" class="row" style="margin-bottom: 0px;">
					<div class="col s1 m1 l1">
						<span style="color: #fff;">DAIMS_EPMS</span>
					</div>
					<div class="col s2 m2 l2" style="padding-right: 0px; padding-top: 20px;">
						<div class="col s3 m3 l3"><span style="color: #fff;">DAIMS_EPMS</span></div>
							<div class="col s6 m6 l6">
								<a class="btn-floating btn-large waves-effect waves-light modal-trigger" href="#addModal">
									<i class="material-icons">add</i>
								</a>
							</div>
					</div>
					<div class="col s6 m6 l6 right" style="display: flex;padding-top: 20px;padding-left: 0px;padding-bottom: -5;">
                       	<form method="get" action="${pageContext.request.contextPath }/product/list" >
	                       	<input class="input-field col s10 m10 l10" type="text" placeholder="비품명" style="margin-left: 0px;"  name="name" value="${name }">
	                      	<i class="material-icons  right" style="padding-top: 15px; margin-left: 0px; cursor: pointer;">search</i> 
                       	</form>
                      	
						<div class="select-wrapper initialized" style="margin-right: 20px;">
							<span class="caret">▼</span> 
							<select class="initialized" id="type" onchange="getList()">
								<option value="" selected="selected">분류</option>
								<option value="0" <c:if test="${type eq '0' }">selected</c:if>>식.음료</option>
								<option value="1" <c:if test="${type eq '1' }">selected</c:if>>생활용품</option>
								<option value="2" <c:if test="${type eq '2' }">selected</c:if>>사무용품</option>
								<option value="3" <c:if test="${type eq '3' }">selected</c:if>>기타</option>
							</select>
						</div>
						
						<a href="${pageContext.request.contextPath }/product/list" style="padding-top: 15px;">
							<i class="material-icons">menu</i>
						</a> 
						<a href="${pageContext.request.contextPath }/product/card" style="padding-top: 15px;">
							<i class="material-icons">apps</i>
						</a>
	                </div>
				</div>
				
				<!-- main -->
				<div class="row" id="productList" style="margin-top: 20px;height: 500px;">
					<div class="col s1 m1 l1"><span style="color: #fff;">DAIMS_EPMS</span></div> 	
	            	<div class="col s10 m10 l10">
						<table class="bordered">
		                    <thead>
		                      <tr>
		                        <th data-field="epName">비품명</th>
		                        <th data-field="epType">분류</th>
		                        <th data-field="epPrice">가격</th>
		                        <th data-field="insertDate">등록일</th>
		                        <th data-field="updateDate">수정일</th>
		                        <th data-field="udtNm">최종수정자</th>
		                        <th data-field="udtId">수정</th>
		                        <th data-field="delId">삭제</th>
		                      </tr>
		                    </thead>
		                    <tbody>
		                    	<c:if test="${productList != null }">
									<c:forEach items="${productList}" var="list" varStatus="status">
										<tr>
											<td>${list.epNm }</td>
											<c:set value="${list.epType }" var="type"/>
											<c:if test="${type == 0 }">
												<td>식.음료</td>
											</c:if>
											<c:if test="${type == 1 }">
												<td>생활용품</td>
											</c:if>
											<c:if test="${type == 2 }">
												<td>사무용품</td>
											</c:if>
											<c:if test="${type == 3 }">
												<td>기타</td>
											</c:if>
											<td>${list.epPrice }원</td>
											<td>${list.insertDt }</td>
											<c:if test="${list.updateDt != null }">
												<td>${list.updateDt }</td>
											</c:if>
											<c:if test="${list.updateDt == null }">
												<td>-</td>
											</c:if>
											<td>${list.memNm }</td>
											<td>
						                        	<i class="material-icons" style="padding-top: 15px; margin-left: 0px; cursor: pointer;" onclick="updateProduct(${list.epId});">border_color</i>
					                          </td>
					                          <td>
						                          <i class="material-icons" style="padding-top: 15px; margin-left: 0px; cursor: pointer;" onclick="removeProduct(${list.epId});">delete_forever</i>
					                          </td>
										</tr>
									</c:forEach>		                    	
		                    	</c:if>
		                    	<c:if test="${productList == '[]'  || productList == null}">
		                    		<tr>
		                    			<td colspan="8"> 비품목록이 없습니다. 비품을 등록해주세요.</td>
		                    		</tr>
		                    	</c:if>
		                    </tbody>
		                 </table>
	            	</div>
	            	<div class=""><span style="color: #fff;">DAIMS_EMPS</span></div> 	
	            </div>
		        <div id="pageNavigation" align="center" class="pagination">
				<c:if test="${totalPage == 1 }">
					<a>${totalPage }</a>
				</c:if>
				<c:if test="${ totalPage > 1 }">
				<c:set var="totalpage" value="${totalPage}"/>
				<c:set var="currentpage" value="${currentPage}"/>
					<c:forEach begin="1" end="${totalpage }" var="i">
						<c:if test="${i == currentpage }">
							<a href="${pageContext.request.contextPath}/product/list?page=${i}" class="pageNo"><strong>${i}</strong></a>
						</c:if>
						<c:if test="${i != currentpage }">
						<a href="${pageContext.request.contextPath}/product/list?page=${i}" class="pageNo">${i}</a>
						</c:if>
					</c:forEach>
				</c:if>
				</div>
            </section>
        </div>
        <!-- END WRAPPER -->
    </div>
    <!-- END MAIN -->
    <!-- START FOOTER -->
	<jsp:include page="../layout/footer.jsp" flush="false"/> 
    <!-- END FOOTER -->
    <!-- ================================================
    Scripts
    ================================================ -->
    <jsp:include page="../common/common.jsp" flush="false"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/script/product.js"></script>
</body>

</html>