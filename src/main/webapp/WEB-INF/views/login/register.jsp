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



  <div id="register-page" class="row">
  
  	<div  class="row" style="margin-top: 150px;">
  		<div class="col s12 m12 l12"><span style="color: #00bcd4 ;">temp</span></div>
  	</div>
    <div class="col s12 m4 4"><span style="color: #00bcd4;">s12 m4</span></div>
    <div class="col s12 m4 l4 card-panel">
	      <form id="registerFrm" method="post" action="${pageContext.request.contextPath}/register">
	        <div class="row">
	          <div class="input-field col s12 center">
	            <h4>회원가입</h4>
	            <p class="center">Join to DAIMS_EPMS!</p>
	          </div>
	        </div>
	        <div class="row margin">
	          <div class="input-field col s12">
	            <i class="material-icons prefix">account_box</i>
	            <input id="username" type="text" name="memName" value="" maxlength="4">
	            <label for="username" class="center-align">이름</label>
	          </div>
	        </div>
	        <div class="row margin">
	          <div class="input-field col s12">
	            <i class="material-icons  prefix">mail</i>
	            <input id="email" type="email" name="memEmail" value="" maxlength="30">
	            <label for="email" class="center-align">이메일(ID)</label>
	          </div>
	        </div>
	        <div class="row margin">
	          <div class="input-field col s12">
	            <i class="material-icons  prefix">lock_outline</i>
	            <input id="password" type="password" name="memPwd"  value="" maxlength="12">
	            <label for="password">비밀번호</label>
	          </div>
	        </div>
	        <div class="row margin">
	          <div class="input-field col s12">
	            <i class="material-icons  prefix">lock</i>
	            <input id="password-again" type="password" name="memPwdOk"  value="" maxlength="12">
	            <label for="password-again">비밀번호 확인</label>
	          </div>
	        </div>
	        <div class="row">
	          <div class="input-field col s12">
	            <a class="btn waves-effect waves-light col s12" id="register">가입하기</a>
	          </div>
	          <div class="input-field col s12">
	            <p class="margin center medium-small sign-up">이미 가입하셨나요? <a href="${pageContext.request.contextPath}/">로그인</a></p>
	          </div>
	        </div>
	      </form>
	</div>
    <div class="col s12 m4 l4"><span style="color: #00bcd4;">s12 m4</span></div>
  </div>
    <!-- ================================================
    Scripts
    ================================================ -->
    <jsp:include page="../common/common.jsp" flush="false"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/script/register.js"></script>
</body>
</html>