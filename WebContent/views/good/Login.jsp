<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>登录页面</title>
</head>
<link rel="stylesheet" type="text/css" href="public/css/common.css">
<link rel="stylesheet" type="text/css" href="public/css/login.css">
	<link rel="stylesheet" type="text/css" href="public/js/sobox/style.css">
<script type="text/javascript" src="public/js/min/jquery-1.8.3.js"></script>
<body class="wh">
<div class="container" >
  <div class="mainContent">    
    <div class="constr" >
				<div class="tc" style="margin-top:30px;margin-left:100px;">
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
							<a id="login" class="loginbtn bdrad3 boxsh1" href="javascript:;" >登录</a>
							<a  class="loginbtn bdrad3 boxsh1" href="/Market/views/application/register.jsp" target="_blank">注册</a>
						</div>	
					</div>
				</div>	
			</div>		
		</div>	
	</div>
</body>
<script type="text/javascript" src="public/js/min/jquery-1.8.3.js"></script>
<script type="text/javascript" src="public/js/sobox/jquery.sobox.min.js"></script>
<script type="text/javascript" >
var loginInput = $("#loginId"),passwordInput=$("#password"),loginBtn = $("#login");
loginBtn.click(function(){
	var loginId = $.trim(loginInput.val()),password = $.trim(passwordInput.val());
	if(loginId.length<1){
		$.sobox.alert('提示','<b class="red">账号不能为空</b>');
		return;
	}
	if(password.length<1){
		$.sobox.alert("提示",'<b class="red">密码不能为空</b>');
		return;
	}
	$.ajax({
		type:'post',
		url:"/Market/login.action",
		data:{
			loginId:loginId,
			password:password
		},
	   success: function(msg){
		   	parent.location.reload();
		   	parent.soIframe[0].removePop();
	   }
	});
	
})



</script>
</html>