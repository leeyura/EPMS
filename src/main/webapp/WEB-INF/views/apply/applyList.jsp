<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/htmlHead.jsp" flush="false"/>


<body>

	<jsp:include page="../layout/header.jsp" flush="false"/> 

    <div id="main">
        <div class="wrapper">

            <jsp:include page="../layout/menu.jsp" flush="false"/>
            <section id="content">
            	<!--  +  and select  -->
            	<jsp:include page="../modal/addApplyModal.jsp" flush="false"/>
            	<jsp:include page="../modal/editApplyModal.jsp" flush="false"/>
            	
  				<div id="input-select" class="row" style="margin-bottom: 0px;">
					<div class="col s1 m1 l1">
						<span style="color: ghostwhite;">DAIMS_EPMS</span>
					</div>
					
					<div class="col s2 m2 l2" style="padding-top: 20px;">
						<div class="col s3 m3 l3"><span style="color: ghostwhite;">DAIMS_EPMS</span></div>
							<div class="col s6 m6 l6">
								<a class="btn-floating btn-large waves-effect waves-light modal-trigger" href="#addApplyModal">
									<i class="material-icons">add</i>
								</a>
							</div>
						<div class="col s3 m3 l3"><span style="color: ghostwhite;">DAIMS_EPMS</span></div>
					</div>

					<div class="col s7 m7 l7" style="padding-top: 20px;">
						<div class="col s2 m2 l2 right">
							<label>상태</label>
							<div class="select-wrapper initialized">
								<!-- <span class="caret">▼</span>  -->
								<select class="initialized" onchange="getApplyList()" id="state">
									<option value="" >전체</option>
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
									<option value="" >전체월</option>
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
            			<c:if test="${applyList != null }">
            				<c:forEach items="${applyList }" var="list" varStatus="status">
								<div class="col s12 m6 l3">
									<div class="product" style="width: 100%;">
					                    <div class="card">
					                        <div class="card-image waves-effect waves-block waves-light">
					                            <a href="#" class="btn-floating btn-large btn-price waves-effect waves-light  pink accent-2"><c:out value="${list.epTtPrice }"/>원</a>
