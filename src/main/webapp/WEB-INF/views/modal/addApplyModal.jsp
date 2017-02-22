<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="addApplyModal" class="modal" style="max-width: 600px;">
		<div id="epApply-page" class="row" style="margin-top: 30px; margin-bottom: 30px;">
			<div class="col s1 m1 1">
				<span style="color: mintcream;">s12 m4</span>
			</div>
			<div class="col s10 m10 l10 card-panel">
				<form id="applyFrm">
					<div class="row">
						<div class="input-field col s12 center">
							<h4>비품신청</h4>
							<a href="#" id="backBtn"  class="modal-action modal-close"> 
								<i class="material-icons right" style="position: absolute; z-index: 1; top: 5px; left: 0px; min-height: 100%; margin-left: 90%; text-decoration: none; color: black">highlight_off</i>
							</a>
						</div>
					</div>
					<div class="row margin">
						<div class="input-field col s12">
							<div class="select-wrapper initialized">
								<span class="caret">▼</span>
								 <select class="initialized" onchange="getProductList()" id="type" name="type">
									<option value="">비품분류</option>
									<option value="0">식.음료</option>
									<option value="1">생활용품</option>
									<option value="2">사무용품</option>
									<option value="3">기타</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row margin" id="productDivSelect">
						<div class="input-field col s12" id="productDiv">
							<div class="select-wrapper">
								<span class="caret">▼</span> 
								<select class="initialized" id="epNm" name="epNm">
									<option value="">비품명</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row margin">
						<div class="input-field col s12">
							<input id="epCnt" type="text" placeholder="비품신청수량" name="epCnt">
							<input type="hidden" id="epPrice" value="" name="epPrice">
						</div>
					</div>

					<div class="row">
						<div class="input-field col s12">
							<a id="addBtn"
								class="btn waves-effect waves-light col s12">신청하기</a>
						</div>

					</div>
				</form>
			</div>
			<div class="col s1 m1 l1">
				<span style="color: mintcream;">s12 m4</span>
			</div>
		</div>
</div>