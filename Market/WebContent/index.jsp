<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
</head>
<link rel="stylesheet" type="text/css" href="public/css/login.css">
<link rel="stylesheet" type="text/css" href="public/css/common.css">
<script type="text/javascript" src="public/js/min/do.js"></script>
<script type="text/javascript" src="public/js/login.js"></script>
<body>
<jsp:include page="views/head.jsp"></jsp:include>
<div class="constr">
	<div class="header">
		<h1><img width="340" height="120" src="public/img/lili.png"/></h1>
	</div>
	<div class="login_cont">
		<div class="rel">
			<div class="tl"><img width="498" height="239" src="public/img/login/main_test.png"/></div>
			<div class="login_box bdrad3 boxsh rel fix">
				<div class="login_input_area l">
					<div class="fix">
						<span class="login_input_l l">
							<i class="i_person"></i>
						</span>
						<span class="login_input_r l">
							<input id="loginId" class="login_input" type="text" placeholder="账号"/>
						</span>
					</div>
					<div class="mt20 fix">
						<span class="login_input_l l">
							<i class="i_password"></i>
						</span>
						<span class="login_input_r l">
							<input id="password" class="login_input" type="password" placeholder="密码"/>
						</span>
					</div>
					<div class="mt20 pt10 ">
						<a id="login" class="loginbtn bdrad3 boxsh1" href="javascript:;">登录</a>
						<a  class="loginbtn bdrad3 boxsh1" href="/Market/views/register.jsp">注册</a>
					</div>	
				</div>
				<span class="shadow"></span>										
			</div>	
		</div>		
	</div>	
</div>
</body>
</html>