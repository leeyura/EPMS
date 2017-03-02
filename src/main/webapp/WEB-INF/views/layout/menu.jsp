
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <aside id="left-sidebar-nav">
                <ul id="slide-out" class="side-nav fixed leftside-navigation ps-container ps-active-y" style="left: 0px; height: 1010px;">
                <li class="user-details cyan darken-2">
                <div class="row">
                    <div class="col col s4 m4 l4">
                        <img src="${pageContext.request.contextPath }/images/account.jpg" alt="" class="circle responsive-img valign profile-image">
                    </div>
                    <div class="col col s8 m8 l8">
                        <ul id="profile-dropdown" class="dropdown-content">
                            <!-- <li><a href="#"><i class="material-icons">perm_identity</i>Profile</a>
                            </li> -->
                            <!-- <li class="divider"></li> -->
                            <li><a href="${pageContext.request.contextPath }/logout"><i class="material-icons">input</i>Logout</a>
                            </li>
                        </ul>
                        <a class="btn-flat dropdown-button waves-effect waves-light white-text profile-btn" href="#" data-activates="profile-dropdown"><c:out value="${userInfo.getAttribute(\"nm\") }"/><i class="material-icons right">settings</i></a>
                        <c:if test="${userInfo.getAttribute(\"level\") eq 0 }">
	                        <p class="user-roal">Member</p>
                        </c:if>
                        <c:if test="${userInfo.getAttribute(\"level\") eq 1 }">
	                        <p class="user-roal">Administrator</p>
                        </c:if>
                    </div>
                </div>
               <!--  </li>
                <li class="bold active"><a href="index.html" class="waves-effect waves-cyan"><i class="material-icons">insert_chart</i> 통계</a>
                </li> -->
                <c:if test="${userInfo.getAttribute(\"level\") eq 0 }">
	                <li class="no-padding">
	                    <ul class="collapsible collapsible-accordion">
	                        <li class="bold"><a class="collapsible-header waves-effect waves-cyan" id="topMore"><i class="material-icons">redeem</i>비품 <img id="more" alt="" src="${pageContext.request.contextPath }/images/right.png"class="right" style="padding-top: 10px;width: 20px;"> </a>
	                            <div class="collapsible-body">
	                                <ul>
	                                    <li><a href="${pageContext.request.contextPath }/product/list">비품 목록</a>
	                                    </li>
	                                    <li><a href="${pageContext.request.contextPath }/apply/list">신청 목록</a>
	                                    </li>
	                                </ul>
	                            </div>
	                        </li>
	                    </ul>
	                </li>
                </c:if>
                <c:if test="${userInfo.getAttribute(\"level\") eq 1 }">
	                <li class="no-padding">
	                    <ul class="collapsible collapsible-accordion">
	                        <li class="bold">
	                        	<a class="collapsible-header waves-effect waves-cyan" id="topMore">
	                        		<i class="material-icons">redeem</i>비품 
	                        		<img id="more"  alt="" src="${pageContext.request.contextPath }/images/right.png"class="right" style="padding-top: 10px;width: 20px;"> 
	                        		<%-- <img alt="" src="${pageContext.request.contextPath }/images/up.png"class="right" style="padding-top: 2px;">  --%>
	                        	</a>
	                            <div class="collapsible-body">
	                                <ul>
	                                    <li><a href="${pageContext.request.contextPath }/product/list">비품 목록</a>
	                                    </li>
	                                    <li><a href="${pageContext.request.contextPath }/apply/list">신청 목록</a>
	                                    </li>
	                                </ul>
	                            </div>
	                        </li>
	                    </ul>
	                </li>
	                <%-- <li class="bold"><a href="${pageContext.request.contextPath }/admin/userMgrList" class="waves-effect waves-cyan"><i class="material-icons">insert_emoticon</i> 계정</a> --%>
	                <li class="bold"><a href="${pageContext.request.contextPath }/admin/reqEpList" class="waves-effect waves-cyan"><i class="material-icons">assignment_return</i> 요청비품목록</a>
                </c:if>
                
                <!--  <li class="no-padding">
                    <ul class="collapsible collapsible-accordion">
                        <li class="bold"><a class="collapsible-header waves-effect waves-cyan"><i class="material-icons">insert_chart</i>통계</a>
                            <div class="collapsible-body">
                                <ul>
                                    <li><a href="layout-fullscreen.html">선호도</a>
                                    </li>
                                    <li><a href="layout-horizontal-menu.html">비품별 구매금액</a>
                                    </li>
                                    <li><a href="layout-horizontal-menu.html">월별 구매금액</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </li> -->
            </ul>
                <a href="#" data-activates="slide-out" class="sidebar-collapse btn-floating btn-medium waves-effect waves-light hide-on-large-only cyan"><i class="material-icons">menu</i></a>
            </aside>