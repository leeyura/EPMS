<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/htmlHead.jsp" flush="false"/>


<body>
    <!-- Start Page Loading -->
    <div id="loader-wrapper">
        <div id="loader"></div>        
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>
    <!-- End -->

	<jsp:include page="../layout/header.jsp" flush="false"/> 

    <div id="main">
        <div class="wrapper">

            <jsp:include page="../layout/menu.jsp" flush="false"/>
            <section id="content">
            	<!--  +  and select  -->
  				<div id="input-select" class="row" style="margin-bottom: 0px;">
					<div class="col s1 m1 l1">
						<span style="color: #fff;">DAIMS_EPMS</span>
					</div>
					
					<div class="col s2 m2 l2" style="padding-top: 20px;">
						<div class="col s3 m3 l3"><span style="color: #fff;">DAIMS_EPMS</span></div>
							<div class="col s6 m6 l6">
								<a class="btn-floating btn-large waves-effect waves-light " href="${pageContext.request.contextPath }/apply/addApply">
									<i class="material-icons">add</i>
								</a>
							</div>
						<div class="col s3 m3 l3"><span style="color: #fff;">DAIMS_EPMS</span></div>
					</div>

					<div class="col s7 m7 l7" style="padding-top: 20px;">
						<div class="col s2 m2 l2 right">
							<label>상태</label>
							<div class="select-wrapper initialized">
								<span class="caret">▼</span> <select class="initialized">
									<option value="" disabled="disabled">상태</option>
									<option value="1">대기중</option>
									<option value="2">승인</option>
									<option value="3">반려</option>
									<option value="4">취소</option>
								</select>
							</div>
						</div>
						<div class="col s2 m2 l2 right">
							<label>신청월</label>
							<div class="select-wrapper initialized">
								<span class="caret">▼</span> <select class="initialized">
									<option value="" disabled="disabled">신청월</option>
									<option value="1">1월</option>
									<option value="2">2월</option>
									<option value="3">3월</option>
									<option value="4">4월</option>
									<option value="5">5월</option>
									<option value="6">6월</option>
									<option value="7">7월</option>
									<option value="8">8월</option>
									<option value="9">9월</option>
									<option value="10">10월</option>
									<option value="11">11월</option>
									<option value="12">12월</option>
								</select>
							</div>
						</div>
					</div>

            		<div class="col s2 m2 l2">
            			<span style="color: #fff">DAIMS_EMPS</span>
            		</div> 
            		
				</div>
            	<!-- <div class="row" style="margin-bottom: 0px;">
            		<div class="col s1 m1 l1">
            			<span style="color: #fff">DAIMS_EMPS</span>
            		</div>
            		<div class="col s10 m10 l9">
            			<span style="float: right !important; padding-top: 10px;">반려</span>
            			<a class="btn-floating waves-effect waves-light red accent-2 right">
								<i class="material-icons">history</i>
						</a> 
						<span style="float: right !important; padding-top: 10px; margin-right: 5px;">승인</span>
						<a class="btn-floating waves-effect waves-light light-blue right" style="margin-left: 5px;">
							<i class="material-icons">hourglass_full</i>
						</a> 
						<span style="float: right !important; padding-top: 10px;">대기중</span>
						<a class="btn-floating waves-effect waves-light green accent-4 right">
							<i class="material-icons">hourglass_empty</i>
						</a> 
            		</div>
            		<div class="col s1 m1 l2">
            			<span style="color: #fff">DAIMS_EMPS</span>
            		</div>
            	</div> -->
				
				<!-- 메인화면 -->
            		<div class="row" style="min-height: 597px;">
						<div class="col s12 m6 l3">
							<div class="product" style="width: 100%; min-height: 600px;">
			                    <div class="card">
			                        <div class="card-image waves-effect waves-block waves-light">
			                            <a href="#" class="btn-floating btn-large btn-price waves-effect waves-light  pink accent-2">6500원</a>
			                            <a href="${pageContext.request.contextPath }/apply/view">
			                            	<img src="${pageContext.request.contextPath }/images/productImg/PEPER.jpg" alt="product-img">
			                            </a>
			                        </div>
			                        <ul class="card-action-buttons">
					                    <li>
					                    	<a class="btn-floating waves-effect waves-light green accent-4"  title="대기중">
					                    		<i class="material-icons">hourglass_empty</i>
					                    	</a>
			                            </li>
			                            <li>
			                            	<a class="btn-floating waves-effect waves-light red accent-2" title="취소">
			                            		<i class="material-icons" >highlight_off</i>
			                            	</a>
			                            </li>
			                        </ul>
			                        <div class="card-content">
			                            <div class="row">
			                                <div class="col s8">
			                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">페퍼민트허브차</a></p>
			                                     <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청 수량 : 1</a></p>
			                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청자 : 김허브</a></p>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
		                	</div>
						</div>

						<div class="col s12 m6 l3">
							<div class="product" style="width: 100%; min-height: 600px;">
			                    <div class="card">
			                        <div class="card-image waves-effect waves-block waves-light">
			                            <a href="#" class="btn-floating btn-large btn-price waves-effect waves-light  pink accent-2">6000원</a>
			                            <a href="#">
			                            	<img src="${pageContext.request.contextPath }/images/productImg/OKSUSU.png" alt="product-img">
			                            </a>
			                        </div>
			                        <ul class="card-action-buttons">
					                    <li>
					                    	<a class="btn-floating waves-effect waves-light light-blue" title="승인">
					                    		<i class="material-icons">hourglass_full</i>
					                    	</a>
			                            </li>
			                        </ul>
			                        <div class="card-content">
			                            <div class="row">
			                                <div class="col s8">
			                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">옥수수수염차</a></p>
			                                     <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청 수량 : 1</a></p>
			                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청자 : 옥수수</a></p>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
		                	</div>
						</div>
						
						<div class="col s12 m6 l3">
							<div class="product" style="width: 100%; min-height: 600px;">
			                    <div class="card">
			                        <div class="card-image waves-effect waves-block waves-light">
			                            <a href="#" class="btn-floating btn-large btn-price waves-effect waves-light  pink accent-2">5000원</a>
			                            <a href="#"><img src="${pageContext.request.contextPath }/images/productImg/DUNG.jpg" alt="product-img">
			                            </a>
			                        </div>
			                        <ul class="card-action-buttons">
					                    <li>
					                    	<a class="btn-floating waves-effect waves-light light-blue" title="승인">
					                    		<i class="material-icons">hourglass_full</i>
					                    	</a>
			                            </li>
			                        </ul>
			                        <div class="card-content">
			                            <div class="row">
			                                <div class="col s8">
			                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">둥글레차</a></p>
			                                     <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청 수량 : 1</a></p>
			                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청자 : 둥글레</a></p>
			                                </div>
			                            </div>
			                        </div>
			                    </div>
		                	</div>
						</div>
						
						<div class="col s12 m6 l3">
							<div class="product" style="width: 100%; min-height: 600px;">
			                    <div class="card">
			                        <div class="card-image waves-effect waves-block waves-light">
			                            <a href="#" class="btn-floating btn-large btn-price waves-effect waves-light  pink accent-2">15000원</a>
			                            <a href="#"><img src="${pageContext.request.contextPath }/images/productImg/HOT.jpg" alt="product-img">
			                            </a>
			                        </div>
			                        <ul class="card-action-buttons">
					                    <li><a class="btn-floating waves-effect waves-light red accent-2" title="반려"><i class="material-icons" >history</i></a>
			                            </li>
			                            <li><a class="btn-floating waves-effect waves-light red accent-2" title="취소"><i class="material-icons">highlight_off</i></a>
			                            </li>
			                            <li><a class="btn-floating waves-effect waves-light light-blue" title="반려사유"><i class="material-icons activator">info_outline</i></a>
			                            </li> 
			                        </ul>
			                        <div class="card-content">
			                            <div class="row">
			                                <div class="col s8">
			                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">핫초코</a>
			                                     <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청 수량 : 2</a>
			                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청자 : 이유라</a>
			                                    </p>
			                                </div>
			                            </div>
			                        </div>
			                         <div class="card-reveal">
			                            <span class="card-title grey-text text-darken-4" style="border-bottom: solid 1px black;"><i class="material-icons right">highlight_off</i>반려사유</span>
			                            <p>아직 많이 남아있으며 먹는사람이 많지않음.</p>
			                        </div> 
			                    </div>
		                	</div>
						</div>
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
</body>

</html>