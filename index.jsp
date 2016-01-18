<%@ page language="java" contentType="text/html; charset=utf-8"  
    pageEncoding="utf-8"%>

<script type="text/javascript">
var contextPath='<%=request.getContextPath()%>';
</script>

<!DOCTYPE>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>圈圈</title>

		<link type="text/css" rel="stylesheet" href="css/ui-checkbox.css">
		<link type="text/css" rel="stylesheet" href="css/checkbox-theme-default.css">
		<link type="text/css" rel="stylesheet" href="css/ui-dialogs.css">
		<link type="text/css" rel="stylesheet" href="css/dialogs-theme-default.css">
		<link type="text/css" rel="stylesheet" href="css/select-theme-default.css">
		<link type="text/css" rel="stylesheet" href="css/dropdown-theme-default.css">
		<link type="text/css" rel="stylesheet" href="css/modules.css">
		<link type="text/css" rel="stylesheet" href="css/ui-dropdown.css">
		<link type="text/css" rel="stylesheet" href="css/ui-select.css">
		<link type="text/css" rel="stylesheet" href="css/common.css">		
		<link type="text/css" rel="stylesheet" href="css/ui-pager.css">

		<script type="text/javascript" src="resouces/vendor/echarts.js"></script>
		<script type="text/javascript" src="resouces/vendor/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="resouces/vendor/angular.js"></script>
		<script type="text/javascript" src="resouces/vendor/angular-sanitize.js"></script>
		<script type="text/javascript" src="resouces/vendor/angular-ui-router.js"></script>
		<script type="text/javascript" src="resouces/vendor/lodash.min.js"></script>
		<script type="text/javascript" src="resouces/lab/ui.js"></script>
		<script type="text/javascript" src="resouces/lab/ui.echarts.js"></script>
		<script type="text/javascript" src="resouces/lab/ui.charts.js"></script>
		<script type="text/javascript" src="resouces/lab/ui.buttons.js"></script>
    	<script type="text/javascript" src="resouces/lab/ui.checkbox.js"></script>
		<script type="text/javascript" src="resouces/lab/ui.transition.js"></script>
		<script type="text/javascript" src="resouces/lab/ui.carousel.js"></script>
		<script type="text/javascript" src="resouces/lab/ui.modal.js"></script>
		<script type="text/javascript" src="resouces/lab/ui.dialogs.js"></script>
		<script type="text/javascript" src="resouces/lab/ui.pager.js"></script>
		<script type="text/javascript" src="resouces/lab/raphael.js"></script>
		<script type="text/javascript" src="resouces/lab/ui.select.js"></script>
		<script type="text/javascript" src="resouces/lab/ui.dropdown.js"></script>
		<script type="text/javascript" src="resouces/lab/ui.position.js"></script>
    	<script type="text/javascript" src="js/main.js"></script>
		<script type="text/javascript" src="js/router.js"></script>
		<script type="text/javascript" src="js/services.js"></script>
		<script type="text/javascript" src="js/index.ctrl.js"></script>
	</head>
	<body>
		<div  ng-include src="'views/nav.html'"></div>
		<div id="main" ui-view="main"></div>
		<div  ui-session-out ng-controller="sessionOutCtrl" style="width:290px;position:fixed;top:150px;left:500px;z-index:1000" >
			<div class="modal-content" ng-if="visible">
				<div class="modal-header">
					<h4 class="modal-title text-info">session 失效,请点击重新登录</h4></div>
					<div class="modal-body text-info" ng-bind-html="msg"></div><div class="modal-footer">
					<button type="button" class="btn btn-primary" ng-click="loginAgain()">重新登录</button>
				</div>
			</div>
		</div>
		<div id="footer">
			<p>版权所有© Copyright 2015 杭州亚信软件有限公司  浙ICP备11024936 中国·杭州黄龙时代广场</p>
		</div>
		<script type="text/javascript">
			function getToken(){
				 var token ='dddf12e31044e74579e023721dd4df47';
				return token;
			}
			(function(){
				//启动
				angular.bootstrap(document.getElementsByTagName('html')[0],['ui']);
			})();
		</script>
	</body>
</html>
