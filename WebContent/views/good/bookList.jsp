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
<link rel="stylesheet" type="text/css" href="public/css/layout.css">
<link rel="stylesheet" type="text/css" href="public/css/programmingJava.css">
<link rel="stylesheet" type="text/css" href="public/css/common.css">
<link rel="stylesheet" type="text/css" href="public/css/bookMain.css">
<link rel="stylesheet" type="text/css" href="public/css/programmingBook.css">
<script type="text/javascript" src="public/js/min/do.js"></script>
<script type="text/javascript" src="public/js/min/jquery-1.8.3.js"></script>
<script type="text/javascript" src="public/js/book.js"></script>



</head>

<body>

<div class="container">
  	<div class="header">
  		<jsp:include page="/views/head.jsp"></jsp:include>
  	</div>
  	<div class="mainDiv"> 
	<div class="booklist">
		<h2><a href="#">图书 &gt;</a></h2>
		<span><a href="#">编程语言与程序设计</a></span>
	</div>

	<div class="goods_center">
		<hr>
			<s:iterator   value="# request.goodList" id="book" >
				<div class="goods_img">
					<a href="" ><img src="public/img/javaBook/${book.id}.jpg"></a>
				</div>
				<div class="goods_detail">
					<ul>
						<li>
							<a href="/Market/getGoods.action?goodsId=${book.id}" class="f16 b"><s:property value="#book.name"/></a>
						</li>
						<li class="desc"><s:property value="#book.description"/></li>
						<li>
							<span >现价:</span><span style="color:red;font-weight:bold;">￥ <s:property value="#book.price"/> </span>
						</li>
						<li>
						<span class="lh">定价：￥ <s:property value="#book.price"/></span>
						</li>
						<li>
							<hr align="center"  class= "hrd" />
						</li>
						<li>
							<span>作 &emsp; &emsp;者:  <s:property value="#book.author"/>著</span>
						</li>
						<li>
							<span>出 &ensp;版 &ensp;社：  <s:property value="#book.publisher"/></span>
						</li>
						<li>
							<span>出版时间： <s:property value="#book.publishTime"/></span>
						</li>
						<li>
							<a href="javascript:;" target="_blank" class="addbutton" goodsId ="${book.id}">加入购物车</a>
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
<script type="text/javascript">

	function addGoods(id){
  		 window.open("/Market/addgoods.do?method=addGoods&id="+id+"&num=1");
  		 
  	}

</script>
</html>
