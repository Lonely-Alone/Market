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
<title>编程之家</title>
<link rel="stylesheet" type="text/css" href="public/css/layout.css">
<link rel="stylesheet" type="text/css" href="public/css/bookMain.css">
<link rel="stylesheet" type="text/css" href="public/css/common.css">
<link rel="stylesheet" type="text/css" href="public/css/programmingBook.css">
<script type="text/javascript" src="public/js/min/do.js"></script>
<script type="text/javascript" src="public/js/min/jquery-1.8.3.js"></script>
</head>

<body>

<div class="container">
	<div class="header">
		<jsp:include page="/views/head.jsp"></jsp:include>
	</div>	
	<div class="search">
				<input type="text" /> 
				<a href="javascript:;" onclick="">搜索</a>
	</div>
	</div>	

	<div class="div">
		<h2>热门编程语言</h2>
		<div class="div1">
			 <span><a href="#">c</a> <a href="#">c#</a> <a href="#">c++</a></span> <br />
			 <span> <a href="Market/getGoods.action?page=1&type=book">java</a> <a href="#">javaScript</a></span> <br />
			 <span> <a href="#">Objective-c</a>  </span><br />
			 <span> <a href="#">PHP</a> <a href="#">Python</a> <a href="#">Ruby</a> </span><br/>
			<span><a href="#">&gt;所有编程语言</a></span>
		</div>
		<div class="div2">
			<h2 style="color:black">热门方向</h2><hr>
			<span style="font-size:18px;color:#66CCFF;margin-top:5px;">web方向</span><br>
			<span><a href="#">Asp</a> <a href="#">Ajax</a> <a href="#">CSS</a></span> <br />
			<span> <a href="#">Delphi</a> <a href="#">HTML</a></span> <br />
			<span> <a href='/SuperMarket/getbooks.do?method=getBooks&pageNow=1'>java</a> <a href="#">javaScript</a><a href="#">JSP</a></span> <br />
			<span> <a href="#">PHP</a> <a href="#">Python</a> <a href="#">Ruby</a> </span><br/>
			<span> <a href="#">XML</a> <a href="#">.NET</a>  </span><br/>
			<h2>移动方向</h2><br>
			<span><a href="#">Andriod</a> <a href="#">ios</a> </span> <br />
			<h2>游戏开发</h2><br>
			<h2>大数据</h2><br>
			<span><a href="#">Cassandra</a> <a href="#">Hadoop</a> </span> <br />
			<span> <a href="#">MYSQL</a> <a href="#">MongoDB</a></span> <br />
			<span> <a href="#">java</a> <a href="#">javaScript</a><a href="#">JSP</a></span> <br />
			<span> <a href="#">NoSQL</a> <a href="#">Oracle</a>  </span><br/>
			<h2>相关热词</h2><br>
			<span><a href="#">SEO</a> <a href="#">IT管理</a></span><span> <a href="#">产品经理</a> </span> <br />
			
		</div>
 	</div>
	<div class="tab1">
		<ul class="btn_1" id="myTab_btns2" >
			<li class="hot">1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
			<li>5</li>
		</ul>
		<div class="main12" id="main2" >
			<ul class="content" >
				<li><a href="#"><img src="public/img/book/chengxunan.jpg" />
				</a>
				</li>
				<li><a href="#"><img src="public/img/book/jishu.jpg" />
				</a>
				</li>
				<li><a href="#"><img src="public/img/book/web.jpg" />
				</a>
				</li>
				<li><a href="#"><img src="public/img/book/piaoxiang.jpg" />
				</a>
				</li>
				<li><a href="#"><img src="public/img/book/qushi.jpg" />
				</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="div3">
		 <h3>新书速递</h3><hr>
			 <ul class="mt10">
			 <li class="li_div">
			 <div>	<img src="public/img/book/NoSQL.jpg"><br><a href="">图灵程序设计丛书：NoSQL</a><br>
			 		<span style="color:#00FF00">(全面展示NoSQL基础概念和实践方案)</span><br>
			 		<span class="price1">定价：￥53.00</span><br>
					<span class="price2">现价：￥31.00</span><br />
					<input type="button" class="button1">
			 </div>	
			 <div style="margin-left:260px">	<img src="public/img/book/PHP.jpg"><br><a href="">细说PHP(第二版)(含DVD<br>光盘一张)</a>
			 		<span style="color:#00FF00">（51CTO“最受读者喜爱<br>的原创IT技术图书”奖）</span><br>
			 		<span class="price1">定价：￥53.00</span><br>
					<span class="price2">现价：￥31.00</span><br />
					<input type="button" class="button1">
			 </div>	
			  <div style="margin-left:480px">	<img src="public/img/book/DataDig.jpg"><br><a href="">大话数据挖掘 </a>
			 		<span style="color:#00FF00">（谈笑间深入理解<br>数据挖掘的来龙去脉，入门必读！）</span><br>
			 		<span class="price1">定价：￥53.00</span><br>
					<span class="price2">现价：￥31.00</span><br />
					<input type="button" class="button1">
			 </div>	
			 </li>
			<li class="li_div1">
			 <div style="margin-lef:20px;">	<img src="public/img/book/data1.jpg"><br><a href="">鲜活的数据：数据可视化指南 （</a><br>
			 		<span style="color:#00FF00">数据可视化经典著作，创作信息<br>图的最佳参考指南）</span><br>
			 		<span class="price1">定价：￥53.00</span><br>
					<span class="price2">现价：￥31.00</span><br />
					<input type="button" class="button1">
			 </div>	
			 <div >	<img src="public/img/book/Hadoop.jpg"><br><a href="">Hadoop实战 </a>
			 		<span style="color:#00FF00">（畅销书<br>全新升级、技术更新、内容更全<br>、实战性更强、细节更完善）</span><br>
			 		<span class="price1">定价：￥53.00</span><br>
					<span class="price2">现价：￥31.00</span><br />
					<input type="button" class="button1">
			 </div>	
			  <div>	<img src="public/img/book/searchAnay.jpg"><br><a href="">精通搜索分析 </a>
			 		<span style="color:#00FF00">（OReilly精品图书<br>系列，SEO、SEM必读！）</span><br>
			 		<span class="price1">定价：￥53.00</span><br>
					<span class="price2">现价：￥31.00</span><br />
					<input type="button" class="button1">
			 </div>	
			 </li>
			</ul>
	</div>




</body>
<script language=javascript src="public/js/book.js" type=text/javascript></script>
</html>
