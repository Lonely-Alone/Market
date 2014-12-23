<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>书城</title>
<link rel="stylesheet" type="text/css" href="public/css/bookMain.css">
<link rel="stylesheet" type="text/css" href="public/css/sort.css">
<link rel="stylesheet" type="text/css" href="public/css/common.css">
<script type="text/javascript" src="public/js/min/do.js"></script>
</head>
<body>
<div class="header">
	<div >
		<jsp:include page="/views/head.jsp"></jsp:include>
	</div>	
	<div class="search">
				<input type="text" /> 
				<a href="javascript:;" onclick="">搜索</a>
	</div>
	<div class="h">
		<h2>
			<a href="#">图书</a>
		</h2>
		<span> 
			<a href="#" target="_blank">电子书</a>&nbsp;|&nbsp;
			<a href="#" target="_blank">音像</a>&nbsp;|&nbsp;
			<a href="#" target="_blank">在线读书</a>&nbsp;|&nbsp;
			<a href="#" target="_blank">团购</a>&nbsp;|&nbsp;
			<a href="#" target="_blank">版税补贴</a>&nbsp;|&nbsp;
			<a href="#" target="_blank">图书榜</a>&nbsp;|&nbsp;
			<a href="#" target="_blank">新书榜</a>&nbsp;|&nbsp;
			<a href="#" target="_blank">特价</a>&nbsp;|&nbsp;
			<a href="#" target="_blank">预售</a>&nbsp;|&nbsp;
			<a href="#" target="_blank">所有图书分类</a>
		</span>
	</div>

</div>

<div class="l">
	<jsp:include page="leftTag.jsp"></jsp:include>
