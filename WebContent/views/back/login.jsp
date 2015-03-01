<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台登录页面</title>
</head>
<body>
<form action="/Market/login_back.action" method="post">
	<div class="constr tc">
		<div class="login_box auto bgwh">
			<div class="p10 bgblue"></div>
			<p class="mt20 pt10">
				<span>登录名:</span>
				<input name="loginId" class=" pct60 input" type="text" />
			</p>	
			<p class="mt10 mb20">
				<span class="ml10 pl2">密码:</span>
				<input name="password" class="pct60 input" type="password" />
			</p>
			<p>
				<input type="submit" class="bluebtn btn_m bdrad3" value="登录">
			</p>
		</div>
	</div>
</form>
</body>
</html>