<%-- 					                            <a href="${pageContext.request.contextPath }/apply/view"> --%>
					                            	<c:if test="${list.fileId !=null && list.fileId != '' }">
					                            		<img alt="product-img" src="${pageContext.request.contextPath }/product/img?fileId=${list.fileId}">
					                            	</c:if>
					                            	<c:if test="${list.fileId ==null || list.fileId == '' }">
					                            		<img src="${pageContext.request.contextPath }/images/productImg/tempImg.jpg" >
					                            	</c:if>
					                            <!-- </a> -->
					                        </div>
					                        <c:set value="${list.epState }" var="epState"/>
					                        <c:if test="${epState eq 0 }">
						                        <ul class="card-action-buttons" style="padding-top: 30px;">
								                    <li><a class="btn-floating waves-effect waves-light #424242 grey darken-3"  title="수정" onclick="editApply(${list.epId}, ${list.insertDt });"><i class="material-icons">border_color</i></a></li>
								                    <li><a class="btn-floating waves-effect waves-light green accent-4"  title="대기중"><i class="material-icons">hourglass_empty</i></a></li>
						                            <li><a class="btn-floating waves-effect waves-light red accent-2" title="취소" onclick="cancelApply(${list.epId});"><i class="material-icons" >highlight_off</i></a></li>
						                        </ul>
						                        <div class="card-content">
						                            <div class="row" style="">
						                                <div class="col s8">
						                                    <p class="card-title grey-text text-darken-4" style="font-size: 14px;"><a href="#" class="grey-text text-darken-4"><c:out value="${list.epNm }"/></a></p>
						                                     <p class="card-title grey-text text-darken-4" style="font-size: 14px;"><a href="#" class="grey-text text-darken-4">신청 수량 : <c:out value="${list.epCnt }"/></a></p>
						                                    <p class="card-title grey-text text-darken-4" style="font-size: 14px;"><a href="#" class="grey-text text-darken-4">신청자 : <c:out value="${list.memNm }"/> </a></p>
						                                    <c:if test="${list.udtNm != null }">
							                                    <p class="card-title grey-text text-darken-4" style="font-size: 14px;"><a href="#" class="grey-text text-darken-4">수정자 : <c:out value="${list.udtNm }"/> </a></p>
						                                    </c:if>
						                                    <c:if test="${list.udtNm == null || list.udtNm == '' }">
							                                    <p class="card-title grey-text text-darken-4" style="font-size: 14px;"><a href="#" class="grey-text text-darken-4" style="color: white;">수정자 :  없음</a></p>
						                                    </c:if>
						                                </div>
						                            </div>
						                        </div>
					                        </c:if>
					                        <c:if test="${epState eq 1 }">
						                        <ul class="card-action-buttons" style="padding-top: 30px;">
								                    <li><a class="btn-floating waves-effect waves-light light-blue" title="승인"><i class="material-icons">hourglass_full</i></a></li>
						                        </ul>
						                        <div class="card-content">
						                            <div class="row">
						                                <div class="col s8">
						                                    <p class="card-title grey-text text-darken-4"  style="font-size: 14px;"><a href="#" class="grey-text text-darken-4"><c:out value="${list.epNm }"/></a></p>
						                                     <p class="card-title grey-text text-darken-4"  style="font-size: 14px;"><a href="#" class="grey-text text-darken-4">신청 수량 : <c:out value="${list.epCnt }"/></a></p>
						                                    <p class="card-title grey-text text-darken-4"  style="font-size: 14px;"><a href="#" class="grey-text text-darken-4">신청자 : <c:out value="${list.memNm }"/> </a></p>
						                                    <c:if test="${list.udtNm != null }">
							                                    <p class="card-title grey-text text-darken-4"  style="font-size: 14px;"><a href="#" class="grey-text text-darken-4">수정자 : <c:out value="${list.udtNm }"/> </a></p>
						                                    </c:if>
						                                    <c:if test="${list.udtNm == null || list.udtNm == '' }">
							                                    <p class="card-title grey-text text-darken-4"  style="font-size: 14px;"><a href="#" class="grey-text text-darken-4" style="color: white;">수정자 :  없음</a></p>
						                                    </c:if>
						                                </div>
						                            </div>
						                        </div>
					                        </c:if>
					                        <c:if test="${epState eq 2 }">
						                        <ul class="card-action-buttons" style="padding-top: 30px;">
						                           <li><a class="btn-floating waves-effect waves-light red accent-2" title="반려"><i class="material-icons" >history</i></a></li>
						                            <li><a class="btn-floating waves-effect waves-light red accent-2" title="취소" onclick="cancelApply(${list.epId});"><i class="material-icons">highlight_off</i></a></li>
						                            <li><a class="btn-floating waves-effect waves-light light-blue" title="반려사유"><i class="material-icons activator">info_outline</i></a></li>
						                        </ul>
						                        <div class="card-content">
						                            <div class="row">
						                                <div class="col s8">
						                                    <p class="card-title grey-text text-darken-4" style="font-size: 14px;"><a href="#" class="grey-text text-darken-4"><c:out value="${list.epNm }"/></a></p>
						                                     <p class="card-title grey-text text-darken-4" style="font-size: 14px;"><a href="#" class="grey-text text-darken-4">신청 수량 : <c:out value="${list.epCnt }"/></a></p>
						                                    <p class="card-title grey-text text-darken-4" style="font-size: 14px;"><a href="#" class="grey-text text-darken-4">신청자 : <c:out value="${list.memNm }"/> </a></p>
						                                    <c:if test="${list.udtNm != null }">
							                                    <p class="card-title grey-text text-darken-4" style="font-size: 14px;"><a href="#" class="grey-text text-darken-4">수정자 : <c:out value="${list.udtNm }"/> </a></p>
						                                    </c:if>
						                                    <c:if test="${list.udtNm == null || list.udtNm == '' }">
							                                    <p class="card-title grey-text text-darken-4" style="font-size: 14px;"><a href="#" class="grey-text text-darken-4" style="color: white;">수정자 :  없음 </a></p>
						                                    </c:if>
						                                </div>
						                            </div>
						                        </div>
                 			                    <div class="card-reveal">
					                           	 	<span class="card-title grey-text text-darken-4" style="border-bottom: solid 1px black;"><i class="material-icons right">highlight_off</i>반려사유</span>
					                            	<p> ${list.cause} </p>
					                        	</div> 
					                        </c:if>
					                    </div>
				                	</div>
								</div>
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
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/script/apply.js"></script>
</body>

</html>