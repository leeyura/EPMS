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
               <div class="row" id="accountList" >
					<div class="col s1 m1 l1"><span style="color: #fff;">DAIMS_EPMS</span></div> 	
	            	<div class="col s10 m10 l10">
						<table class="bordered">
		                    <thead>
		                      <tr>
		                        <th data-field="name">이름</th>
		                        <th data-field="email">이메일</th>
		                        <th data-field="grade">level</th>
		                        <th data-field="insert_date">가입일</th>
		                        <th data-field="id">삭제</th>
		                      </tr>
		                    </thead>
		                    <tbody>
		                      <tr>
		                        <!-- <td style="padding-left: 10px;">
			                        <p>
				                       <input type="checkbox" id="mem_id1" value="" style="display: none;">
				                       <label for="mem_id1"></label> 
				                     </p>
		                         </td> -->
		                        <td>김범관</td>
		                        <td>alalshow@daims.co.kr</td>
		                       <!-- <td style="padding-right: 10px;"> -->
		                       <td>
	                	                  <div class="select-wrapper initialized"><span class="caret">▼</span>
						                  <select class="initialized">
						                    <option value="" >level</option>
						                    <option value="1">Administrator</option>
						                    <option value="2" selected="selected">Member</option>
						                  </select>
					                 </div>
		                        </td>
		                        <td>2017.01.08</td>
		                        <td>
			                        <i class="material-icons" style="padding-top: 15px; margin-left: 0px; cursor: pointer;">delete_forever</i>
		                        </td>
		                      </tr>
		                      <tr>
<!-- 		                         <td style="padding-left: 10px;">
			                        <p>
				                       <input type="checkbox" id="mem_id2" value="" style="display: none;">
				                       <label for="mem_id2"></label> 
				                     </p>
		                         </td> -->
		                        <td>김재겸</td>
		                        <td>kjk346@daims.co.kr</td>
		                       <!-- <td style="padding-right: 10px;"> -->
		                       <td>
	                	                  <div class="select-wrapper initialized"><span class="caret">▼</span>
						                  <select class="initialized">
						                    <option value="" >level</option>
						                    <option value="1">Administrator</option>
						                    <option value="2" selected="selected">Member</option>
						                  </select>
					                 </div>
		                        </td>
		                        <td>2017.01.08</td>
           		                <td>
			                        <i class="material-icons" style="padding-top: 15px; margin-left: 0px; cursor: pointer;">delete_forever</i>
		                        </td>
		                      </tr>
		                      <tr>
		                         <!-- <td style="padding-left: 10px;">
			                        <p>
				                       <input type="checkbox" id="mem_id3" value="" style="display: none;">
				                       <label for="mem_id3"></label> 
				                     </p>
		                         </td> -->
		                        <td>박준수</td>
		                        <td>webtool@daims.co.kr</td>
		                        <!-- <td style="padding-right: 10px;"> -->
		                       <td>
	                	                  <div class="select-wrapper initialized"><span class="caret">▼</span>
						                  <select class="initialized">
						                    <option value="" >level</option>
						                    <option value="1">Administrator</option>
						                    <option value="2" selected="selected">Member</option>
						                  </select>
					                 </div>
		                        </td>
		                        <td>2017.01.08</td>
		                        <td>
			                        <i class="material-icons" style="padding-top: 15px; margin-left: 0px; cursor: pointer;">delete_forever</i>
		                        </td>
		                      </tr>
		                      <tr>
		                         <!-- <td style="padding-left: 10px;">
			                        <p>
				                       <input type="checkbox" id="mem_id4" value="" style="display: none;">
				                       <label for="mem_id4"></label> 
				                     </p>
		                         </td> -->
		                        <td>이애희</td>
		                        <td>dogmj307@daims.co.kr</td>
		                       <!-- <td style="padding-right: 10px;"> -->
		                       <td>
	                	                  <div class="select-wrapper initialized"><span class="caret">▼</span>
						                  <select class="initialized">
						                    <option value="" >level</option>
						                    <option value="1">Administrator</option>
						                    <option value="2" selected="selected">Member</option>
						                  </select>
					                 </div>
		                        </td>
		                        <td>2017.01.08</td>
		                        <td>
			                        <i class="material-icons" style="padding-top: 15px; margin-left: 0px; cursor: pointer;">delete_forever</i>
		                        </td>
		                      </tr>
		                      <tr>
	<!-- 	                        <td style="padding-left: 10px;">
			                        <p>
				                       <input type="checkbox" id="mem_id5" value="" style="display: none;">
				                       <label for="mem_id5"></label> 
				                     </p>
		                         </td> -->
		                        <td>이제호</td>
		                        <td>jeroty@daims.co.kr</td>
		                       <!-- <td style="padding-right: 10px;"> -->
		                       <td>
	                	                  <div class="select-wrapper initialized"><span class="caret">▼</span>
						                  <select class="initialized">
						                    <option value="" >level</option>
						                    <option value="1">Administrator</option>
						                    <option value="2" selected="selected">Member</option>
						                  </select>
					                 </div>
		                        </td>
		                        <td>2017.01.08</td>
		                        <td>
			                        <i class="material-icons" style="padding-top: 15px; margin-left: 0px; cursor: pointer;">delete_forever</i>
		                        </td>
		                      </tr>
		                      <tr>
		                        <!--  <td style="padding-left: 10px;">
			                        <p>
				                       <input type="checkbox" id="mem_id6" value="" style="display: none;">
				                       <label for="mem_id6"></label> 
				                     </p>
		                         </td> -->
		                        <td>임대진</td>
		                        <td>daejin@daims.co.kr</td>
		                        <!-- <td style="padding-right: 10px;"> -->
		                       <td>
	                	                  <div class="select-wrapper initialized"><span class="caret">▼</span>
						                  <select class="initialized">
						                    <option value="" >level</option>
						                    <option value="1">Administrator</option>
						                    <option value="2" selected="selected">Member</option>
						                  </select>
					                 </div>
		                        </td>
		                        <td>2017.01.08</td>
		                        <td>
			                        <i class="material-icons" style="padding-top: 15px; margin-left: 0px; cursor: pointer;">delete_forever</i>
		                        </td>
		                      </tr>
		                      <tr>
		                         <!-- <td style="padding-left: 10px;">
			                        <p>
				                       <input type="checkbox" id="mem_id7" value="" style="display: none;">
				                       <label for="mem_id7"></label> 
				                     </p>
		                         </td> -->
		                        <td>임소영</td>
		                        <td>sylim@daims.co.kr</td>
		                       <!-- <td style="padding-right: 10px;"> -->
		                       <td>
	                	                  <div class="select-wrapper initialized"><span class="caret">▼</span>
						                  <select class="initialized">
						                    <option value="" >level</option>
						                    <option value="1">Administrator</option>
						                    <option value="2" selected="selected">Member</option>
						                  </select>
					                 </div>
		                        </td>
		                        <td>2017.01.08</td>
		                        <td>
			                        <i class="material-icons" style="padding-top: 15px; margin-left: 0px; cursor: pointer;">delete_forever</i>
		                        </td>
		                      </tr>
		                      <tr>
