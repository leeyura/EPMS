<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/htmlHead.jsp" flush="false"/>


 <body class="cyan loaded">
  <!-- Start Page Loading -->
  <div id="loader-wrapper">
      <div id="loader"></div>        
      <div class="loader-section section-left"></div>
      <div class="loader-section section-right"></div>
  </div>
  <!-- End Page Loading -->
  <div  id="login-page"  class="row" style="margin-top: 50px;">
  	<div  class="row" style="margin-top: 150px;">
  		<div class="col s12 m12 l12"><span style="color: #00bcd4 ;">temp</span></div>
  	</div>
    <div class="col s12 m4 l4"><span style="color: #00bcd4;">s12 m4</span></div>
    <div class="col s12 m4 l4 card-panel">
    <form id="loginFrm" method="post" action="${pageContext.request.contextPath}/login">
        <div class="row">
          <div class="input-field col s12 center">
            <img src="http://demo.geekslabs.com/materialize-v1.0/images/login-logo.png" alt="" class="circle responsive-img valign profile-image-login">
            <p class="center login-form-text">This is a system for supply management</p>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="material-icons prefix">account_box</i>
            <input id="email" type="email" name="memEmail" value="">
            <label for="email" class="center-align">이메일(ID)</label>
          </div>
        </div>
        <div class="row margin">
          <div class="input-field col s12">
            <i class="material-icons  prefix">lock_outline</i>
            <input id="password" type="password" name="memPwd" value="">
            <label for="password">비밀번호</label>
          </div>
        </div>
        
        <div class="row">
          <div class="input-field col s12">
            <a id="login" class="btn waves-effect waves-light col s12">로그인</a>
          </div>
        </div>
        <div class="row">
          <div class="input-field col s12 m12 l12 center" style="">
            <p class="margin medium-small" style="text-align: center;"><a href="${pageContext.request.contextPath }/register">가입하기!</a></p>
          </div>
        </div>
      </form>
    </div>
    <div class="col s12 m4 l4"><span style="color: #00bcd4;">s12 m4</span></div>
  </div>

  <!-- ================================================
    Scripts
    ================================================ -->

 
<div class="hiddendiv common"></div>
    <!-- ================================================
    Scripts
    ================================================ -->
    <jsp:include page="../common/common.jsp" flush="false"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/script/login.js"></script>
    <script type="text/javascript">
	    $(function(){
	    	var msg = "";
	    	msg = "${msg}";
	    	if(msg != ""){
		    	swal(msg, "로그인해주세요", "success");
	    	} 
	    	
	    	var noLogin = "";
	    	noLogin = "${noLogin}";
	    	if(noLogin != ""){
	    		swal(noLogin, "로그인이 필요한 서비스입니다.", "error");
	    	} 
	    	
	    	var logout = "";
	    	logout = "${logout}";
	    	if(logout != ""){
		    	swal(logout, "서비스를 이용하려면 재로그인 해주세요.", "success");
	    	} 
	    	var emptyInfo = "";
	    	emptyInfo = "${emptyInfo}";
	    	if(emptyInfo != ""){
		    	swal("일치하는 회원정보가 없습니다.", emptyInfo, "success");
	    	} 
	    	
	    });
    </script>
</body>

</html>