</div>
<div class="tc mt50">
	<div class="dhooo_tab1">
		<ul class="tab_btn_1" id="myTab_btns2">
			<li class="hot">1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
			<li>5</li>
		</ul>
		<div class="main1" id="main2">
			<ul class="content">
				<li><a href="#"><img src="public/img/book/book1.jpg" /></a></li>
				<li><a href="#"><img src="public/img/book/book2.jpg" /></a></li>
				<li><a href="#"><img src="public/img/book/book3.jpg" /></a></li>
				<li><a href="#"><img src="public/img/book/book4.jpg" /></a></li>
				<li><a href="#"><img src="public/img/book/book5.jpg" /></a></li>
				<li><a href="#"><img src="public/img/book/book6.jpg" /></a></li>
			</ul>
		</div>
	</div>
	<div class="dhooo_tab">
		<h2>分类推荐</h2>
		<ul class="tab_btn" id="myTab_btns1">
			<li class="hot">文学</li>
			<li style="display:none"></li>
			<li>小说</li>
			<li style="display:none">
			<li>励志</li>
			<li style="display:none">
			<li>社科</li>
			<li style="display:none">
			<li>计算机互联网</li>
		</ul>
		<div class="main" id="main1">
			<div class="shell">
				<ul id="content1">
					<li>
						<div style="margin-bottom:50px;">
							<div style="float:left">
								<a href="#"><img src="public/img/book/musong.jpg" />
								</a>
							</div>
							<div>
								<span><a href="#"
									style="font-size:15px;margin-bottom:20px">目送，龙应台“人生三书”第三部</a>
								</span><br> <span
									style="TEXT-DECORATION: line-through;margin-top:20px;display:block">定价：￥43.00</span><span
									style="color:red;margin-left:10px">现价：￥31.00（7.5折）</span><br />
								<span style="display:block;margin-bottom:20px;width:700px">华人世界率性犀利的一枝笔，龙应台独家授权《龙应台“人生三书”之三：目送（彩插新版）》6周年经典新版，花枝春满，悲欣交集，跨三代共读的人生之书，《目送：龙应台“人生三书”之三（彩插新版）》，2014年简体字经典新版</span>
							</div>
						</div>
						<br>
						<div>
							<div style="float:left;">
								<a href="#"><img src="public/img/book/nvwang.jpg" />
								</a><br /> <a href="#">女王乔安</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥29.00</span><br>
								<span style="color:red;">现价：￥22.00</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/bushengxin.jpg" />
								</a><br> <a href="#">不省心</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥53.00</span><br>
								<span style="color:red;">现价：￥31.00</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/qunijiawan.jpg" />
								</a><br> <a href="#">去你家玩好嗎</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥29.00</span><br>
								<span style="color:red;">现价：￥21.00</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/aiqing.jpg" />
								</a><br> <a href="#">爱情公寓4：创作</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥38.00</span><br>
								<span style="color:red;">现价：￥26.20</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/fayi.jpg" />
								</a><br> <a href="#">大发衣：死亡翻译人</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥29.80</span><br>
								<span style="color:red;">现价：￥17.00</span><br />
							</div>
						</div></li>
					<li style="margin-left:-30px">
						<div style="margin-bottom:50px;">
							<div style="float:left;">
								<a href="#"><img src="public/img/book/huaerjie.jpg" />
								</a>
							</div>
							<div>
								<span><a href="#"
									style="font-size:15px;margin-bottom:20px">华尔街之狼</a>
								</span><br> <span
									style="TEXT-DECORATION: line-through;margin-top:20px;display:block">定价：￥45.00</span><span
									style="color:red;margin-left:10px">现价：￥35.60（8折）</span><br /> <span
									style="display:block;margin-bottom:20px;width:700px">马丁·斯科塞斯执导、莱昂纳多主演的奥斯卡热门同名电影《华尔街之狼》原版自传！金钱、贪婪、罪恶和救赎共铸的震撼大戏，在关于人与钱的危险关系里洞察残酷而真实的人性。</span>
							</div>
						</div>
						<br>
						<div>
							<div style="float:left;">
								<a href="#"><img src="public/img/book/hougong.jpg" />
								</a><br /> <a href="#">后宫：如懿传</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥29.00</span><br>
								<span style="color:red;">现价：￥22.00</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/taoli.jpg" />
								</a><br> <a href="#">逃离</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥53.00</span><br>
								<span style="color:red;">现价：￥31.00</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/moli.jpg" />
								</a><br> <a href="#">莫里亚克精品集（套装上下册）</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥98.00</span><br>
								<span style="color:red;">现价：￥65.70</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/suma.jpg" />
								</a><br> <a href="#">苏麻喇姑</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥38.00</span><br>
								<span style="color:red;">现价：￥26.20</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/jixie.jpg" />
								</a><br> <a href="#">机械人生</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥29.80</span><br>
								<span style="color:red;">现价：￥17.00</span><br />
							</div>
						</div></li>
					<li style="margin-left:-30px">
						<div style="margin-bottom:50px;">
							<div style="float:left;">
								<a href="#"><img src="public/img/book/huaerjie.jpg" />
								</a>
							</div>
							<div>
								<span><a href="#"
									style="font-size:15px;margin-bottom:20px">情商4：决定你人生高度的领导情商</a>
								</span><br> <span
									style="TEXT-DECORATION: line-through;margin-top:20px;display:block">定价：￥45.00</span><span
									style="color:red;margin-left:10px">现价：￥35.60（8折）</span><br /> <span
									style="display:block;margin-bottom:20px;width:700px">国际畅销书《情商》的作者丹尼尔·戈尔曼，联合知名情商研究者和实践者理查德·博亚兹和安妮·麦基，探索了高领导情商所发挥的作用。引用了新的情商模型——即把情商归结为自我意识、自我管理、社会意识和人际关系管理，这种</span>
							</div>
						</div>
						<br>
						<div>
							<div style="float:left;">
								<a href="#"><img src="public/img/book/nvwang.jpg" />
								</a><br /> <a href="#">书都不会读，你还想<br>成功，神奇读书法</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥29.00</span><br>
								<span style="color:red;">现价：￥22.00</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/bushengxin.jpg" />
								</a><br> <a href="#">我的人生哲学：马云<br>献给年轻人的12堂课</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥53.00</span><br>
								<span style="color:red;">现价：￥31.00</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/qunijiawan.jpg" />
								</a><br> <a href="#">把时间当作朋友（第<br>三版）</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥29.00</span><br>
								<span style="color:red;">现价：￥21.00</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/aiqing.jpg" />
								</a><br> <a href="#">向前一步</a><br>
								<a></a><br> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥38.00</span><br>
								<span style="color:red;">现价：￥26.20</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/fayi.jpg" />
								</a><br> <a href="#">高效能人的7个习<br>惯（20周年纪念版）</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥29.80</span><br>
								<span style="color:red;">现价：￥17.00</span><br />
							</div>
						</div></li>
					<li style="margin-left:-40px">
						<div style="margin-bottom:50px;">
							<div style="float:left;">
								<a href="#"><img src="public/img/book/hanzi.jpg" />
								</a>
							</div>
							<div>
								<span><a href="#"
									style="font-size:15px;margin-bottom:20px">汉字树：活在字里的中国人</a>
								</span><br> <span
									style="TEXT-DECORATION: line-through;margin-top:20px;display:block">定价：￥49.00</span><span
									style="color:red;margin-left:10px">现价：￥30.60（6.2折）</span><br />
								<span style="display:block;margin-bottom:20px;width:700px">《汉字树:活在字里的中国人》作者廖文豪先生摆脱了一贯以来依托于偏旁部首的解读方式，从汉字的人文特征入手，重新勾勒了汉字演变的路径，把原本是象形文字的汉字放回图像的脉络来理解，将意义上互有联系的汉字都归拢在了</span>
							</div>
						</div>
						<br>
						<div>
							<div style="float:left;">
								<a href="#"><img src="public/img/book/shidai.jpg" />
								</a><br /> <a href="#">时代的精神状况丛书<br>（套装共3册）</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥114.00</span><br>
								<span style="color:red;">现价：￥90.50</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/zhiri.jpg" />
								</a><br> <a href="#">知日·写真</a><br>
								<a></a><br> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥53.00</span><br>
								<span style="color:red;">现价：￥31.00</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/duihua.jpg" />
								</a><br> <a href="#">与神对话（1-3）<br>（套装共3卷）</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥150.00</span><br>
								<span style="color:red;">现价：￥79.00</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/jiaoyu.jpg" />
								</a><br> <a href="#">吾国教育病理</a><br>
								<a></a><br> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥38.00</span><br>
								<span style="color:red;">现价：￥26.20</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/yanyi.jpg" />
								</a><br> <a href="#">中国历代通俗演义（<br>套装全11册）（附赠</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥580.80</span><br>
								<span style="color:red;">现价：￥290.00</span><br />
							</div>
						</div></li>
					<li style="margin-left:-40px">
						<div style="margin-bottom:50px;">
							<div style="float:left;">
								<a href="#"><img src="public/img/book/Puppet.jpg" />
								</a>
							</div>
							<div>
								<span><a href="#"
									style="font-size:15px;margin-bottom:20px">Puppet实战</a>
								</span><br> <span
									style="TEXT-DECORATION: line-through;margin-top:20px;display:block">定价：￥69.00</span><span
									style="color:red;margin-left:10px">现价：￥55.60（8.2折）</span><br />
								<span style="display:block;margin-bottom:20px;width:700px">InfoQ和51CTO等社区，以及童剑、田逸、南非蜘蛛、程辉等专家推荐，详细讲解Puppet的使用方法，深入剖析Puppet的工作原理，系统总结Puppet的使用技巧，包含大量来自一线的实战案例和最佳实践</span>
							</div>
						</div>
						<br>
						<div>
							<div style="float:left">
								<a href="#"><img src="public/img/book/linux.jpg" />
								</a><br /> <a href="#">Linux运维之道</a><br>
								<a></a><br> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥74.00</span><br>
								<span style="color:red;">现价：￥55.50</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/huawei.jpg" />
								</a><br> <a href="#">华为交换机学习指南</a><br>
								<a></a><br> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥129.00</span><br>
								<span style="color:red;">现价：￥101.00</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/duihua.jpg" />
								</a><br> <a href="#">利用Python进行数<br>据分析</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥150.00</span><br>
								<span style="color:red;">现价：￥79.00</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/ios.jpg" />
								</a><br> <a href="#">iOS 7：iPhone/iPad<br>应用开发技术详解</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥88.00</span><br>
								<span style="color:red;">现价：￥66.20</span><br />
							</div>
							<div style="float:left;margin-left:10px;">
								<a href="#"><img src="public/img/book/java.jpg" />
								</a><br> <a href="#">软件开发视频大讲堂<br>：Java从入门到精通</a> <span
									style="TEXT-DECORATION: line-through;margin-top:10px;display:block">定价：￥58.80</span><br>
								<span style="color:red;">现价：￥40.00</span><br />
							</div>
						</div></li>
					<li><a href="#"><img src="public/img/book/book6.jpg" />
					</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>

