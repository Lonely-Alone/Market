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
    
	<link rel="stylesheet" type="text/css" href="public/css/order.css">

  </head>
  
  <body>
    <jsp:include page="/views/head.jsp"></jsp:include>
    <div  class="order_div1">
		<ul >
			<li style="color:#BCE8A3;font-size:16px;font-weight:bold"><b></b>1.我的购物车</li>
			<li ><hr class="hr1"></li>
			<li ><img src='public/img/right.png' style="margin-left:10px;margin-top:-5px;"></li>
			<li style="color:green;font-size:16px;"><b></b>2.填写核对订单信息</li>
			<li ><hr class="hr2"></li>
			<li style="color:gray;font-size:16px;">3.成功提交订单</li>
		</ul>
    </div>
    
    <div class="order_div2"><h3>填写并核对订单消息</h3></div>
    
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
    		<a href="/SuperMarket/MainFram/ShoppingCart.jsp" style="display:block;margin-left:800px;margin-top:-px;">返回修改购物车</a>
    		<div class="order_div3_4">
			    <div class="order_div3_4_1">
				   	 	<span style="width:450px;">商品</span>
				   	 	<span style="width:120px;">原价</span> 
				   	 	<span style="width:120px;">优惠价</span>
				   	 	<span style="width:80px;">数量</span>
				   	 	<span style="width:80px;">库存</span><br>
			    </div>
		   	 	 <s:iterator   value="#session.myCart"  id="item">
			     	<div class="order_div3_4_2">
				   	 	<span style="width:450px;">
				   	 		<a href="" target="_blank"><s:property value="#item.goods.name" /></a>  
				   	 	</span>
				   	 	<span style="width:120px;"> ￥<s:property value="#item.goods.price" /></span>
				   	 	<span style="width:120px;color:red"> ￥<s:property value="#item.goods.price" /></span>
				   	 	<span  style="width:80"><s:property value="#item.goods.price" /></span>
				   	 	<span style="width:80px;">有货</span><br>
			     	</div>
		     	</s:iterator>
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
