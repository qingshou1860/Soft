<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript"
	src="http://libs.useso.com/js/jquery/1.7.2/jquery.min.js"></script>
<script src="js/main.js"></script>
</head>
<body>
	<div id="main">
		<div class="demo">
			<nav class="main_nav">
			<ul>
				<li><a class="cd-signin" href="#0">登录</a></li>
			</ul>
			</nav>
		</div>
		<div class="cd-user-modal">
			<div class="cd-user-modal-container">
				<ul class="cd-switcher">
					<li><a href="#0">用户登录</a></li>
				</ul>
				<div id="cd-login">
					<!-- 登录表单 -->
					<form class="cd-form">
						<p class="fieldset">
							<label class="image-replace cd-username" for="signin-username">用户名</label>
							<input class="full-width has-padding has-border"
								id="signin-username" type="text" placeholder="输入用户名">
						</p>

						<p class="fieldset">
							<label class="image-replace cd-password" for="signin-password">密码</label>
							<input class="full-width has-padding has-border"
								id="signin-password" type="text" placeholder="输入密码">
						</p>

						<p class="fieldset">
							<input type="checkbox" id="remember-me" checked> <label
								for="remember-me">记住登录状态</label>
						</p>

						<p class="fieldset">
							<input class="full-width2" type="submit" value="登 录">
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
