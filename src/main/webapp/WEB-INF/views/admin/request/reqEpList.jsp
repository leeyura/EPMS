<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../../layout/htmlHead.jsp" flush="false"/>


<body>

	<jsp:include page="../../layout/header.jsp" flush="false"/> 

    <div id="main">
        <div class="wrapper">

            <jsp:include page="../../layout/menu.jsp" flush="false"/>
            <section id="content">
            	
  				<div id="input-select" class="row" style="margin-bottom: 0px;">
					<div class="col s1 m1 l1">
						<span style="color: #fff;">DAIMS_EPMS</span>
					</div>
					
					<div class="col s2 m2 l2" style="padding-top: 20px;">
						<div class="col s12 m12 l12"><span style="color: #fff;">DAIMS_EPMS</span></div>
					</div>

					<div class="col s7 m7 l7" style="padding-top: 20px;">
						<div class="col s2 m2 l2 right" style="padding-top: 35px;">
						    <a href="${pageContext.request.contextPath }/admin/reqEpList" style="padding-top: 15px;">
						      <i class="material-icons">menu</i>
						    </a> 
						    <a href="${pageContext.request.contextPath }/admin/reqEpCard" style="padding-top: 15px;">
						      <i class="material-icons">apps</i>
						    </a>
					  	</div>
						<div class="col s2 m2 l2 right">
							<label>상태</label>
							<div class="select-wrapper initialized">
								<!-- <span class="caret">▼</span>  -->
								<select class="initialized" onchange="getApplyList()" id="state">
									<option value="" >상태</option>
									<option value="0" <c:if test="${state eq '0' }">selected</c:if>>대기중</option>
									<option value="1" <c:if test="${state eq '1' }">selected</c:if>>승인</option>
									<option value="2" <c:if test="${state eq '2' }">selected</c:if>>반려</option>
								</select>
							</div>
						</div>
						<div class="col s2 m2 l2 right">
							<label>신청월</label>
							<div class="select-wrapper initialized">
								<!-- <span class="caret">▼</span> -->
								 <select class="initialized" onchange="getApplyList()" id="mt">
