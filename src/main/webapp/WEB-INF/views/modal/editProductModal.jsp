<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="editModal" class="modal">
	<form id="epEditFrm" action="${pageContext.request.contextPath }/product/editProduct" enctype="multipart/form-data" method="post">
		<div id="epRegister-page" class="modal-content" style="padding: 12px 12px;">
		    <div class="col s12 m4 l4 card-panel" style="margin: 7px 7px;">
			        <div class="row">
			          <div class="input-field col s12 center">
			            <h4>비품수정</h4>
			            <a href="#" id="backBtn" class="modal-action modal-close">
							<i class="material-icons right" style="position: absolute; z-index: 1; top: 5px; left: 0px; min-height: 100%; margin-left: 90%; text-decoration: none; color: black">highlight_off</i>
						</a>
			          </div>
			        </div>
			        <div class="row margin">
			          <div class="input-field col s12">
							<!-- <div class="select-wrapper initialized"> -->
								<select class="browser-default" id="editEpType" name="epType" >
									<option value="">비품분류</option>
									<option value="0">식.음료</option>
									<option value="1">생활용품</option>
									<option value="1">사무용품</option>
									<option value="3">기타</option>
								</select>
							<!-- </div> -->
			          </div>
			        </div>
			        <div class="row margin" style="padding-top: 15px;">
			          <div class="input-field col s12">
			          <input type="hidden" id="epId" value="" name="epId">
			            <input id="editEpName" type="text" placeholder="비품명" name="epName" maxlength="100"  value="">
			            <label for="editEpName" class="center-align">비품명</label>
			          </div>
			        </div>
			        <div class="row margin">
			          <div class="input-field col s12">
			            <input id="editEpPrice" type="text" placeholder="비품가격" name="epPrice" maxlength="8"  value="">
			            <label for="editEpPrice" class="center-align">비품가격</label>
			          </div>
			        </div>
			        <div class="row margin">
			          <div class="input-field col s12">
			            <div class="file-field input-field">
		                        <div class="btn">
		                          <span>첨부이미지</span>
		                           <input type="file" name="file" value="" id="editEpFile">
		                          <input type="hidden" name="fileId" id="fileId" value="">
		                        </div>
		                        <div class="file-path-wrapper">
		                          <input class="file-path validate" type="text" placeholder="Upload file" value="" id="editFileNm" name="editFileNm">
		                        </div>
		                      </div>
			          </div>
			        </div>
        	        <div class="row">
			          <div class="input-field col s12">
			            <a id="editProduct" class="btn waves-effect waves-light col s12">수정</a>
			          </div>
			        </div>
			</div>
		  </div>
	</form>
</div>