<!-- 		                         <td style="padding-left: 10px;">
			                        <p>
				                       <input type="checkbox" id="mem_id8" value="" style="display: none;">
				                       <label for="mem_id8"></label> 
				                     </p>
		                         </td> -->
		                        <td>임정묵</td>
		                        <td>jmlimm@daims.co.kr</td>
		                       <!-- <td style="padding-right: 10px;"> -->
		                       <td>
	                	                  <div class="select-wrapper initialized"><span class="caret">▼</span>
						                  <select class="initialized">
						                    <option value="" >level</option>
						                    <option value="1">Administrator</option>
						                    <option value="2" selected="selected">Member</option>
						                  </select>
					                 </div>
		                        </td>
		                        <td>2017.01.08</td>
		                        <td>
			                        <i class="material-icons" style="padding-top: 15px; margin-left: 0px; cursor: pointer;">delete_forever</i>
		                        </td>
		                      </tr>
		                      <tr>
	<!-- 	                         <td style="padding-left: 10px;">
			                        <p>
				                       <input type="checkbox" id="mem_id9" value="" style="display: none;">
				                       <label for="mem_id9"></label> 
				                     </p>
		                         </td> -->
		                        <td>정의정</td>
		                        <td>eui7708@daims.co.kr</td>
		                       <!-- <td style="padding-right: 10px;"> -->
		                       <td>
	                	                  <div class="select-wrapper initialized"><span class="caret">▼</span>
						                  <select class="initialized">
						                    <option value="" >level</option>
						                    <option value="1">Administrator</option>
						                    <option value="2" selected="selected">Member</option>
						                  </select>
					                 </div>
		                        </td>
		                        <td>2017.01.08</td>
		                        <td>
			                        <i class="material-icons" style="padding-top: 15px; margin-left: 0px; cursor: pointer;">delete_forever</i>
		                        </td>
		                      </tr>
		                      <tr>
<!-- 		                         <td style="padding-left: 10px;">
			                        <p>
				                       <input type="checkbox" id="mem_id10" value="" style="display: none;">
				                       <label for="mem_id10"></label> 
				                     </p>
		                         </td> -->
		                        <td>최용석</td>
		                        <td>uschoi@daims.co.kr</td>
		                     <!-- <td style="padding-right: 10px;"> -->
		                       <td>
	                	                  <div class="select-wrapper initialized"><span class="caret">▼</span>
						                  <select class="initialized">
						                    <option value="" >level</option>
						                    <option value="1">Administrator</option>
						                    <option value="2" selected="selected">Member</option>
						                  </select>
					                 </div>
		                        </td>
		                        <td>2017.01.08</td>
		                        <td>
			                        <i class="material-icons" style="padding-top: 15px; margin-left: 0px; cursor: pointer;">delete_forever</i>
		                        </td>
		                      </tr>
		                    </tbody>
		                 </table>
	            	</div>
	            	<div><span style="color: #fff;">DAIMS_EMPS</span></div> 	
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