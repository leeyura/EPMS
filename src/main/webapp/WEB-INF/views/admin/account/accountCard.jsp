<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../../layout/htmlHead.jsp" flush="false"/>


<body>
    <!-- Start Page Loading -->
    <div id="loader-wrapper">
        <div id="loader"></div>        
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>
    <!-- End -->

	<jsp:include page="../../layout/header.jsp" flush="false"/> 

    <div id="main">
        <div class="wrapper">

            <jsp:include page="../../layout/menu.jsp" flush="false"/>
            <section id="content">

<%--  		    	<div id="input-select" class="row" style="margin-bottom: 0px;">
	                <div class="col s1 m1 l1"><span style="color: #fff;">temp</span></div>
	                
                <div class="col s2 m2 l2" style="padding-right: 0px; padding-top: 14px;" >
	                <a href="#"  title="저장"><i class="material-icons left" style="margin-top: 25px;">save</i></a>
	                    <div class="input-field col s10 m10 l10">
		                    <label>분류</label>
		                    <div class="select-wrapper initialized"><span class="caret">▼</span>
			                    <select class="initialized">
			                      <option value="" >분류</option>
			                      <option value="1">아이디(Email)</option>
			                      <option value="2">성명</option>
			                    </select>
		                   </div>
	                    </div>
	                </div>
	                <div class="col s3 m3 l3" style="display: flex;padding-top: 30px;padding-left: 0px;padding-bottom: -5;">
                       	<input class="input-field col s12"  type="text" placeholder="Search"/>
                      	<i class="material-icons  right" style="padding-top: 15px; margin-left: 0px; cursor: pointer;">search</i> 
	                </div>

	                <div class="col s4 m4 l6" style="padding-top:50px;">
                      	<a href="${pageContext.request.contextPath }/admin/userMgrList"><i class="material-icons  right">menu</i></a> 
                      	<a href="${pageContext.request.contextPath }/admin/userMgrCard"><i class="material-icons  right">apps</i></a> 
	                </div>
	                <div class="col s1 m1 l1"><span style="color: #fff;">temp</span></div>
              </div> --%>
              		    	<div id="input-select" class="row" style="margin-bottom: 0px;">
	                <div class="col s1 m1 l1"><span style="color: #fff;">DAIMS_EPMS</span> </div>

	                <div class="col s2 m2 l2" style="padding-right: 0px; padding-top: 14px;" >
	                <a href="#"  title="저장"><i class="material-icons left" style="margin-top: 25px;">save</i></a>
	                    <div class="input-field col s8 m8 l8">
		                    <label>분류</label>
		                    <div class="select-wrapper initialized"><span class="caret">▼</span>
			                    <select class="initialized">
			                      <option value="" >분류</option>
			                      <option value="1">아이디(Email)</option>
			                      <option value="2">성명</option>
			                    </select>
		                   </div>
	                    </div>
	                </div>

	                <div class="col s3 m3 l3" style="display: flex;padding-top: 30px;padding-left: 0px;padding-bottom: -5;">
                       	<input class="input-field col s12"  type="text" placeholder="Search"/>
                      	<i class="material-icons  right" style="padding-top: 15px; margin-left: 0px; cursor: pointer;">search</i> 
                      	<!-- <i class="material-icons  right" style="padding-top: 15px; margin-left: 20px; cursor: pointer;">edit</i> 
                      	<i class="material-icons  right" style="padding-top: 15px; margin-left: 0px; cursor: pointer;">delete_forever</i> --> 
	                </div>

	                <div class="col s5 m5 l5" style="padding-top:50px;">
                      	<a href="${pageContext.request.contextPath }/admin/userMgrCard"><i class="material-icons  right">apps</i></a> 
                      	<a href="${pageContext.request.contextPath }/admin/userMgrList"><i class="material-icons  right">menu</i></a> 
	                </div>

	                <div><span style="color: #fff;">DAIMS_EPMS</span></div>
              </div>
				<!-- 메인화면 -->
               <div id="card-widgets">
                        <div class="row">
                        <c:forEach begin="1" end="8">
                              <div class="col s12 m6 l3">
                                <div id="profile-card" class="card">
                                    <div class="card-image waves-effect waves-block waves-light">
                                        <img class="activator" src="${pageContext.request.contextPath }/images/user-bg.jpg" alt="user background">
                                    </div>
                                    <div class="card-content">
                                        <img src="${pageContext.request.contextPath }/images/account.jpg" alt="" class="circle responsive-img activator card-profile-image">
                                        <a class="btn-floating activator btn-move-up waves-effect waves-light darken-2 right">
                                           <i class="material-icons">delete_forever</i>
                                        </a>

                                        <span class="card-title activator grey-text text-darken-4">이유라</span>
                                        <p></p>
                                        <i class="material-icons left">perm_identity</i>
					                    <div class="select-wrapper initialized" style="margin-left: 40px;">
					                    	<span class="caret">▼</span>
						                    <select class="initialized">
						                      <option value="" disabled="disabled" >level</option>
						                      <option value="1">Administrator</option>
						                      <option value="2">Member</option>
						                    </select>
					                   </div>
                                        <p><i class="material-icons">email</i> lyr@daims.co.kr</p>
                                        <p><i class="material-icons">phone</i> 010-6671-5082</p>
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
	<jsp:include page="../../layout/footer.jsp" flush="false"/> 
    <!-- END FOOTER -->
    <!-- ================================================
    Scripts
    ================================================ -->
    <jsp:include page="../../common/common.jsp" flush="false"/>
</body>

</html>