<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="editApplyModal" class="modal" style="max-width: 600px;">
		<div id="editApply-page" class="row" style="margin-top: 30px; margin-bottom: 30px;">
			<div class="col s1 m1 1">
				<span style="color: mintcream;">s12 m4</span>
			</div>
			<div class="col s10 m10 l10 card-panel">
				<form id="editFrm">
					<div class="row">
						<div class="input-field col s12 center">
							<h4>비품수정</h4>
							<a href="#" id="backBtn"  class="modal-action modal-close"> 
								<i class="material-icons right" style="position: absolute; z-index: 1; top: 5px; left: 0px; min-height: 100%; margin-left: 90%; text-decoration: none; color: black">highlight_off</i>
							</a>
						</div>
					</div>
					<div class="row margin">
						<div class="input-field col s12">
							<!-- <div class="select-wrapper initialized"> -->
								<!-- <span class="caret">▼</span> -->
<!-- 								 <select class="initialized" onchange="getProductList()" id="type" name="type"> -->
								 <select class="browser-default" disabled="disabled" id="editEpType" name="type">
									<option value="">비품분류</option>
									<option value="0">식.음료</option>
									<option value="1">생활용품</option>
									<option value="2">사무용품</option>
									<option value="3">기타</option>
								</select>
							<!-- </div> -->
						</div>
					</div>
					<div class="row margin" id="productDivSelect">
						<div class="input-field col s12" id="productDiv">
							<input id="editEpNm" type="text" placeholder="비품명" name="epNm" readonly="readonly">
						</div>
					</div>
					<div class="row margin">
						<div class="input-field col s12">
							<input id="editEpCnt" type="text" placeholder="비품신청수량" name="epCnt">
							<label for="editEpCnt" class="center-align">신청수량</label>
							<input type="hidden" id="editEpPrice" value="" name="epPrice">
							<input type="hidden" id="editEpId" value="" name="epId">
						</div>
					</div>

					<div class="row">
						<div class="input-field col s12">
							<a id="editBtn" class="btn waves-effect waves-light col s12">수정</a>
						</div>

					</div>
				</form>
			</div>
			<div class="col s1 m1 l1">
				<span style="color: mintcream;">s12 m4</span>
			</div>
		</div>
</div>