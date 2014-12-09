<%@ page language="java" import="java.util.*,app.models.member.Member" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	Member member  = (Member)session.getAttribute("member");
%>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Head1.jsp' starting page</title>
	
<link rel="stylesheet" type="text/css" href="public/css/head.css">

  </head>
  
  <body>
  	
		
			<div class="head_top">
				<ul class="head_menu">
					<li>
							<s:if test="#session.member.username != null && !#session.member.username.isEmpty()">
								您好！ <s:property value="#session.member.username"/>  &emsp;
								<a href="/Market/logout.action">[退出]</a>
							</s:if>
							<s:else >
								您好！欢迎来到购物中心！ 
								<a href="/Market">[登录]</a>
								<a href="/Market/views/application/register.jsp">[免费注册]</a>
							</s:else>
					</li>
					<li><a href="#">我的订单</a> </li>
					<li><a href="#" >手机购物</a></li>
					<li  class="head_li1">客户服务 
						<ul>
							<li > <a href="#" >常见问题</a> </li>
							<li > <a href="#" >售后服务</a> </li>
							<li > <a href="#" >在线客服</a> </li>
							<li > <a href="#" >投诉中心</a> </li>
							<li > <a href="#" >客服邮箱</a> </li>
						</ul>  
					</li>
					
					<li  class="head_li2"> 网站导航
							<ul>
							<li> <span >购物</span> </li>
							<li> <a href="#" >图书</a> </li>
							<li> <a href="#" >数码</a> </li>
							<li> <a href="#" >服饰</a> </li>
							<li> <a href="#" >食品</a> </li>
							<li> <span >生活</span> </li>
							<li> <a href="#" >商旅</a> </li>
							<li> <a href="#" >保险</a> </li>
							<li> <a href="#" >游戏</a> </li>
							<li> <a href="#" >水电</a> </li>
							<li> <span >娱乐</span> </li>
							<li> <a href="#" >电影</a> </li>
							<li> <a href="#" >玩具</a> </li>
							<li> <a href="#" >棋牌麻将</a> </li>
							<li> <a href="#" >游戏机</a> </li>
						</ul>
					</li>
				</ul>
		</div>
		
  </body>
</html>
