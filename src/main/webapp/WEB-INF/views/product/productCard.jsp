<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/htmlHead.jsp" flush="false"/>


<body>
    <!-- Start Page Loading -->

    <!-- End -->

	<jsp:include page="../layout/header.jsp" flush="false"/> 

    <div id="main">
        <div class="wrapper">

          <jsp:include page="../layout/menu.jsp" flush="false"/>
     <section id="content" style="min-height: 715px;">
     
                 
            <!-- add Modal -->
            <jsp:include page="../modal/addProductModal.jsp" flush="false"/>
            <!-- edit Modal -->
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
                       	<form method="get" action="${pageContext.request.contextPath }/product/card" >
	                       	<input class="input-field col s10 m10 l10" type="text" placeholder="비품명" style="margin-left: 0px;"  name="name">
	                      	<i class="material-icons  right" style="padding-top: 15px; margin-left: 0px; cursor: pointer;">search</i> 
                       	</form>
                      
						<div class="select-wrapper initialized" style="margin-right: 20px;">
							<span class="caret">▼</span> 
							<select class="initialized" id="type" onchange="getCards()">
								<option value="" disabled="disabled">분류</option>
								<option value="0">식.음료</option>
								<option value="1">생활용품</option>
								<option value="1">사무용품</option>
								<option value="3">기타</option>
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


			<div class="row" style="margin-top: 20px;">
			<c:if test="${productList !=null }">
				<c:forEach  items="${productList }" var="list" >
					<div class="col s12 m6 l3">
						<div class="product" style="width: 100%;">
							<div class="card">
								<div class="card-image waves-effect waves-block waves-light">
									<a href="#" class="btn-floating btn-large btn-price waves-effect waves-light  pink accent-2">${list.epPrice }원</a>
									<a onclick="showEditModal(${list.epId});">
										<i class="material-icons right" style="position: absolute; z-index: 1; top: 5px; left: 0px; min-height: 100%; margin-left: 83%; text-decoration: none; color: black">border_color</i>
									</a>
									<a href="#">
										<i class="material-icons right" style=" position: absolute; z-index: 1; top: 5px; left: 20px; min-height: 100%; margin-left: 83%; text-decoration: none; color: black" onclick="removeProduct(${list.epId});">highlight_off</i>
									</a>
									<a href="${pageContext.request.contextPath }/product/view">
									<c:if test="${list.realNm != null && list.realNm != '' }">
<%-- 										<img src="${list.filePath }/${list.realNm}" > --%>
												<img alt="" src="${pageContext.request.contextPath }/product/img?fileId=${list.fileId}">
									</c:if>
									<c:if test="${list.realNm == null || list.realNm == '' }">
										<img src="${pageContext.request.contextPath }/images/productImg/tempImg.jpg" >
									</c:if>
									</a> 
								</div>
								<div class="card-content">
									<div class="row">
										<div class="col s8">
											<p class="card-title grey-text text-darken-4">
												<a href="#" class="grey-text text-darken-4">${list.epNm }</a>
											</p>
										</div>
									</div>
								</div>
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
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/script/product.js"></script>
</body>

</html>