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
    

	<link rel="stylesheet" type="text/css" href="public/css/common.css">
	<link rel="stylesheet" type="text/css" href="public/css/shoppingCart.css">
	<script type="text/javascript" src="public/js/min/jquery-1.8.3.js"></script>
	<script type="text/javascript" src="public/js/min/newAjax.js"></script>
  </head>
  
  <body>
    <jsp:include page="/views/head.jsp"></jsp:include>
    
    <div  class="shopping_div1">
    	<ul >
			<li ><img src='public/img/right.png' style="margin-left:10px;margin-top:-5px;" ></li>
			<li style="color:green;font-size:16px;"><b></b>1.我的购物车</li>
			<li ><hr class="hr1"></li>
			<li style="color:gray;font-size:16px;"><b></b>2.填写核对订单信息</li>
			<li ><hr class="hr1"></li>
			<li style="color:gray;font-size:16px;">3.成功提交订单</li>
		</ul>
    	
    	
    </div>
    
    
    <div class="shopping_div2">
   		<h2>我的购物车</h2>
	    	<div class="shopping_div2_1">
		    	<table width="100%" class="bdc" cellpadding="2" cellspacing="1"   >
   				<tr>
   					<th><a href="javascript:;" id="checkAll" >全选</a></th>
   					<th>商品</th>
   					<th>原价</th>
   					<th>优惠价</th>
   					<th>数量</th>
   					<th>操作</th>
   				</tr>
   				<s:iterator   value="#session.myCart"  id="item">
   				<tr class="tc">
   					<td><input type="checkbox" class="check" data="<s:property value="#item.goods.id" />" ></td>
   					<td class="w400">
   						<a href="javascript:;" target="_blank"><s:property value="#item.goods.name" /></a>
   					</td>
   					<td>￥<s:property value="#item.goods.price"/></td>
   					<td class="w80 ">
   						<a href="javascript:;" class="decrese"><span class="bdc">—</span></a>
						<input type="text" value="<s:property value="#item.num" />"  class="w30 tc amount"/>	
						<a href="javascript:;" class="increase"><span class="bdc">+</span></a>
   					</td>
   					<td><s:property value="#item.goods.num" /></td>
   					<td>
   						<a href="javascript:;" class="delete" data="<s:property value="#item.goods.id" />">删除</a>
   					</td>
   				</tr>
		    	</s:iterator>
   			</table>
		    	
	     	<div style="width:1000px;height:100px;margin-top:10px;">
	     		<span style="color:orange;font-size:30px;">x</span>
	     	    <span style="margin-top:12px;margin-left:0px;">
	     	    	<a href="javascript:;" id="deleteChecked">删除选中的商品</a>
	     	    </span>
	     	    <span style="margin-left:660px;margin-top:40px;"> 商品共计${totalNum}件：</span>
	     	    <span style="color:red;margin-top:40px;font-size:18px;">￥ ${totalPrice}</span>
	     	</div>
	     	</div>
	      	<a   href="/Market/views/application/main.jsp">
	      		<span class="goBuy">继续购物</span>
	      	</a>
	      	<a href="javascript:;" data="${member}" id="goPay">
	      		<span class="goPay" >去结算 &gt;</span>
	      	</a>
    </div>
  </body>
  <script type="text/javascript" src="public/js/cart.js"></script>
</html>
