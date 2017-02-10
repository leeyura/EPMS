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
               <div id="card-widgets">
                        <div class="row">
                       <c:forEach begin="1" end="6">
                              <div class="col s12 m6 l4">
                                <div id="profile-card" class="card">
                                    <div class="card-image waves-effect waves-block waves-light">
                                        <img class="activator" src="${pageContext.request.contextPath }/images/user-bg.jpg" alt="user background">
                                    </div>
                                    <div class="card-content">
                                        <img src="${pageContext.request.contextPath }/images/account.jpg" alt="" class="circle responsive-img activator card-profile-image">
                                        <a class="btn-floating activator btn-move-up waves-effect waves-light darken-2 right">
                                           <i class="material-icons">settings</i>
                                        </a>

                                        <span class="card-title activator grey-text text-darken-4">이유라</span>
                                        <p><i class="material-icons">email</i> lyr@daims.co.kr</p>
                                        <p><i class="material-icons">phone</i> 010-6671-5082</p>
                                        <p><i class="material-icons">event</i> 1993.12.02</p>

                                    </div>
                                    <div class="card-reveal">
                                        <span class="card-title grey-text text-darken-4">이유라 <i class="material-icons right">highlight_off</i></span>
                                        <p>Here is some more information about this card.</p>
                                        <p><i class="material-icons">perm_identity</i>Member</p>
                                        <p><i class="material-icons">phone</i> 010-6671-5082</p>
                                        <p><i class="material-icons">email</i> lyr@daims.co.kr</p>
                                        <p><i class="material-icons">event</i> 1993.12.02</p>
                                    </div>
                                </div>
                            </div>
                       </c:forEach>
                     
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