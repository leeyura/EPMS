<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="addModal" class="modal">
	<form id="epFrm" action="${pageContext.request.contextPath }/product/addProduct" enctype="multipart/form-data" method="post">
		<div id="epRegister-page" class="modal-content" style="padding: 12px 12px;">
		    <div class="col s12 m4 l4 card-panel" style="margin: 7px 7px;">
			        <div class="row">
			          <div class="input-field col s12 center">
			            <h4>비품등록</h4>
			            <a href="#" id="backBtn" class="modal-action modal-close">
							<i class="material-icons right" style="position: absolute; z-index: 1; top: 5px; left: 0px; min-height: 100%; margin-left: 90%; text-decoration: none; color: black">highlight_off</i>
						</a>
			          </div>
			        </div>
			        <div class="row margin">
			          <div class="input-field col s12">
							<div class="select-wrapper initialized">
								<span class="caret">▼</span> 
								<select class="initialized" id="epType" name="epType" >
									<option value="">비품분류</option>
									<option value="0">식.음료</option>
									<option value="1">생활용품</option>
									<option value="1">사무용품</option>
									<option value="3">기타</option>
								</select>
							</div>
			          </div>
			        </div>
			        <div class="row margin">
			          <div class="input-field col s12">
			            <input id="epName" type="text" placeholder="비품명" name="epName" maxlength="100"  value="">
			          </div>
			        </div>
			        <div class="row margin">
			          <div class="input-field col s12">
			            <input id="epPrice" type="text" placeholder="비품가격" name="epPrice" maxlength="8"  value="">
			          </div>
			        </div>
			        <div class="row margin">
			          <div class="input-field col s12">
			            <input id="epEtc" type="text" placeholder="비고" name="epEtc" value="">
			          </div>
			        </div>
			        <div class="row margin">
			          <div class="input-field col s12">
			            <div class="file-field input-field">
		                        <div class="btn">
		                          <span>File</span>
		                           <input type="file" name="file" value="">
		                        </div>
		                        <div class="file-path-wrapper">
		                          <input class="file-path validate" type="text" placeholder="Upload file">
		                        </div>
		                      </div>
			          </div>
			        </div>
        	        <div class="row">
			          <div class="input-field col s12">
			            <a id="newProduct" class="btn waves-effect waves-light col s12">등록</a>
			          </div>
			        </div>
			</div>
		  </div>
	</form>
</div>