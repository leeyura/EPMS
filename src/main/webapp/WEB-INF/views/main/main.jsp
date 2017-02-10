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

    <!-- START MAIN -->
    <div id="main">
        <!-- START WRAPPER -->
        <div class="wrapper">

            <!-- START LEFT SIDEBAR NAV-->
            <jsp:include page="../layout/menu.jsp" flush="false"/>
			<!--@@@@@@@ 메뉴입니다!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!@@@@@@@@@@@@@@@@@ -->           
            <!-- END LEFT SIDEBAR NAV-->

            <!-- START CONTENT -->
            <section id="content" >
				
				<!-- 메인화면 -->
               <div id="card-widgets" style="min-height: 739px;">
                        <div class="row">
                              <div class="col s12 m6 l4">
									<h1>Main</h1>
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