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
        <div class="wrapper" style="background-color: mintcream; height: 710px;">

            <jsp:include page="../layout/menu.jsp" flush="false"/>
            <section id="content">
				
				<!-- 메인화면 -->
               <div id="card-widgets" style="padding-top: 120px; padding-bottom: 120px;">
                        <div class="row">
                           <div class="col s12 m4 l4" >
                        		<span style="color: #ffffff;">DAIMS_EPMS</span>
                        	</div>	
                              <div class="col s12 m4 l4" >
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
                                        <span class="card-title grey-text text-darken-4">이유라 
                                        	<i class="material-icons center">save</i>
                                        	<i class="material-icons">delete_forever</i>
                                        	<i class="material-icons right">highlight_off</i>
                                        </span>

                                         <p><i class="material-icons">perm_identity</i>Administrator</p>
                                        <p><i class="material-icons">email</i> lyr@daims.co.kr</p>
                                        <p>
                                        	<i class="material-icons  left" style="margin-right: 0px;">lock_outline</i> 
                                        	<input class="input-field col s11 m11 l11"  type="password" placeholder="Now password" maxlength="12"/>
                                       </p>
                                        <p>
                                        	<i class="material-icons  left" style="margin-right: 0px;">lock</i> 
                                        	<input class="input-field col col s11 m11 l11"  type="password" placeholder="Change password" maxlength="12"/>
                                       </p>
                                        <!-- <p>
                                        	<i class="material-icons left">phone</i> 
                                        	<input class="input-field col col s11 m11 l11"  type="tel" placeholder="010-6671-5082" maxlength="13"/>
                                        </p> -->
                                         
                                        <p>
                                        	<i class="material-icons  left" style="margin-right: 0px;">phone</i> 
                                        	<!-- <input class="input-field col s3 m3 l3"  type="tel" placeholder="010" maxlength="3"/><input class="input-field col s4 m4 l4"  type="tel" placeholder="1234" maxlength="4"/><input class="input-field col s4 m4 l4"  type="tel" placeholder="1234" maxlength="4"/> -->
                                       		<input class="input-field col col s11 m11 l11"  type="tel" placeholder="01066715082" maxlength="11"/>
                                       </p>
                                        
                                        <p>
                                        	<i class="material-icons  left" style="margin-right: 0px;">event</i> 
                                       		<input class="input-field col col s11 m11 l11"  type="text" placeholder="19931202" maxlength="8"/>
                                       </p>
                                       
                               	 </div>
                           		</div>
                            </div>
                      		<div class="col s12 m4 l4" >
                        		<span style="color: #ffffff;">DAIMS_EPMS</span>
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