<!-- 									<option value="" disabled="disabled">신청월</option> -->
									<option value="" >신청월</option>
									<c:forEach begin="1" end="12" varStatus="status">
									<c:set value="${status.count }" var="cnt"/>
										<c:if test="${cnt < 10 }">
											<option value="0${cnt }" <c:if test="${mt eq  cnt }" >selected</c:if>>${cnt }월</option>
										</c:if>
										<c:if test="${cnt >= 10 }">
											<option value="${cnt }" <c:if test="${mt eq  cnt }" >selected</c:if>>${cnt }월</option>
										</c:if>
									</c:forEach>
									
								</select>
							</div>
						</div>
					</div>

            		<div class="col s2 m2 l2">
            			<span style="color: #fff">DAIMS_EMPS</span>
            		</div> 
            		
				</div>
            
				<!-- 메인화면 -->
           		<div class="row" style="min-height: 597px;">
					<div class="col s1 m1 l1"><span style="color: #fff;">DAIMS_EPMS</span></div>
					<div class="col s10 m10 l10">
						<table class="bordered">
				<%-- 		<colgroup>
				            <col width="20%" />
				            <col width="5%" />
				            <col width="10%" />
				            <col width="5%" />
				            <col width="20%" />
				            <col width="*" />
				            <col width="*" />
				        </colgroup>

						 --%>
							<thead>
								<tr>
									<th>비품명</th>
									<th>분류</th>
									<th>가격</th>
									<th>수량</th>
									<th>요청일</th>
									<th>상태</th>
									<th>반려사유</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${reqList !=null }">
									<c:forEach items="${reqList }" var="list" varStatus="status">
									<c:set value="${list.epState }" var="epState"/>
									<c:set value="${list.epType }" var="epType"/>
										<tr>
										<td width="20%">${list.epNm }</td>
										<c:if test="${epType == 0 }">
												<td width="8%">식.음료</td>
											</c:if>
											<c:if test="${epType == 1 }">
												<td width="8%">생활용품</td>
											</c:if>
											<c:if test="${epType == 2 }">
												<td width="8%">사무용품</td>
											</c:if>
											<c:if test="${epType == 3 }">
												<td width="8%">기타</td>
											</c:if>
										<td  width="10%" style="padding-left: 10px;">${list.epTtPrice }원</td>
										<td  width="5%">${list.epCnt }개</td>
										<td  width="20%">${list.insertDt }</td>
										<c:if test="${epState eq '0' }">
										<td width="10%">
											<div class="select-wrapper initialized" style="max-height: 35px;">
												<select class="initialized" onchange="listUpdateState(${list.epId })" id="state${list.epId }">
													<option value="0" <c:if test="${epState eq '0' }">selected</c:if>>대기중</option>
													<option value="1" <c:if test="${epState eq '1' }">selected</c:if>>승인</option>
													<option value="2" <c:if test="${epState eq '2' }">selected</c:if>>반려</option>
													<option value="3" <c:if test="${epState eq '3' }">selected</c:if>>취소</option>
												</select>
											</div>
										</td>
										</c:if>
										<c:if test="${epState eq '1' }">
										<td width="10%">
											<div class="select-wrapper initialized" style="max-height: 35px;">
												<select class="initialized" disabled="disabled">
													<option value="0"   <c:if test="${epState eq '0' }">selected</c:if>>대기중</option>
													<option value="1"   <c:if test="${epState eq '1' }">selected</c:if>>승인</option>
													<option value="2"   <c:if test="${epState eq '2' }">selected</c:if>>반려</option>
													<option value="3"   <c:if test="${epState eq '3' }">selected</c:if>>취소</option>
												</select>
											</div>
										</td>
										</c:if>
										<c:if test="${epState eq '2' }">
										<td width="10%">
											<div class="select-wrapper initialized" style="max-height: 35px;">
												<select class="initialized" disabled="disabled">
													<option value="0"  <c:if test="${epState eq '0' }">selected</c:if>>대기중</option>
													<option value="1" <c:if test="${epState eq '1' }">selected</c:if>>승인</option>
													<option value="2" <c:if test="${epState eq '2' }">selected</c:if>>반려</option>
													<option value="3" <c:if test="${epState eq '3' }">selected</c:if>>취소</option>
												</select>
											</div>
										</td>
										</c:if>
										<c:if test="${epState eq '3' }">
										<td width="10%">
											<div class="select-wrapper initialized" style="max-height: 35px;">
												<select class="initialized" disabled="disabled">
													<option value="0"<c:if test="${epState eq '0' }">selected</c:if>>대기중</option>
													<option value="1"   <c:if test="${epState eq '1' }">selected</c:if>>승인</option>
													<option value="2"  <c:if test="${epState eq '2' }">selected</c:if>>반려</option>
													<option value="3"  <c:if test="${epState eq '3' }">selected</c:if>>취소</option>
												</select>
											</div>
										</td>
										</c:if>
										<td style="padding-left: 10px;">${list.cause }</td>
										</tr>
									</c:forEach>
								</c:if>
								<c:if test="${reqList == '[]' || reqList == null }">
								<tr>
									<td colspan="7">요청 비품 목록이 없습니다.</td>
								</tr>
								</c:if>
							</tbody>
						</table>
					</div>
					<div class="col s1 m1 l1"><span style="color: #fff;">DAIMS_EPMS</span></div>            		
				</div>
            </section>

        </div>
        <!-- END WRAPPER -->
    </div>
    <!-- END MAIN -->
    <!-- START FOOTER -->
	<jsp:include page="../../layout/footer.jsp" flush="false"/> 
    <!-- END FOOTER -->
    <!-- ================================================
    Scripts
    ================================================ -->
    <jsp:include page="../../common/common.jsp" flush="false"/>
     <script type="text/javascript" src="${pageContext.request.contextPath}/js/script/req.js"></script>
</body>

</html>