<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>《华尔街之狼》-购物网站</title>
    <link rel="stylesheet" type="text/css" href="public/css/common.css">
	<link rel="stylesheet" type="text/css" href="public/css/good.css">
	<script type="text/javascript" src="public/js/min/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="public/js/good.js"></script>
  </head>
  
  <body >
	 <div class="header">
	  	<jsp:include page="/views/head.jsp"></jsp:include>
	  </div>
	<div class="detail">
		<div ><img src="public/img/book/huaerjie.jpg" class="detail_img"></div>
		<div class="detail_div2">
			<ul>
				<li>
					<span class="detail_div2_1">华尔街之狼</span>
				</li>
				<li>
					<span class="detail_div2_2">马丁·斯科塞斯执导、莱昂纳多主演的奥斯卡热门同名电影《华尔街之狼》原版自传！金钱、贪婪、罪恶和救赎共铸的震撼大戏，在关于人与钱的危险关系里洞察残酷而真实的人性。</span>
				</li>
				<li>
					<hr align="center"  />
				</li>
				<li>
					<span style="text-decoration:line-through;">定&emsp; &emsp;价：￥ 48 </span>
				</li>
				<li>
					<span >现&emsp; &emsp;价：</span><span style="color:red;font-size:16px;font-weight:bold;margin-left:-58px;">￥  35.60</span>
				</li>
				<li>
					<span >生产厂商：  中信出版社 </span>
				</li>
				<li>
					<span >出产时间： 2014年1月</span>
				</li>
				<li>
					<hr align="center" />
				</li>
				<li>
					<span class="f14">购买数量：</span>
					<input type="number" value="1" min="1" max="198"class="number" />		
				</li>
				<li>
					<button type="button" id="addToCart" goodId="0">加入购物车</button>
				</li>
			</ul>
		</div>
	</div>
  </body>
  
</html>
