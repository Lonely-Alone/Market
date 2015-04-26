<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>Java</title>
<link rel="stylesheet" type="text/css" href="public/css/good.css">
<link rel="stylesheet" type="text/css" href="public/css/common.css">
<script type="text/javascript" src="public/js/min/jquery-1.8.3.js"></script>



</head>

<body>
<div class="container">
  <div class="header">
  	<jsp:include page="/views/head.jsp"></jsp:include>
  </div>
  <div class="mainContent" > 
	<div class="goodlist">
		<h2><a href="#"><s:property value="%{#request.goodType}"/> &gt;</a></h2>
		<span><a href="#"></a></span>
	</div>
	<div class="goods_center" >
		<hr>
			<s:iterator   value="# request.goodList" id="good" >
				<div class="goods_img">
					<a href="" ><img src="<s:property value='#good.imgUrl'/>" width="260px"></a>
				</div>
				<div class="goods_detail">
					<ul>
						<li>
							<a href="/Market/getGood.action?id=${good.id}" class="f16 b"><s:property value="#good.name"/></a>
						</li>
						<li class="desc"><s:property value="#good.description"/></li>
						<li>
							<span >现价:</span><span style="color:red;font-weight:bold;">￥ <s:property value="#good.realPrice"/> </span>
						</li>
						<li>
						<span class="lh">定价：￥ <s:property value="#good.showPrice"/></span>
						</li>
						<li>
							<hr align="center"  class= "hrd" />
						</li>
						<li>
							<span>生产厂家:  <s:property value="#good.author"/></span>
						</li>
						<li>
							<span>生产日期： <s:property value="#good.publishTime"/></span>
						</li>
						<li>
							<a href="/Market/addToCart.action?id=${good.id}" target="_blank" class="addbutton" >加入购物车</a>
						</li>
					</ul>
				</div>
				<div>
					<hr   class= "cut_off " />
				</div>
				
		 </s:iterator  >
		  <div class="page">
			<jsp:include page="/views/application/paging.jsp"></jsp:include>
		 </div>
	</div>
	</div>
</div>
</body>
</html>
