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



  <div id="epRegister-page" class="row">
  
  	<div  class="row" style="margin-top: 150px;">
  		<div class="col s12 m12 l12"><span style="color: #00bcd4 ;">temp</span></div>
  	</div>
    <div class="col s12 m4 4"><span style="color: #00bcd4;">s12 m4</span></div>
    <div class="col s12 m4 l4 card-panel">
	      <form>
	        <div class="row">
	          <div class="input-field col s12 center">
	            <h4>비품수정</h4>
	            <a href="#" id="backBtn">
					<i class="material-icons right" style="position: absolute; z-index: 1; top: 5px; left: 0px; min-height: 100%; margin-left: 90%; text-decoration: none; color: black">highlight_off</i>
				</a>
	          </div>
	        </div>
	        <div class="row margin">
	          <div class="input-field col s12">
					<div class="select-wrapper initialized">
						<span class="caret">▼</span> <select class="initialized">
							<option value="">비품분류</option>
							<option value="0" selected="selected">식.음료</option>
							<option value="1">생활용품</option>
							<option value="1">사무용품</option>
							<option value="3">기타</option>
						</select>
					</div>
	          </div>
	        </div>
	        <div class="row margin">
	          <div class="input-field col s12">
	            <input id="epName" type="text" placeholder="비품명" value="페퍼민트 허브차"">
	          </div>
	        </div>
	        <div class="row margin">
	          <div class="input-field col s12">
	            <input id="epPrice" type="text" placeholder="비품가격" value="6500원">
	          </div>
	        </div>
	        <div class="row margin">
	          <div class="input-field col s12">
	            <input id="epEtc" type="text" placeholder="비고">
	          </div>
	        </div>
	        <div class="row margin">
	          <div class="input-field col s12">
	            <div class="file-field input-field">
                        <div class="btn">
                          <span>File</span>
                          <input type="file" multiple="">
                        </div>
                        <div class="file-path-wrapper">
                          <input class="file-path validate" type="text" placeholder="Upload file" value="PEPER.jpg">
                        </div>
                      </div>
	          </div>
	        </div>
	        <div class="row">
	          <div class="input-field col s12">
	            <a href="index.html" class="btn waves-effect waves-light col s12">수정</a>
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
    <script type="text/javascript">
    $(function(){
    	$('#backBtn').on('click', function(){
    		history.go(-1);
    	});
    });
    
    </script>
</body>
</html>