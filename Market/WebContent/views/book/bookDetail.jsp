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
    
    <title>《<s:property value="#request.goods.name"/> 》</title>
    <link rel="stylesheet" type="text/css" href="public/css/common.css">
	<link rel="stylesheet" type="text/css" href="public/css/bookDetail.css">
	<script type="text/javascript" src="public/js/min/do.js"></script>
	<script type="text/javascript" src="public/js/book.js"></script>
  </head>
  
  <body >
 
    <jsp:include page="/views/head.jsp"></jsp:include>
    <div class="detai">
		<h2 ><a href="#">图书 &gt;</a></h2>
		<span><a href="#">计算机与互联网&gt;</a><a href="#">编程语言与程序设计</a></span>
	</div>
	<div class="detail_l"></div>
	
	<div class="detail_c">
		<div class="detail_c_img"><img src='public/img/javaBook/<s:property value='#request.goods.id'/>.jpg'></div>
		<div class="detail_c_div2">
			<ul>
				<li>
					<span class="detail_c_div2_1"><s:property value="#request.goods.name"/></span>
				</li>
				<li>
					<span class="detail_c_div2_2">( <s:property value="#request.goods.description"/>  )</span>
				</li>
				<li>
					<hr align="center"  />
				</li>
				<li>
					<span style="text-decoration:line-through;">定&emsp; &emsp;价：￥ <s:property value="#request.goods.price"/> </span>
				</li>
				<li>
					<span >现&emsp; &emsp;价：</span><span style="color:red;font-size:16px;font-weight:bold;margin-left:-58px;">￥  ${book.sellPrice}</span>
				</li>
				<li>
					<span >作 &emsp; &emsp;者：  <s:property value="#request.goods.author"/>  著</span>
				</li>
				<li>
					<span >出 &ensp;版 &ensp;社：  <s:property value="#request.goods.publisher"/> </span>
				</li>
				<li>
					<span >出版时间： <s:property value="#request.goods.publishTime"/> </span>
				</li>
				<li>
					<hr align="center" />
				</li>
				<li>
					<span class="f14">购买数量：</span>
					<span class="ml5">	
						<a href="javascript:;"  class="reduceNum">—</a>
						<input type="text" value="1" id="num" />		
						<a href="javascript:;" class="addNum">+</a>	
					</span>		
				</li>
				<li>
					<button type="button" id="addToCart" goodsId="<s:property value='#request.goods.id'/>">加入购物车</button>
				</li>
			</ul>
		</div>
		
				
	</div>
  </body>
  
</html>
