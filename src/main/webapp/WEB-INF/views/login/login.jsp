<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../layout/htmlHead.jsp" flush="false"/>


<body>
 <body class="cyan loaded">
  <!-- Start Page Loading -->
  <div id="loader-wrapper">
      <div id="loader"></div>        
      <div class="loader-section section-left"></div>
      <div class="loader-section section-right"></div>
  </div>
  <!-- End Page Loading -->
  <div  id="login-page"  class="row" style="margin-top: 50px;">
    <div class="col s12 m4 l5"><span style="color: #00bcd4;">s12 m4</span></div>
    <div class="col s12 m4 l2 card-panel">
    	<form class="">
	        <div class="row">
	          <div class="input-field col s12 center">
	            <img src="http://demo.geekslabs.com/materialize-v1.0/images/login-logo.png" alt="" class="circle responsive-img valign profile-image-login">
	            <p class="center login-form-text">This is a system for supply management</p>
	          </div>
	        </div>
	        <div class="row margin">
	          <div class="input-field col s12">
	            <input id="username" type="text">
	            <label for="username" class="center-align">Username</label>
	          </div>
	        </div>
	        <div class="row margin">
	          <div class="input-field col s12">
	            <input id="password" type="password">
	            <label for="password">Password</label>
	          </div>
	        </div>
	        
	        <div class="row">
	          <div class="input-field col s12">
	            <a href="index.html" class="btn waves-effect waves-light col s12">Login</a>
	          </div>
	        </div>
	        <div class="row">
	         <div class="col s3 m3 l3"><span style="color: #ffffff ;">temp</span></div>
	          <div class="input-field col s6 m6 l6" >
	            <p class="margin medium-small" style="text-align: center;"><a href="page-register.html">Register Now!</a></p>
	          </div>
	         <div class="col s3 m3 l3"><span style="color: #ffffff ;">temp</span></div>
	        </div>
	
	      </form>
    </div>
    <div class="col s12 m4 l5"><span style="color: #00bcd4;">s12 m4</span></div>
  </div>

  <!-- ================================================
    Scripts
    ================================================ -->

 
<div class="hiddendiv common"></div>
    <!-- ================================================
    Scripts
    ================================================ -->
    <jsp:include page="../common/common.jsp" flush="false"/>
</body>

</html>