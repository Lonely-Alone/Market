<%@ page language="java" import="java.util.*,app.models.enums.GoodType" pageEncoding="UTF-8"%>
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

<title>首页面</title>
<link rel="stylesheet" type="text/css" href="public/css/common.css">
<link rel="stylesheet" type="text/css" href="public/css/main.css">
<script type="text/javascript" src="public/js/min/jquery-1.8.3.js"></script>
<script type="text/javascript" src="public/js/main.js"></script>
</head>
<body>
<div class="container">
  	<div class="header">
  		<jsp:include page="/views/head.jsp"></jsp:include>
  	</div>
 	<div class="search">
  		<input type="text" class="l search_input"/> 
		<div class="searchBtn"><a href="javascript:;" >搜索</a></div>
  	</div>
  	<div class="mainContent"> 
		<div class="sidebar1">
			<div class="title"><a href="javascript:;" >商品全部分类</a></div>
			<div class="navigation1">
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
		<div class="content">
			<div class="navigation2" >
				<ul>
					<li><a href="javascript:;">首页</a></li>
					<li><a href="/Market/fetchGoods.action?type=2">服装城</a></li>
					<li><a href="javascript:;" >购物超市</a></li>
					<li><a href="javascript:;" >电器城</a></li>
					<li><a href="javascript:;" >书城</a></li>
					<li><a href="javascript:;" >团购</a></li>
					<li><a href="javascript:;" ></a></li>
					<li><a href="javascript:;" ></a></li>
				</ul>
			</div>
			<div class="slide_area">
			    <ul id="slideImg" class="slide_list">
			        <li ><a href="javascript:;"><img width="100%" height="100%" src="public/img/roll1.jpg" /></a></li>
					<li class="dn"><a href="javascript:;"><img height="100%" width="100%" src="public/img/roll2.jpg" /></a></li>
					<li class="dn"><a href="javascript:;"><img height="100%" width="100%" src="public/img/roll3.jpg" /></a></li>
					<li class="dn"><a href="javascript:;"><img height="100%" width="100%" src="public/img/roll4.jpg" /></a></li>
			    </ul>
			    <ul id="slideMod" class="action l"> 
			      <li class="mod current" data="1">1</li>  
			        <li class="mod" data="2">2</li>    
			        <li class="mod" data="3">3</li>    
			        <li class="mod" data="4">4</li>
			    </ul>
		  </div>
			<div class="notice">
				<div class="news">
					<span>最新消息</span>
				</div>
				<div class="board">
					<ul>
						<li><a href="javascript:;" class="r"><span>[特惠]</span>iphone秒杀价5288</a></li>
						<li><a href="javascript:;" class="r"><span>[公告]</span>关于假冒客服诈骗的声明</a></li>
						<li><a href="javascript:;" class="r"><span>[特惠]</span>iphone秒杀价5288</a></li>
						<li><a href="javascript:;" class="r"><span>[公告]</span>关于假冒客服诈骗的声明</a></li>
						<li><a href="javascript:;" class="r"><span>[特惠]</span>iphone秒杀价5288</a></li>
					</ul>
				</div>
			</div>		
		</div>
	</div>
</div>
<script type="text/javascript" src="public/js/slide.js"></script>
</body>
</html>
