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
            <section id="content" style="min-height: 715px;">
	            <div class="row"style="margin-top: 20px;" id="productList" >
					<div class="col s3 m3 l3"><span style="color: #fff;">temp</span></div>	
	            	<div class="col s6 m6 l6">
						<table class="bordered">
		                    <thead>
		                      <tr>
		                        <th data-field="id">비품명</th>
		                        <th data-field="price">가격</th>
		                        <th data-field="name">등록일</th>
		                      </tr>
		                    </thead>
		                    <tbody>
		                      <tr>
		                        <td>맥심 카누 마일드</td>
		                        <td>3000원</td>
		                        <td>2017.01.08</td>
		                      </tr>
		                      <tr>
		                        <td>맥심 카누 스위트</td>
		                        <td>3000원</td>
		                        <td>2017.01.08</td>
		                      </tr>
		                      <tr>
		                        <td>둥글레차</td>
		                        <td>6000원</td>
		                        <td>2017.02.06</td>
		                      </tr>
		                      <tr>
		                        <td>결명자차</td>
		                        <td>6000원</td>
		                        <td>2017.02.06</td>
		                      </tr>
		                      <tr>
		                        <td>핫초코</td>
		                        <td>7500원</td>
		                        <td>2017.02.07</td>
		                      </tr>
		                      <tr>
		                        <td>페퍼민트허브차</td>
		                        <td>6500원</td>
		                        <td>2017.02.08</td>
		                      </tr>
		                      <tr>
		                        <td>옥수수수염차</td>
		                        <td>5000원</td>
		                        <td>2017.02.09</td>
		                      </tr>
		                    </tbody>
		                 </table>
	            	</div>
	            	<div class="col s3 m3 l3"><span style="color: #fff;">temp</span></div>
	            </div>
	            <div>
	            <div class="row">
	            	<div class="col s3 m3 l3"><span style="color: #fff;">temp</span></div>
	            	<div class="col s6 m6 l6">
	            		<a class="btn-floating btn-large waves-effect waves-light right "><i class="material-icons right">add</i></a>
	            	</div>
	            	<div class="col s3 m3 l3"><span style="color: #fff;">temp</span></div>
	            </div>
				<!-- 메인화면 -->
             <%--  <div id="products" class="row" style="position: relative; height: 1125.45px;" id="productCardList">
                <div class="product-sizer"></div>
                
                <div class="product" style="position: absolute; left: 0px; top: 0px;">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <a href="#" class="btn-floating btn-large btn-price waves-effect waves-light  pink accent-2">3000원</a>
                            <a href="#"><img src="${pageContext.request.contextPath }/images/productImg/KANU.jpg" alt="product-img">
                            </a>
                        </div>

                        <div class="card-content">

                            <div class="row">
                                <div class="col s8">
                                	
                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">Maxim KANU</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="product" style="position: absolute; left: 319px; top: 0px;">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <a href="#" class="btn-floating btn-large btn-price waves-effect waves-light  pink accent-2">5000원</a>
                            <a href="#"><img src="${pageContext.request.contextPath }/images/productImg/OKSUSU.jpg" alt="product-img">
                            </a>
                        </div>
                        <div class="card-content">

                            <div class="row">
                                <div class="col s8">
                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">옥수수 수염차</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="product" style="position: absolute; left: 639px; top: 0px;">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <a href="#" class="btn-floating btn-large btn-price waves-effect waves-light  pink accent-2">6000원</a>
                            

                            <a href="#"><img src="${pageContext.request.contextPath }/images/productImg/DUNG.jpg" alt="product-img">
                            </a>
                        </div>
                        <div class="card-content">

                            <div class="row">
                                <div class="col s8">
                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">둥글레차</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="product" style="position: absolute; left: 958px; top: 0px;">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <a href="#" class="btn-floating btn-large btn-price waves-effect waves-light  pink accent-2">7500원</a>
                            

                            <a href="#"><img src="${pageContext.request.contextPath }/images/productImg/HOT.jpg" alt="product-img">
                            </a>
                        </div>
                        <div class="card-content">

                            <div class="row">
                                <div class="col s8">
                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">핫초코</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <div class="product" style="position: absolute; left: 1278px; top: 0px;">
                    <div class="card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <a href="#" class="btn-floating btn-large btn-price waves-effect waves-light  pink accent-2">6500원</a>
                            

                            <a href="#"><img src="${pageContext.request.contextPath }/images/productImg/PEPER.jpg" alt="product-img">
                            </a>
                        </div>
                        <div class="card-content">

                            <div class="row">
                                <div class="col s8">
                                    <p class="card-title grey-text text-darken-4"><a href="#" class="grey-text text-darken-4">페퍼민트허브차</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>yul
                </div>
            </div> --%>
            
    <!--         <div class="row">
		            	<div class="col s3 m3 l3"><span style="color: #fff;">temp</span></div>
		            	<div class="col s6 m6 l6" style="text-align: center;">
		            		<a class="waves-effect waves-light  btn">List</a>
		            		<a class="waves-effect waves-light  btn" style="margin-right: 10px;">Card</a>
		            	</div>
		            	<div class="col s3 m3 l3"><span style="color: #fff;">temp</span></div>
	            	</div> -->
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
    <script type="text/javascript">
    $(function(){
    	
    	
    });
    </script>
</body>

</html>