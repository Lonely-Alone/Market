<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c"  uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>首页面</title>

<link rel="stylesheet" type="text/css" href="public/css/main.css">
<link rel="stylesheet" type="text/css" href="public/css/common.css">
</head>
<body>

	<jsp:include page="/views/head.jsp"></jsp:include>
	<div class="main_search">
				<input type="text" /> 
				<a href="javascript:;" onclick="">搜索</a>
	</div>
	<div class="mt20">
		<div class="main_menu2">
			<div class="main_menu2_li_1">
				<a href="javascript:;" >商品全部分类</a>
				<div class="ml10">
					<span>
						<a href="/Market/views/good/goodMain.jsp">图书</a>、<a href="javascript:;">音像</a>、<a href="javascript:;">数字商品</a>
					</span>
					<span>
						<a href="javascript:;">家用电器</a> <a href="javascript:;">手机</a>、<a href="javascript:;">数码</a> 
					</span>
					<span>
						<a href="javascript:;">电脑、办公</a> </span><br /> <span><a href="javascript:;">家居</a>、<a href="javascript:;">家具</a>、<a href="javascript:;">家装</a>、<a href="javascript:;">厨具</a> 
					</span>
					<span><a
						href="javascript:;">服饰内衣</a> <a href="javascript:;">个护化妆</a> 
					</span>
					<span>
						<a href="javascript:;">鞋靴</a>、<a href="javascript:;">箱包</a>、<a href="javascript:;">钟表</a>、<a href="javascript:;">珠宝</a> 
					</span>
					<span>
						<a href="javascript:;">运动健康</a> <a href="javascript:;">汽车用品</a> 
					</span>
					<span>
						<a href="javascript:;">母婴</a>、<a href="javascript:;">玩具乐器</a> </span><br /> <span><a href="javascript:;">食品饮料、保健食品</a> 
					</span>
					<span>
						<a href="javascript:;">彩票</a>、<a href="javascript:;">旅行</a>、<a href="javascript:;">充值</a>、<a href="javascript:;">票务</a> 
					</span>
				</div>
			</div>

		</div>
		<div class="main_menu3">
			<ul>
				<li><a href="javascript:;" >首页</a></li>
				<li><a href="javascript:;" >服装城</a></li>
				<li><a href="javascript:;" >购物超市</a></li>
				<li><a href="javascript:;" >电器城</a></li>
				<li><a href="javascript:;" >书城</a></li>
				<li><a href="javascript:;" >团购</a></li>
				<li><a href="javascript:;" ></a></li>
				<li><a href="javascript:;" ></a></li>
			</ul>
		</div>
		<div class="dhooo_tab">
			<ul class="tab_btn" id="numberScroll">
				<li class="hot">1</li>
				<li>2</li>
				<li>3</li>
				<li>4</li>
			</ul>
			<div class="scroll" id="picScroll">
				<ul class="content">
					<li><a href="javascript:;"><img src="public/img/roll1.jpg" /></a>
					</li>
					<li><a href="javascript:;"><img src="public/img/roll2.jpg" /></a>
					</li>
					<li><a href="javascript:;"><img src="public/img/roll3.jpg" /></a>
					</li>
					<li><a href="javascript:;"><img src="public/img/roll4.jpg" /></a>
				</ul>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="public/js/min/do.js"></script>
<script type="text/javascript" src="public/js/main.js"></script>
</html>
