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
    
    <title>订单结算中心</title>
    <link rel="stylesheet" type="text/css" href="public/css/layout.css">
	<link rel="stylesheet" type="text/css" href="public/css/common.css">
	<link rel="stylesheet" type="text/css" href="public/css/shoppingCart.css">
	<link rel="stylesheet" type="text/css" href="public/js/sobox/style.css">
	<script type="text/javascript" src="public/js/min/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="public/js/sobox/jquery.sobox.min.js"></script>
  </head>
  <body>
  <div class="container">
		<div class="header">
		 	<jsp:include page="/views/head.jsp"></jsp:include>
		</div>
		<div class="ml150" >
			<h2 >我的订单</h2>
		</div>
		<div  class="shopping_div1">
	    	<ul >
				<li class="ge"><b></b>1.我的购物车</li>
				<li ><hr class="hr1"></li>
				<li ><img src='public/img/right.png' ></li>
				<li ><b></b>2.填写核对订单信息</li>
				<li ><hr class="hr1"></li>
				<li >3.成功提交订单</li>
			</ul>
		</div>
	 	<div class="mainContent mt100"> 
		    <div class="order_div2">
		    	<h3>填写并核对订单消息</h3></div>
		    <div class="order_div3">
		    	<div class="order_div3_1">
		    		<div class="address"> 
			    		<h2 class="l ml10">收货人信息</h2>
			    		<div class="r mr20">
			    			<a href="javascript:;" id="addAddress">新增收货地址</a>
			    		</div>
		    		</div>
		    		<div>
	    				<s:iterator   value="#session.addresses"  id="address">
	    					<ul class="address_list">
	    						<s:if test="%{#address.isDefault}"><span>bc0</span></s:if>
								<li class=''>
									<span><s:property value="#address.isDefault" /></span>
									<span><s:property value="#address.province" /></span>								
									<span><s:property value="#address.city" /></span>
									<span><s:property value="#address.address" /></span>
									<span><s:property value="#address.cellPhone" /></span>
									<span><a href="javascript:;">设为默认地址</a></span>
									<span><a href="javascript:;">编辑</a></span>
									<span><a href="javascript:;">删除</a></span>
								</li>	    					
	    					</ul>
	    				</s:iterator>
		    		</div>
		    	</div>
		    	<div class="order_div3_2">
		    		<strong >支付及配送方式</strong>
		    		<ul >
		    			<li class="payMode selected"> 在线支付 </li>
		    			<li class="payMode"> 货到付款</li>
		    		</ul>
		    	</div>
		    	<div class="order_div3_3">
		    		<div >
			    		<h3 class="mt5 ml10">商品清单</h3>
			    		<div class="r">
			    			<a href="/Market/goToCart.action" >返回修改购物车</a>
			    		</div> 
			    	</div>
		    		<div class="order_div3_4">
					    <div class="mt10 mb5 p5 bgef bdc tc bge8 h20">
				   				<div class="l pct10">&emsp;</div>
				              	<div class="l pct30">商品</div>
				                <div class="l pct10">单价（元）</div>
				                <div class="l pct30">数量</div>
				                <div class="l pct10">小计（元）</div>
				                <div class="l pct10">操作</div>       
				             </div>
					    	<div class="shopping_div2_1 mb30">
						    	<table width="100%"  cellpadding="2" cellspacing="1"  id="goodTable" >
					   				<s:iterator   value="#session.order"  id="item">
						   				<tr class="mt10 tc" >
						   					<td class="bbc pct10">
						   						<img alt="" class="h60" src="<s:property value="#item.good.imgUrl" />">
						   					</td>
						   					<td class="pct30 bbc">
						   						<a href="javascript:;" target="_blank"><s:property value="#item.good.name" /></a>
						   					</td>
						   					<td class="bbc pct10"><s:property value="#item.good.realPrice"/></td>
						   					<td class="pct30 bbc "><s:property value="#item.amount"/></td>
						   					<td class="bbc pct10" id="realPrice${item.id}"><s:property value="#item.soldPrice"/></td>
						   					<td class="bbc pct10">
						   						<a href="javascript:;" class="delete" data="${item.id }">删除</a>
						   					</td>
						   				</tr>
							    	</s:iterator>
					   			</table>
							 </div> 
						</div>
		     	</div>
		     </div>
		 	<div class=" r mt30">
              	<span>已选择<em class="totalNum"><s:property value="#session.orderSum.totalCount"/></em>件商品</span>
  				<span>总价<em class="totalPrice"><s:property value="#session.orderSum.sumPrice"/></em></span>
	      		<span class="goSubmit" >提交订单 </span>
           </div> 
		     <div style="height:50px;margin-top:100px;;"></div>
		 </div>
 </div>
</body>
<script type="text/javascript" src="public/js/order.js"></script>
</html>
