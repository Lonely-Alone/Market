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
    <title>我的购物车</title>
    <link rel="stylesheet" type="text/css" href="public/css/layout.css">
	<link rel="stylesheet" type="text/css" href="public/css/common.css">
	<link rel="stylesheet" type="text/css" href="public/css/shoppingCart.css">
	<link rel="stylesheet" type="text/css" href="public/js/sobox/style.css">
	<script type="text/javascript" src="public/js/min/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="public/js/sobox/jquery.sobox.min.js"></script>
	<script type="text/javascript" src="public/js/min/ibox.js"></script>
  </head>
  <body class="zx1">
	<div class="container">
		<div class="header">
		 	<jsp:include page="/views/head.jsp"></jsp:include>
		</div>
		<s:if test="#session.myCart!=null && !session.myCart.isEmpty()">
			<div id="myCart">
				<div class="ml150" >
					<h2 >我的购物车</h2>
				</div>
				<div  class="shopping_div1">
			    	<ul >
						<li ><img src='public/img/right.png' ></li>
						<li class="ge"><b></b>1.我的购物车</li>
						<li ><hr class="hr1"></li>
						<li ><b></b>2.填写核对订单信息</li>
						<li ><hr class="hr1"></li>
						<li >3.成功提交订单</li>
					</ul>
				</div>
			  <div class="mainContent" > 
			  	<div class="shopping_div2">
			   		<div class="mt20">
			   			<input id="checkAllChk" class="vn" type="checkbox" checked/>
		            	全选
		            </div>
		            <div class="mt10 mb5 p5 bgef bdc tc bge8 h20">
		   				<div class="l pct10">&emsp;</div>
		              	<div class="l pct30">商品</div>
		                <div class="l pct10">单价（元）</div>
		                <div class="l pct30">数量</div>
		                <div class="l pct10">小计（元）</div>
		                <div class="l pct10">操作</div>       
		             </div>
			    	<div class="shopping_div2_1">
				    	<table width="100%"  cellpadding="2" cellspacing="1"  id="goodTable" >
			   				<s:iterator   value="#session.myCart.keySet()"  id="item">
				   				<tr class="mt10 tc" >
				   					<td class="bbc pct10">
				   						<input type="checkbox" class="jsForCheck l" id="jsForCheck${item.id}" data="${item.id}" checked/>
				   						<img alt="" class="h60" src="<s:property value="#item.imgUrl" />">
				   					</td>
				   					<td class="pct30 bbc">
				   						<a href="javascript:;" target="_blank"><s:property value="#item.name" /></a>
				   					</td>
				   					<td class="bbc pct10"><s:property value="#item.realPrice"/></td>
				   					<td class="pct30 bbc ">
				   						<span class="add_number">
					   						<a  class="decreaseNum case b def g9" >-</a>    				
											<span class="case">
												<input  id="amount${item.id}" data="${item.id }" price="<s:property value="#item.realPrice"/>" class="num_input amountInput" type="text" placeholder="1" value='<s:property value="#session.myCart.get(#item)" />'/>
											</span>
											<a  class="increaseNum case b def g9" >+</a> 
										</span>
				   					</td>
				   					<td class="bbc pct10" id="realPrice${item.id}"><s:property value="#item.realPrice*session.myCart.get(#item)"/></td>
				   					<td class="bbc pct10">
				   						<a href="javascript:;" class="delete" data="${item.id }">删除</a>
				   					</td>
				   				</tr>
					    	</s:iterator>
			   			</table>
					 </div>   	
			     	<div class="cart_toolbar ">
		   				<div class="l pct60">
		   					<input id="checkAllBtn" class="vn" type="checkbox" checked/>
		   					<a id="deleteAllBtn" href="javascript:;">删除选择商品</a>
		   				</div>
		              	<div class="l  pct30">
		              		<span>已选择<em class="totalNum"></em>件商品</span>
		              		总价<span class="totalPrice"></span>
		              	</div>
		                <div class="l pct10">
		                	<a href="javascript:;"  id="goPay" data="${member}"> 
					      		<span class="goPay" >去结算 </span>
					      		<a class="a-soIframe dn" href="http://localhost:8088/Market/views/good/Login.jsp#soIframe?width=600&height=400&showTitle=0&outCloseBtn=true"></a>
					      	</a>
				     	</div>       
		           </div>
			  </div>
			</div>
			</div>
		</s:if>
		<s:else>
			<div class="tc emptyCart">
				<p>购物车空空的哦~，去看看心仪的商品吧~</p>
				<a href="/Market" >去购物</a>
			</div>
		</s:else>
	</div>
  </body>
  <script type="text/javascript" src="public/js/check.js"></script>
  <script type="text/javascript" src="public/js/cart.js"></script>
</html>
