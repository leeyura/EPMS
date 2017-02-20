<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="../layout/htmlHead.jsp" flush="false"/>


  <body style="background-color: #00bcd4 !important">
  <div id="error-page" style="margin-top: 60px;">

    <div class="row">
      <div class="col s3">
    	<span style="color: #00bcd4 !important">DAIMS_EPMS</span>
    </div>
      <div class="col s6">
        <div class="browser-window">
          <div class="top-bar">
            <div class="circles">
              <div id="close-circle" class="circle"></div>
              <div id="minimize-circle" class="circle"></div>
              <div id="maximize-circle" class="circle"></div>
            </div>
          </div>
        <div class="content">
            <div class="row">
              <div id="site-layout-example-top" class="col s12">
                <p class="flat-text-logo center white-text caption-uppercase">INTERNAL SERVER ERROR</p>
              </div>
              <div id="site-layout-example-bottom" class="col s12 m12 l12" style="background-color: #00bcd4 !important;">
                <div class="row center">
                  <h1 class="text-long-shadow col s12">404</h1>
                </div>
                <div class="row center">
                  <p class="center white-text col s12">Something has gone seriously wrong. Please try later.</p>
                  <p class="center s12">
                  	<button onclick="goBack()" class="btn waves-effect waves-light">Back</button>
                  	 <a href="${pageContext.request.contextPath }/" class="btn waves-effect waves-light">Homepage</a>
                   </p>
                   <p> </p>
                </div> 
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<div class="hiddendiv common"></div>
<jsp:include page="../common/common.jsp" flush="false"/>
<script type="text/javascript">
	function goBack() {
	    window.history.back();
	  }
</script>
</body>