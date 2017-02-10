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
				
				<!-- 메인화면 -->
                <div id="products" class="row" style="position: relative; min-height: 999px;">
                <div class="product-sizer"></div>
                
                <div class="product" style="position: absolute; left: 25px; top: 0px;">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <a href="#" class="btn-floating btn-large btn-price waves-effect waves-light  pink accent-2">30000원</a>
                            <a href="#"><img src="${pageContext.request.contextPath }/images/productImg/KANU.jpg" alt="product-img">
                            </a>
                        </div>
                        <ul class="card-action-buttons">
		                    <li><a class="btn-floating waves-effect waves-light green accent-4"><i class="material-icons">hourglass_empty</i></a>
                            </li>
                            <li><a class="btn-floating waves-effect waves-light red accent-2"><i class="material-icons">highlight_off</i></a>
                            </li>
                           <!--  <li><a class="btn-floating waves-effect waves-light light-blue"><i class="mdi-action-info activator"></i></a>
                            </li>  -->
                        </ul>
<!--      		관리자, 승인, 반려         
			          <ul class="card-action-buttons">
                            <li><a class="btn-floating waves-effect waves-light red accent-2"><i class="mdi-action-favorite"></i></a>
                            </li>
                            <li><a class="btn-floating waves-effect waves-light light-blue"><i class="mdi-action-info activator"></i></a>
                            </li> 
                        </ul> -->
                        <div class="card-content">

                            <div class="row">
                                <div class="col s8">
                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">Maxim KANU</a>
                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청 수량 : 10</a>
                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청자 : 이유라</a>
                                    </p>
                                </div>
          <!--                       <div class="col s4 no-padding">
                                    <a href=""></a><img src="images/amazon.jpg" alt="amazon" class="responsive-img">
                                    
                                </div> -->
                            </div>
                        </div>
<!--                         <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4"><i class="mdi-navigation-close right"></i> Apple MacBook Pro A1278 13"</span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div> -->
                    </div>
                </div>
                
                <div class="product" style="position: absolute; left: 344px; top: 0px;">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <a href="#" class="btn-floating btn-large btn-price waves-effect waves-light  pink accent-2">15000원</a>
                            <a href="#"><img src="${pageContext.request.contextPath }/images/productImg/OKSUSU.jpg" alt="product-img">
                            </a>
                        </div>
                        <ul class="card-action-buttons">
		                    <li><a class="btn-floating waves-effect waves-light green accent-4"><i class="material-icons">hourglass_empty</i></a>
                            </li>
                            <li><a class="btn-floating waves-effect waves-light red accent-2"><i class="material-icons">highlight_off</i></a>
                            </li>
                           <!--  <li><a class="btn-floating waves-effect waves-light light-blue"><i class="mdi-action-info activator"></i></a>
                            </li>  -->
                        </ul>
<!--      		관리자, 승인, 반려         
			          <ul class="card-action-buttons">
                            <li><a class="btn-floating waves-effect waves-light red accent-2"><i class="mdi-action-favorite"></i></a>
                            </li>
                            <li><a class="btn-floating waves-effect waves-light light-blue"><i class="mdi-action-info activator"></i></a>
                            </li> 
                        </ul> -->
                        <div class="card-content">

                            <div class="row">
                                <div class="col s8">
                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">옥수수 수염차</a>
                                     <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청 수량 : 3</a>
                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청자 : 홀길동</a>
                                    </p>
                                </div>
          <!--                       <div class="col s4 no-padding">
                                    <a href=""></a><img src="images/amazon.jpg" alt="amazon" class="responsive-img">
                                    
                                </div> -->
                            </div>
                        </div>
<!--                         <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4"><i class="mdi-navigation-close right"></i> Apple MacBook Pro A1278 13"</span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div> -->
                    </div>
                </div>
                
                <div class="product" style="position: absolute; left: 664px; top: 0px;">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <a href="#" class="btn-floating btn-large btn-price waves-effect waves-light  pink accent-2">6000원</a>
                            

                            <a href="#"><img src="${pageContext.request.contextPath }/images/productImg/DUNG.jpg" alt="product-img">
                            </a>
                        </div>
                        <ul class="card-action-buttons">
		                    <li><a class="btn-floating waves-effect waves-light green accent-4"><i class="material-icons">hourglass_empty</i></a>
                            </li>
                            <li><a class="btn-floating waves-effect waves-light red accent-2"><i class="material-icons">highlight_off</i></a>
                            </li>
                           <!--  <li><a class="btn-floating waves-effect waves-light light-blue"><i class="mdi-action-info activator"></i></a>
                            </li>  -->
                        </ul>
