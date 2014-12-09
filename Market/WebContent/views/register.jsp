<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册</title>
<link rel="stylesheet" type="text/css" href="public/css/register.css">
</head>
<script type="text/javascript" src="public/js/min/do.js"></script>
<script type="text/javascript" src="public/js/login.js"></script>
  
  <body>
  <div class="main">
  <h3 style="font-family:楷体">购物中心，欢迎您的加入！</h3>
  <span id="failure" style="color:red"></span>
  	<hr class="hr"></hr>
  	<span style="margin-right:320px;margin-left:20px">立即注册送400积分，赶快注册吧！</span>我已注册，马上<a href="/SuperMarket/LogAndRegister/LogIn.jsp" class="href">登陆&gt;</a>
  	<div class="left">
  		<dl>
  			<dt>账户名：</dt>
			<dd><input type="text" name="userName" id="userName"  placeholder='用户名/邮箱' class="text"> 
			<span class="err" id="errName" style="font-size:10px;color:red"></span> </dd>
		</dl>
		<dl>
			<dt >密码:</dt>
			<dd><input type="password" name="password1" id="password1"  class="text" >
  			<label  class="err" id="errPass1"></label></dd>
  		</dl>
  		<dl>
			<dt >确认密码:</dt>
			<dd><input type="password" name="password2" id="password2"  class="text" >
  			<label  class="err" id="errPass2" ></label></dd>
  		</dl>
  		<dl>
  			<dd><input type="submit" name="button"  value="同意协议并注册" id="regist" class="sub" ></dd>
  			<dd><a  target="_blank" href="#" class="href">&lt;&lt;购物中心服务协议&gt;&gt;</a></dd>
  		</dl>
  	</div>
  	<div class="right">
  		<h5 style="margin-top:40px;margin-right:50px;margin-left:50px;">手机快速注册</h5>
  		<hr style="margin-top:0px;margin-right:50px;margin-left:50px;"></hr>
  		<center>中国大陆手机用户，</center>
  		<p>
	  		<span style="margin-left:20px">编辑短信</span>
	  		<span style="color:#CC0000;font-size:25px">"LLL"</span>
	  		<span>发送到：</span>
  		</p>
  		<p style="margin-left:20px"><span style="color:#CC0000;font-size:25px">100027281</span></p>
  	</div>
  	
  	
  	
  	
  	
  </div>
  
  
    
  </body>
</html>
