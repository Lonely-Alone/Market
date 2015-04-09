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
    
    <title>《<s:property value="#request.good.name"/> 》</title>
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
		<div ><img src="<s:property value='#request.good.imgUrl'/>" class="detail_img"></div>
		<div class="detail_div2">
			<ul>
				<li>
					<span class="detail_div2_1"><s:property value="#request.good.name"/></span>
				</li>
				<li>
					<span class="detail_div2_2">( <s:property value="#request.good.description"/>  )</span>
				</li>
				<li>
					<hr align="center"  />
				</li>
				<li>
					<span style="text-decoration:line-through;">定&emsp; &emsp;价：￥ <s:property value="#request.good.showPrice"/> </span>
				</li>
				<li>
					<span >现&emsp; &emsp;价：</span><span style="color:red;font-size:16px;font-weight:bold;margin-left:-58px;">￥  <s:property value="#request.good.realPrice"/></span>
				</li>
				<li>
					<span >生产厂商：  <s:property value="#request.good.publisher"/> </span>
				</li>
				<li>
					<span >出产时间： <s:property value="#request.good.publishTime"/> </span>
				</li>
				<li>
					<hr align="center" />
				</li>
				<li>
					<span class="f14">购买数量：</span>
					<input type="number" value="1" min="1" max="<s:property value='#request.good.leftCount'/>"class="number" />		
				</li>
				<li>
					<button type="button" id="addToCart" goodId="<s:property value='#request.good.id'/>">加入购物车</button>
				</li>
			</ul>
		</div>
	</div>
  </body>
  
</html>
