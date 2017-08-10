<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>码神软件后台管理系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<%@ include file="/WEB-INF/pages/common/rs_css.jsp"%>
</head>
<body>
	<div class="navbar navbar-default" id="navbar">
		<script type="text/javascript">
			try {
				ace.settings.check('navbar', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="navbar-container" id="navbar-container">
			<div class="navbar-header pull-left">
				<a href="#" class="navbar-brand"> <small> <i
						class="icon-leaf"></i> 码神官网后台管理
				</small>
				</a>
				<!-- /.brand -->
			</div>
			<!-- /.navbar-header -->

			<div class="navbar-header pull-right" role="navigation">
				<ul class="nav ace-nav">

					<li class="light-blue"><a data-toggle="dropdown" href="#"
						class="dropdown-toggle"> <img class="nav-user-photo"
							src="${path }/resources/assets/avatars/user.jpg"
							alt="J${s_user.name }的头像" /> <span class="user-info"> <small>欢迎,</small>
								${s_user.name }
						</span> <i class="icon-caret-down"></i>
					</a>

						<ul
							class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li><a href="#"> <i class="icon-cog"></i> 设置
							</a></li>

							<li><a href="#"> <i class="icon-user"></i> 个人信息
							</a></li>

							<%-- <li><a href="${path}/user/updatePassword.action"> <i class="icon-user"></i> 修改密码
							</a></li>
							<li class="divider"></li> --%>

							<li><a href="${path }/loginout.action"> <i
									class="icon-off"></i> 注销
							</a></li>
						</ul></li>
				</ul>
				<!-- /.ace-nav -->
			</div>
			<!-- /.navbar-header -->
		</div>
		<!-- /.container -->
	</div>

	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>

		<div class="main-container-inner">
			<a class="menu-toggler" id="menu-toggler" href="#"> <span
				class="menu-text"></span>
			</a>

			<div class="sidebar" id="sidebar">
				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'fixed')
					} catch (e) {
					}
				</script>

				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success">
							<i class="icon-signal"></i>
						</button>

						<button class="btn btn-info">
							<i class="icon-pencil"></i>
						</button>

						<button class="btn btn-warning">
							<i class="icon-group"></i>
						</button>

						<button class="btn btn-danger">
							<i class="icon-cogs"></i>
						</button>
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span> <span class="btn btn-info"></span>

						<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
					</div>
				</div>
				<!-- #sidebar-shortcuts -->
				<ul class="nav nav-list">
					<!-- 此处添加菜单 -->
					<li>
						<a href="#" class="dropdown-toggle"> <i class="icon-desktop"></i> <span class="menu-text">系统管理</span><b class="arrow icon-angle-down"></b></a>
						<ul class="submenu">
							<li>
								<a href="${path }/user/list.action"target="contentframe"><i class="icon-double-angle-right"></i>管理员列表</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#" class="dropdown-toggle"> <i class="icon-desktop"></i> <span class="menu-text">用户咨询</span><b class="arrow icon-angle-down"></b></a>
						<ul class="submenu">
							<li>
								<a href="${path }/consultant/list.action?isRead=1"target="contentframe"><i class="icon-double-angle-right"></i>待咨询用户列表</a>
							</li>
							<li>
								<a href="${path }/consultant/list.action?isRead=0"target="contentframe"><i class="icon-double-angle-right"></i>已咨询用户列表</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#" class="dropdown-toggle"> <i class="icon-desktop"></i> <span class="menu-text">公司信息管理</span><b class="arrow icon-angle-down"></b></a>
						<ul class="submenu">
							<li>
								<a href="${path }/company/list.action"target="contentframe"><i class="icon-double-angle-right"></i>公司信息列表</a>
							</li>
							<li>
								<a href="${path }/article/list.action"target="contentframe"><i class="icon-double-angle-right"></i>介绍页面列表</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#" class="dropdown-toggle"> <i class="icon-desktop"></i> <span class="menu-text">品牌栏目管理</span><b class="arrow icon-angle-down"></b></a>
						<ul class="submenu">
							<li>
								<a href="${path }/brand/list.action"target="contentframe"><i class="icon-double-angle-right"></i>品牌列表</a>
							</li>
							<li>
								<a href="${path }/cartype/list.action"target="contentframe"><i class="icon-double-angle-right"></i>车型列表</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#" class="dropdown-toggle"> <i class="icon-desktop"></i> <span class="menu-text">汽车展示图管理</span><b class="arrow icon-angle-down"></b></a>
						<ul class="submenu">
							<li>
								<a href="${path }/carpicture/list.action"target="contentframe"><i class="icon-double-angle-right"></i>汽车展示图管理</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#" class="dropdown-toggle"> <i class="icon-desktop"></i> <span class="menu-text">产品信息管理</span><b class="arrow icon-angle-down"></b></a>
						<ul class="submenu">
							<li>
								<a href="${path }/product/list.action"target="contentframe"><i class="icon-double-angle-right"></i>产品信息管理</a>
							</li>
						</ul>
					</li>
				</ul>
				<!-- /.nav-list -->

				<div class="sidebar-collapse" id="sidebar-collapse">
					<i class="icon-double-angle-left"
						data-icon1="icon-double-angle-left"
						data-icon2="icon-double-angle-right"></i>
				</div>

				<script type="text/javascript">
					try {
						ace.settings.check('sidebar', 'collapsed')
					} catch (e) {
					}
				</script>
			</div>

			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs"></div>

				<div class="page-content">

					<div class="row">
						<div class="col-xs-12">
							<!-- 内容 PAGE CONTENT BEGINS -->
							<iframe width="100%" id="contentframe" name="contentframe"
								onload="ifmresize()" frameborder="0" scrolling="yes"
								src="${path}/user/list.action"> </iframe>


							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
			<!-- /.main-content -->


			<!-- /#ace-settings-container -->
		</div>
		<!-- /.main-container-inner -->

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="icon-double-angle-up icon-only bigger-110"></i>
		</a>
	</div>
	<!-- /.main-container -->
	<%@ include file="/WEB-INF/pages/common/rs_js.jsp"%>
	<script type="text/javascript">
		function ifmresize() {
			var ifm = document.getElementById("contentframe");
			ifm.height = document.documentElement.clientHeight;
		}
		window.onresize = function() {
			ifmresize();
		}
		$(function() {
			$(".nav-list li:first").addClass("active").addClass('open');
			$(".submenu li:first").addClass("active");
			$(".nav-list>li").click(function() {
				//$(".nav-list>li[class='active']").removeAttr("class");
			});
			$(".submenu li").click(function() {
				$(".submenu li.active").removeClass("active");
				$(".nav-list>li.active").removeClass("active").removeClass('open');
				$(this).addClass("active").parents('li').addClass("active").addClass('open');
			});
		});
	</script>
</body>
</html>