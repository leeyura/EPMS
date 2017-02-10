
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <aside id="left-sidebar-nav">
                <ul id="slide-out" class="side-nav fixed leftside-navigation ps-container ps-active-y" style="left: 0px; height: 1010px;">
                <li class="user-details cyan darken-2">
                <div class="row">
                    <div class="col col s4 m4 l4">
                        <img src="${pageContext.request.contextPath }/images/account.jpg" alt="" class="circle responsive-img valign profile-image">
                    </div>
                    <div class="col col s8 m8 l8">
                        <ul id="profile-dropdown" class="dropdown-content">
                            <li><a href="#"><i class="material-icons">perm_identity</i>Profile</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="material-icons">input</i>Logout</a>
                            </li>
                        </ul>
                        <a class="btn-flat dropdown-button waves-effect waves-light white-text profile-btn" href="#" data-activates="profile-dropdown">이유라<i class="material-icons right">settings</i></a>
                        <p class="user-roal">Administrator</p>
                    </div>
                </div>
               <!--  </li>
                <li class="bold active"><a href="index.html" class="waves-effect waves-cyan"><i class="material-icons">insert_chart</i> 통계</a>
                </li> -->
                <li class="no-padding">
                    <ul class="collapsible collapsible-accordion">
                        <li class="bold"><a class="collapsible-header waves-effect waves-cyan"><i class="material-icons">redeem</i>비품</a>
                            <div class="collapsible-body">
                                <ul>
                                    <li><a href="${pageContext.request.contextPath }/product/list">비품 목록</a>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath }/product/applyList">신청 목록</a>
                                    </li>
                                    <li><a href="layout-horizontal-menu.html">비품 신청</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="no-padding">
                    <ul class="collapsible collapsible-accordion">
                        <li class="bold"><a class="collapsible-header waves-effect waves-cyan"><i class="material-icons">receipt</i> 지출결의서 </a><!-- </a> -->
                            <div class="collapsible-body">
                                <ul>
                                    <li><a href="css-typography.html">지출결의서 목록</a>
                                    </li>
                                    <li><a href="css-icons.html">지출결의서 작성</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </li>
                 <li class="no-padding">
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
                </li>
                <li class="bold"><a href="${pageContext.request.contextPath }/admin/userMgr" class="waves-effect waves-cyan"><i class="material-icons">insert_emoticon</i> 계정</a>
            </ul>
                <a href="#" data-activates="slide-out" class="sidebar-collapse btn-floating btn-medium waves-effect waves-light hide-on-large-only cyan"><i class="material-icons">menu</i></a>
            </aside>