<div class="r" style="margin-top:-210px">
	<div class="zixun">
		<h3>图书资讯</h3>
		<ul>
			<li><a href="#">图书影像全场100-20</a></li>
			<li><a href="#">万种童书4.9折封顶</a></li>
			<li><a href="#">精品好书4.9折封顶</a></li>
			<li><a href="#">中小学教辅19-99</a></li>
			<li><a href="#">生活、艺术促销 ，新书5折封</a></li>
			<li><a href="#">经管励志满100减20</a></li>
		</ul>
	</div>
	<div class="hotShop sort1 block yspace" id=DivShopPaiHang_Food>
		<div class=title>
			<span class="b1tl l"></span>
			<ul>
				<li class=current id=DivShopPaiHang_Flag1><span><a
						href="#" target=_blank>图书畅销榜</a>
				</span></li>
				<li id=DivShopPaiHang_Flag2><span><a
						href="#" target=_blank></a>
						<a href="#" target=_blank></a>
						<a href="#" target=_blank>更多》</a>
				</span></li>
				
			</ul>
			<span class="b1tr r"></span>
		</div>
		<div class=txt id=DivShopPaiHang_Flag1_Content class="dn"></div>
		<div class=txt id=DivShopPaiHang_Flag2_Content class="dn"></div>
		<div class=txt id=DivShopPaiHang_Flag3_Content class="dn"></div>
		<div class=txt id=DivShopPaiHang_ShowPanel style="HEIGHT: 265px;">
		<div class=txt11  id="bookSort">
				<ul>
					<li class=more id=DivShopPaiHangFlag1_B1 style="DISPLAY: none">
						<p class="numBig l">
							<span>1</span>
						</p>
						<p class="productImg l">
							<a title=查理九世21：沙海迷国 href="#"
								target=_blank><img id=Img_DivShopPaiHangFlag1_1 height=50
								alt=查理九世21：沙海迷国 width=50>
							</a>
						</p>
						<div class=productInfo>
							<h3>
								<a title=查理九世21：沙海迷国  href="#"
									target=_blank>查理九世21：沙海迷国 ..</a>
							</h3>
							<p><span style="TEXT-DECORATION: line-through;">定价：￥88.00</span><br>
								<span style="color:red;">现价：￥66.20</span><br /></p>
						</div>
						<div id=ImgSrc_DivShopPaiHangFlag1_1 style="DISPLAY: none">public/img/book/chali.jpg</div>
						<span class=cf></span>
					</li>
					<li class="num1 listHeight" id=DivShopPaiHangFlag1_S1
						onMouseOver="SwapPaiHangShopDiv('DivShopPaiHangFlag1','1')"><a
						title=查理九世21：沙海迷国  href="#" target=_blank>查理九世21：沙海迷国 </a>
					<li class=more id=DivShopPaiHangFlag1_B2 style="DISPLAY: none">
						<p class="numBig l">
							<span>2</span>
						</p>
						<p class="productImg l">
							<a title=丹.布朗：地狱 href="#" target=_blank><img
								id=Img_DivShopPaiHangFlag1_2 height=50 alt=丹.布朗：地狱  width=50>
							</a>
						</p>
						<div class=productInfo>
							<h3>
								<a title=丹.布朗：地狱  href="#" target=_blank>丹.布朗：地狱 </a>
							</h3>
							<p><span style="TEXT-DECORATION: line-through;">定价：￥36.00</span><br>
								<span style="color:red;">现价：￥25.20</span><br /></p>
						</div>
						<div id=ImgSrc_DivShopPaiHangFlag1_2 style="DISPLAY: none">public/img/book/danni.jpg</div>
						<span class=cf></span>
					</li>
					<li class="num2 listHeight" id=DivShopPaiHangFlag1_S2
						onMouseOver="SwapPaiHangShopDiv('DivShopPaiHangFlag1','2')"><a
						title=丹.布朗：地狱 href="#" target=_blank>丹.布朗：地狱</a>
					<li class=more id=DivShopPaiHangFlag1_B3 style="DISPLAY: none">
						<p class="numBig l">
							<span>3</span>
						</p>
						<p class="productImg l">
							<a title=冀连人谈：中国人应 href="#" target=_blank><img
								id=Img_DivShopPaiHangFlag1_3 height=50 alt=冀连人谈：中国人应 width=50>
							</a>
						</p>
						<div class=productInfo>
							<h3>
								<a title=冀连人谈：中国人应 href="#" target=_blank>冀连梅谈：中国人应</a>
							</h3>
							<p><span style="TEXT-DECORATION: line-through;">定价：￥38.00</span><br>
								<span style="color:red;">现价：￥27.80</span><br /></p>
						</div>
						<div id=ImgSrc_DivShopPaiHangFlag1_3 style="DISPLAY: none">public/img/book/yilian.jpg</div>
						<span class=cf></span>
					</li>
					<li class="num3 listHeight" id=DivShopPaiHangFlag1_S3
						onMouseOver="SwapPaiHangShopDiv('DivShopPaiHangFlag1','3')"><a
						title=冀连梅谈：中国人应 href="#" target=_blank>冀连梅谈：中国人应</a>
					<li class=more id=DivShopPaiHangFlag1_B4 style="DISPLAY: none">
						<p class="numBig l">
							<span>4</span>
						</p>
						<p class="productImg l">
							<a title=笑猫日记：从外星球来的孩子 href="#"
								target=_blank><img id=Img_DivShopPaiHangFlag1_4 height=50
								alt=笑猫日记：从外星球来的孩子 width=50>
							</a>
						</p>
						<div class=productInfo>
							<h3>
								<a title=笑猫日记：从外星球来的孩 href="#"
									target=_blank>笑猫日记：从外星球来的孩子</a>
							</h3>
							<p><span style="TEXT-DECORATION: line-through;">定价：￥79.00</span><br>
								<span style="color:red;">现价：￥63.20</span><br /></p>
						</div>
						<div id=ImgSrc_DivShopPaiHangFlag1_4 style="DISPLAY: none">public/img/book/riji.jpg</div>
						<span class=cf></span>
					</li>
					<li class="num4 listHeight" id=DivShopPaiHangFlag1_S4
						onMouseOver="SwapPaiHangShopDiv('DivShopPaiHangFlag1','4')"><a
						title=笑猫日记：从外星球来的孩子 href="#" target=_blank>笑猫日记：从外星球来的孩子</a>
					<li class=more id=DivShopPaiHangFlag1_B5 style="DISPLAY: none">
						<p class="numBig l">
							<span>5</span>
						</p>
						<p class="productImg l">
							<a title=爸爸去哪儿（随书赠送光盘） href="#" target=_blank><img
								id=Img_DivShopPaiHangFlag1_5 height=50 alt=爸爸去哪儿（随书赠送光盘） width=50>
							</a>
						</p>
						<div class=productInfo>
							<h3>
								<a title=爸爸去哪儿（随书赠送光盘） href="#" target=_blank>爸爸去哪儿（随书赠送光盘）</a>
							</h3>
							<p><span style="TEXT-DECORATION: line-through;">定价：￥39.00</span><br>
								<span style="color:red;">现价：￥27.00</span><br /></p>
						</div>
						<div id=ImgSrc_DivShopPaiHangFlag1_5 style="DISPLAY: none">public/img/book/quna.jpg</div>
						<span class=cf></span>
					</li>
					<li class="num5 listHeight" id=DivShopPaiHangFlag1_S5
						onMouseOver="SwapPaiHangShopDiv('DivShopPaiHangFlag1','5')"><a
						title=爸爸去哪儿（随书赠送光盘） href="#" target=_blank>爸爸去哪儿（随书赠送光盘）</a>
					<li class=more id=DivShopPaiHangFlag1_B6 style="DISPLAY: none">
						<p class="numBig l">
							<span>6</span>
						</p>
						<p class="productImg l">
							<a title=货币战争5：山雨欲来风满楼 href="#"
								target=_blank><img id=Img_DivShopPaiHangFlag1_6 height=50
								alt=货币战争5：山雨欲来风满楼 width=50>
							</a>
						</p>
						<div class=productInfo>
							<h3>
								<a title=货币战争5：山雨欲 href="#"
									target=_blank>货币战争5：山雨欲来风满楼</a>
							</h3>
							<p><span style="TEXT-DECORATION: line-through;">定价：￥46.00</span><br>
								<span style="color:red;">现价：￥35.20</span><br /></p>
						</div>
						<div id=ImgSrc_DivShopPaiHangFlag1_6 style="DISPLAY: none">public/img/book/huonbi.jpg</div>
						<span class=cf></span>
					</li>
					<li class="num6 listHeight" id=DivShopPaiHangFlag1_S6
						onMouseOver="SwapPaiHangShopDiv('DivShopPaiHangFlag1','6')"><a
						title=货币战争5：山雨欲来风满楼 href="#"
						target=_blank>货币战争5：山雨欲来风满楼</a>
					<li class=more id=DivShopPaiHangFlag1_B7 style="DISPLAY: none">
						<p class="numBig l">
							<span>7</span>
						</p>
						<p class="productImg l">
							<a title=电脑报（2013年12期合订） href="#" target=_blank><img
								id=Img_DivShopPaiHangFlag1_7 height=50 alt=电脑报（2013年12期合订） width=50>
							</a>
						</p>
						<div class=productInfo>
							<h3>
								<a title=电脑报（2013年12期合订） href="#" target=_blank>电脑报（2013年12期合订）</a>
							</h3>
							<p><span style="TEXT-DECORATION: line-through;">定价：￥50.00</span><br>
								<span style="color:red;">现价：￥35.20</span><br /></p>
						</div>
						<div id=ImgSrc_DivShopPaiHangFlag1_7 style="DISPLAY: none">public/img/book/diannaobao.jpg</div>
						<span class=cf></span>
					</li>
					<li class="num7 listHeight" id=DivShopPaiHangFlag1_S7
						onMouseOver="SwapPaiHangShopDiv('DivShopPaiHangFlag1','7')"><a
						title=电脑报（2013年12期合订） href="#" target=_blank>电脑报（2013年12期合订）</a>
					<li class=more id=DivShopPaiHangFlag1_B8 style="DISPLAY: none">
						<p class="numBig l">
							<span>8</span>
						</p>
						<p class="productImg l">
							<a title=遇见未知的自己：都市身心灵魂 href="#" target=_blank><img
								id=Img_DivShopPaiHangFlag1_8 height=50 alt=遇见未知的自己：都市身心灵魂 width=50>
							</a>
						</p>
						<div class=productInfo>
							<h3>
								<a title=遇见未知的自己：都市身心灵魂 href="#" target=_blank>遇见未知的自己：都市身心灵魂</a>
							</h3>
							<p><span style="TEXT-DECORATION: line-through;">定价：￥36.00</span><br>
								<span style="color:red;">现价：￥18.30</span><br /></p>
						</div>
						<div id=ImgSrc_DivShopPaiHangFlag1_8 style="DISPLAY: none">public/img/book/weizhi.jpg</div>
						<span class=cf></span>
					</li>
					<li class="num8 listHeight" id=DivShopPaiHangFlag1_S8
						onMouseOver="SwapPaiHangShopDiv('DivShopPaiHangFlag1','8')"><a
						title=遇见未知的自己：都市身心灵魂 href="#" target=_blank>遇见未知的自己：都市身心灵魂</a>
					<li class=more id=DivShopPaiHangFlag1_B9 style="DISPLAY: none">
						<p class="numBig l">
							<span>9</span>
						</p>
						<p class="productImg l">
							<a title=中国国家地理（全年12期合订） href="#"
								target=_blank><img id=Img_DivShopPaiHangFlag1_9 height=50
								alt=中国国家地理（全年12期合订） width=50>
							</a>
						</p>
						<div class=productInfo>
							<h3>
								<a title=中国国家地理（全年12期合订） href="#"
									target=_blank>中国国家地理（全年12期合订）</a>
							</h3>
							<p><span style="TEXT-DECORATION: line-through;">定价：￥240.00</span><br>
								<span style="color:red;">现价：￥130.20</span><br /></p>
						</div>
						<div id=ImgSrc_DivShopPaiHangFlag1_9 style="DISPLAY: none">public/img/book/dili.jpg</div>
						<span class=cf></span>
					</li>
					<li class="num9 listHeight" id=DivShopPaiHangFlag1_S9
						onMouseOver="SwapPaiHangShopDiv('DivShopPaiHangFlag1','9')"><a
						title=中国国家地理（全年12期合订） href="#" target=_blank>中国国家地理（全年12期合订）</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
</body>
<script language=javascript src="public/js/book.js" type=text/javascript></script>
</html>