<!--      		관리자, 승인, 반려         
			          <ul class="card-action-buttons">
                            <li><a class="btn-floating waves-effect waves-light red accent-2"><i class="mdi-action-favorite"></i></a>
                            </li>
                            <li><a class="btn-floating waves-effect waves-light light-blue"><i class="mdi-action-info activator"></i></a>
                            </li> 
                        </ul> -->
                        <div class="card-content">

                            <div class="row">
                                <div class="col s8">
                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">둥글레차</a>
                                     <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청 수량 : 1</a>
                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청자 : 전우치</a>
                                    </p>
                                </div>
          <!--                       <div class="col s4 no-padding">
                                    <a href=""></a><img src="images/amazon.jpg" alt="amazon" class="responsive-img">
                                    
                                </div> -->
                            </div>
                        </div>
<!--                         <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4"><i class="mdi-navigation-close right"></i> Apple MacBook Pro A1278 13"</span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
                        </div> -->
                    </div>
                </div>
                
                <div class="product" style="position: absolute; left: 983px; top: 0px;">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <a href="#" class="btn-floating btn-large btn-price waves-effect waves-light  pink accent-2">15000원</a>
                            

                            <a href="#"><img src="${pageContext.request.contextPath }/images/productImg/HOT.jpg" alt="product-img">
                            </a>
                        </div>
                        <ul class="card-action-buttons">
		                    <li><a class="btn-floating waves-effect waves-light red accent-2"><i class="material-icons">history</i></a>
                            </li>
                            <li><a class="btn-floating waves-effect waves-light red accent-2"><i class="material-icons">highlight_off</i></a>
                            </li>
                            <li><a class="btn-floating waves-effect waves-light light-blue"><i class="material-icons activator">info_outline</i></a>
                            </li> 
                           <!--  <li><a class="btn-floating waves-effect waves-light light-blue"><i class="mdi-action-info activator"></i></a>
                            </li>  -->
                        </ul>
<!--      		관리자, 승인, 반려         
			          <ul class="card-action-buttons">
                            <li><a class="btn-floating waves-effect waves-light red accent-2"><i class="mdi-action-favorite"></i></a>
                            </li>
                            <li><a class="btn-floating waves-effect waves-light light-blue"><i class="mdi-action-info activator"></i></a>
                            </li> 
                        </ul> -->
                        <div class="card-content">

                            <div class="row">
                                <div class="col s8">
                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">핫초코</a>
                                     <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청 수량 : 2</a>
                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청자 : 이유라</a>
                                    </p>
                                </div>
          <!--                       <div class="col s4 no-padding">
                                    <a href=""></a><img src="images/amazon.jpg" alt="amazon" class="responsive-img">
                                    
                                </div> -->
                            </div>
                        </div>
                         <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4" style="border-bottom: solid 1px black;"><i class="material-icons right">highlight_off</i>반려사유</span>
                            <p>아직 많이 남아있으며 먹는사람이 많지않음.</p>
                        </div> 
                    </div>
                </div>
                
                
                <div class="product" style="position: absolute; left: 1303px; top: 0px;">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <a href="#" class="btn-floating btn-large btn-price waves-effect waves-light  pink accent-2">6500원</a>
                            

                            <a href="#"><img src="${pageContext.request.contextPath }/images/productImg/PEPER.jpg" alt="product-img">
                            </a>
                        </div>
                        <ul class="card-action-buttons">
                           <li><a class="btn-floating waves-effect waves-light light-blue"><i class="material-icons">hourglass_full</i></a>
                            </li>
                            <li><a class="btn-floating waves-effect waves-light red accent-2"><i class="material-icons">highlight_off</i></a>
                            </li>
                        </ul>
<!--      		관리자, 승인, 반려         
			          <ul class="card-action-buttons">
                            <li><a class="btn-floating waves-effect waves-light red accent-2"><i class="mdi-action-favorite"></i></a>
                            </li>
                            <li><a class="btn-floating waves-effect waves-light light-blue"><i class="mdi-action-info activator"></i></a>
                            </li> 
                        </ul> -->
                        <div class="card-content">

                            <div class="row">
                                <div class="col s8">
                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">페퍼민트허브차</a>
                                     <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청 수량 : 1</a>
                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">신청자 : 김허브</a>
                                    </p>
                                </div>
          <!--                       <div class="col s4 no-padding">
                                    <a href=""></a><img src="images/amazon.jpg" alt="amazon" class="responsive-img">
                                    
                                </div> -->
                            </div>
                        </div>
                         <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4"><i class="mdi-navigation-close right"></i> Apple MacBook Pro A1278 13"</span>
                            <p>Here is some more information about this product that is only revealed once clicked on.</p>
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