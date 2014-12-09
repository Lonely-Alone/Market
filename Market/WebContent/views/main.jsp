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
<script type="text/javascript" src="public/js/min/do.js"></script>
<script type="text/javascript" src="public/js/main.js"></script>

<body>

	<jsp:include page="head.jsp"></jsp:include>
	<div class="main_search">
				<input type="text" /> 
				<a href="javascript:;" onclick="">搜索</a>
	</div>
	<div class="mt20">
		<div class="main_menu2">
			<div class="main_menu2_li_1">
				<a href="#" >商品全部分类</a>
				<div class="ml10">
					<span>
						<a href="/Market/views/bookMain.jsp">图书</a>、<a href="#">音像</a>、<a href="#">数字商品</a>
					</span>
					<span>
						<a href="#">家用电器</a> <a href="#">手机</a>、<a href="#">数码</a> 
					</span>
					<span>
						<a href="#">电脑、办公</a> </span><br /> <span><a href="#">家居</a>、<a href="#">家具</a>、<a href="#">家装</a>、<a href="#">厨具</a> 
					</span>
					<span><a
						href="#">服饰内衣</a> <a href="#">个护化妆</a> 
					</span>
					<span>
						<a href="#">鞋靴</a>、<a href="#">箱包</a>、<a href="#">钟表</a>、<a href="#">珠宝</a> 
					</span>
					<span>
						<a href="#">运动健康</a> <a href="#">汽车用品</a> 
					</span>
					<span>
						<a href="#">母婴</a>、<a href="#">玩具乐器</a> </span><br /> <span><a href="#">食品饮料、保健食品</a> 
					</span>
					<span>
						<a href="#">彩票</a>、<a href="#">旅行</a>、<a href="#">充值</a>、<a href="#">票务</a> 
					</span>
				</div>
			</div>

		</div>
		<div class="main_menu3">
			<ul>
				<li><a href="#" class="hide" style="backgroudcolor:#fff">首页</a>
				</li>
				<li><a href="#" class="hide">服装城</a>
				</li>
				<li><a href="#" class="hide">购物超市</a>
				</li>
				<li><a href="#" class="hide">电器城</a>
				</li>
				<li><a href="#" class="hide">书城</a>
				</li>
				<li><a href="#" class="hide">团购</a>
				</li>
				<li><a href="#" class="hide"></a>
				</li>
				<li><a href="#" class="hide"></a>
				</li>
			</ul>
		</div>
		<div class="main_container" id="idTransformView">
			<ul class="main_slider" id="idSlider">
				<li><img src="public/img/roll1.jpg" />
				</li>
				<li><img src="public/img/roll2.jpg" />
				</li>
				<li><img src="public/img/roll3.jpg" />
				</li>
				<li><img src="public/img/roll4.jpg" />
				</li>
			</ul>
			<ul class="main_num" id="idNum">
				<li>1</li>
				<li>2</li>
				<li>3</li>
				<li>4</li>
			</ul>
		</div>
	</div>
</body>



</html>
