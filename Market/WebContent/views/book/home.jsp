<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/Market/public/css/bookMain.css">
<link rel="stylesheet" type="text/css" href="/Market/public/css/bookSort.css">
<link rel="stylesheet" type="text/css" href="/Market/public/css/common.css">
</head>
<body>

<div class="container">

 	<div class="header">
		<jsp:include page="/views/head.jsp"></jsp:include>
	</div>
	<div class="main_search">
				<input type="text" /> 
				<a href="javascript:;" onclick="">搜索</a>
	</div>
	<jsp:include page="/views/application/navigationBar.jsp"></jsp:include>
  	<div class="menu">
	  		<h1>
				<a href="#">图书</a>
			</h1>
			<span> 
				<a href="#" target="_blank">电子书</a>&nbsp;|&nbsp;<a
				href="#" target="_blank">音像</a>&nbsp;|&nbsp;<a href="#"
				target="_blank">在线读书</a>&nbsp;|&nbsp;<a href="#" target="_blank">团购</a>&nbsp;|&nbsp;<a
				href="#" target="_blank">版税补贴</a>&nbsp;|&nbsp;<a href="#"
				target="_blank">图书榜</a>&nbsp;|&nbsp;<a href="#" target="_blank">新书榜</a>&nbsp;|&nbsp;<a
				href="#" target="_blank">特价</a>&nbsp;|&nbsp;<a href="#"
				target="_blank">预售</a>&nbsp;|&nbsp;<a href="#" target="_blank">所有图书分类</a>
			</span>
	  </div>
  	<div class="">
    <div class="l">
    	<jsp:include page="leftTag.jsp"></jsp:include>
    </div>
    <div class="r">
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
		<jsp:include page="sellerList.jsp"></jsp:include>
    </div>
    <div class="tc">
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
   </div>  -->
  </div> 
  <div class=""></div>
</div>

</body>
</html>