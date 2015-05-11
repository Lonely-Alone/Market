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
		    		<strong>收货人信息[<a href="">修改</a>]</strong>
		    		<p> <s:property value="#member.userName" /> &emsp;  <s:property value="#member.phone" /> </p>
		    		<p> </p>
		    	</div>
		    	<div class="order_div3_2">
		    		<strong >支付及配送方式[<a href="">修改</a>]</strong>
		    		<p> 在线支付 &emsp;  </p>
		    		<p> 申通快递</p>
		    	
		    	</div>
		    	<div class="order_div3_3">
		    		<strong>商品清单</strong> 
		    		<a href="/Market/goToCart.action" style="display:block;margin-left:800px;margin-top:-px;">返回修改购物车</a>
		    		<div class="order_div3_4">
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
				     	<div style="width:1000px;height:auto;margin-top:10px;margin-bottom:40px;">
				     		<span style="margin-left:700px;margin-top:40px;"> 商品共计${totalNum}件：</span>
				     	    <span style="color:red;margin-top:-20px;font-size:18px;margin-left:800px;">￥ ${totalPrice}</span>&emsp;&emsp;&emsp;&emsp;
				     	    <span style="margin-top:20px;">
				     	    	<a href="javascript:;" onclick="userScore()">使用积分支付</a>
				     	    </span>
				     	    <div id="userScore" style="display:none;width:800px;height:auto;margin-top:10px;margin-left:20px;border:1px solid #33CCFF;background:#EEFAFF;padding:20px ;">
				     	    	<div id="d1">
									<span style="font-weight:bold;font-size:14px;">本次使用:	
									<input type="text" style="width:80px;" oninput="checkValue(this.value)" id="score">	 积分支付 </span>  
									<input type="button" value="使用" class="button_sub" onclick="useScorePay(${totalPrice})">
									<hr style="border:1px dotted #33CCFF;width:800px;align:center"> 
								</div>	
								<span style="display:inline">您有</span>
								<span style="display:inline;width:10px;" id="v1"></span>
								<span style="display:inline">积分可以使用</span> 
								
									<span style="display:inline">,本次使用</span>
									<span style="display:inline;font-size:18px;font-weight:bold"id="v2">0</span>
									<span style="display:inline">积分，折合人民币</span>
									<span style="display:inline;color:red"id="v3">￥0.0</span>  
									<span style="display:none" id="cancel"><a href="javascript:;" onclick="cancel(${totalPrice})">取消使用</a></span>
				     	    </div>
				     	    
			     		</div>
				     		<span style="margin-left:560px;font-weight:bold;font-size:18px;">应付总额：</span>
				     		<span style="margin-left:660px;margin-top:-30px;color:red;font-size:24px;font-weight:bold;" id="total">￥${totalPrice}</span>
				      		<a href="javascript:;" onclick="goSubmit()" >
				      			<span class="goSubmit" >提交订单 &gt;</span>
				      		</a>
		    			</div>
		    	</div>
		     </div>
		     <div style="height:50px;margin-top:100px;;"></div>
		 </div>
 </div>
</body>
  <script type="text/javascript">
  	function userScore(){
  		if(returnDom("userScore").style.display == "block")
  			returnDom("userScore").style.display="none";
  		else{
  			returnDom("userScore").style.display="block";
  			returnDom("score").value="";
  			this.checkValue(0);
  			}
  	}
  	
  	function checkValue(value){
  	  		returnDom("v2").innerHTML=value;
  	  		returnDom("v3").innerHTML="￥"+value/100;
  	}
  	
  	function useScorePay(totalPrice){
  		returnDom("total").innerHTML="￥"+(totalPrice-returnDom("score").value/100);
  		returnDom("d1").style.display="none";
  		returnDom("cancel").style.display="inline";
  	}
  	
  	function cancel(totalPrice){
  		returnDom("total").innerHTML="￥"+totalPrice;
  		returnDom("d1").style.display="block";
  		returnDom("cancel").style.display="none";
  		returnDom("score").value="";
  		this.checkValue(0);
  	}
  	
  	function returnDom(id){
  		return document.getElementById(id);
  	}
  	
  	function goSubmit(){
  	
  	window.location.href="/SuperMarket/submitorder.do?score="+returnDom("score").value;
  	}
  </script>
</html>
