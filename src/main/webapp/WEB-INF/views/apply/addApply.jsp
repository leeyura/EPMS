<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/htmlHead.jsp" flush="false" />


<body>
	<jsp:include page="../layout/header.jsp" flush="false" />

	<div id="main">
		<div class="wrapper"
			style="background-color: mintcream; height: 710px;">

			<jsp:include page="../layout/menu.jsp" flush="false" />
			<section id="content">

				<!-- 메인화면 -->
				<div id="card-widgets" style="padding-top: 120px; padding-bottom: 120px;">

					<div id="epRegister-page" class="row">
						<div class="col s12 m4 4">
							<span style="color: mintcream;">s12 m4</span>
						</div>
						<div class="col s12 m4 l4 card-panel">
							<form id="applyFrm" method="post" action="${pageContext.request.contextPath}/apply/addApply">
								<div class="row">
									<div class="input-field col s12 center">
										<h4>비품신청</h4>
										<a href="#" id="backBtn"> <i class="material-icons right" style="position: absolute; z-index: 1; top: 5px; left: 0px; min-height: 100%; margin-left: 90%; text-decoration: none; color: black">highlight_off</i>
										</a>
									</div>
								</div>
								<div class="row margin">
									<div class="input-field col s12">
										<div class="select-wrapper initialized">
											<span class="caret">▼</span>
											 <select class="initialized" onchange="getProductList()" id="type" name="type">
												<option value="">비품분류</option>
												<option value="0">식.음료</option>
												<option value="1">생활용품</option>
												<option value="2">사무용품</option>
												<option value="3">기타</option>
											</select>
										</div>
									</div>
								</div>
								<div class="row margin" id="productDivSelect">
									<div class="input-field col s12" id="productDiv">
										<div class="select-wrapper">
											<span class="caret">▼</span> 
											<select class="initialized" id="epNm" name="epNm">
												<option value="">비품명</option>
											</select>
										</div>
									</div>
								</div>
								<div class="row margin">
									<div class="input-field col s12">
										<input id="epCnt" type="text" placeholder="비품신청수량" name="epCnt">
										<input type="hidden" id="epPrice" value="" name="epPrice">
									</div>
								</div>

								<div class="row">
									<div class="input-field col s12">
										<a id="addBtn"
											class="btn waves-effect waves-light col s12">신청하기</a>
									</div>

								</div>
							</form>
						</div>
						<div class="col s12 m4 l4">
							<span style="color: mintcream;">s12 m4</span>
						</div>
					</div>
				</div>
			</section>

		</div>
		<!-- END WRAPPER -->
	</div>
	<!-- END MAIN -->
	<!-- START FOOTER -->
	<jsp:include page="../layout/footer.jsp" flush="false" />
	<!-- END FOOTER -->
	<!-- ================================================
    Scripts
    ================================================ -->
	<jsp:include page="../common/common.jsp" flush="false" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/script/apply.js"></script>
    <script type="text/javascript">
    $(function(){
    	$('#backBtn').on('click', function(){
    		history.go(-1);
    	});
    });
    </script>
</body>

</html>