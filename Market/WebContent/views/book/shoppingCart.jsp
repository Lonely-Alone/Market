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
		    	<div >
			   	 	<HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3);margin-top:-10px;"  color=#999999 SIZE=3>
			   	 	<span><input type="checkbox" name="checkAll" id="checkAll" onClick="ChkAllClick('check','checkAll')">全选</span>
			   	 	<span style="width:400px;">商品</span>
			   	 	<span style="width:100px;">原价</span>
			   	 	<span style="width:50px;">优惠价</span>
			   	 	<span style="width:220px;">数量</span>
			   	 	<span style="width:80px;">操作</span><br>
			   	 	<hr style="margin-bottom:-2px;">
		    	</div>
	   	 	 <c:forEach items="${ list}" var="book">
		     	<div >
		     		<span><input type="checkbox" name="check" id="${book.id}" ></span>
			   	 	<span style="width:420px;">
			   	 		<a href="/SuperMarket/showdetail.do?id=${book.id}" target="_blank">${book.bookName}</a>  
			   	 	</span>
			   	 	<span style="width:100px;margin-left:25px;"> ￥${book.basePrice}</span>
			   	 	<span style="width:50px;color:red"> ￥${book.sellPrice}</span>
			   	 	<span  class="shopping_span"> 
			   	 		<a href="javascript:;" onclick="reduce(${book.id})">—</a>
						<input type="text" value="${book.buyCount}" id="num${book.id }" />	
						<a href="javascript:;" onclick="add(${book.id})">+</a>
					</span>
			   	 	<span style="width:80px;margin-left:28px"><a href="javascript:;" onclick="deleteGood(${book.id})">删除</a></span><br>
			   	 	<hr style="margin-bottom:-2px;">
		     	    
		     	</div>
	     	</c:forEach>
	     	<div style="width:1000px;height:100px;margin-top:10px;">
	     		<span style="color:orange;font-size:30px;">x</span>
	     	    <span style="margin-top:12px;margin-left:0px;">
	     	    	<a href="javascript:;" onclick="deleteGoods()">删除选中的商品</a>
	     	    </span>
	     	    <span style="margin-left:660px;margin-top:40px;"> 商品共计${totalNum}件：</span>
	     	    <span style="color:red;margin-top:40px;font-size:18px;">￥ ${totalPrice}</span>
	     	</div>
	     	</div>
	      	<a href="javascript:;"   onclick="goBuy()">
	      		<span class="goBuy">继续购物</span>
	      	</a>
	      	<a href="javascript:;" onclick="goPay('${user}')" >
	      		<span class="goPay" >去结算 &gt;</span>
	      	</a>
    </div>
  </body>
  <script type="text/javascript">
    function reduce(id){
     var _id = "num"+id;
     var num = document.getElementById(_id);
     if(num.value=="1"){
     	alert("商品数量最少为1！")
     	return;
     }
  	 num.value--;
  	 window.location.href="/SuperMarket/addgoods.do?method=addGoods&id="+id+"&num="+num.value;
  	}
  	
  	 function add(id){
  	 var _id = "num"+id;
     var num = document.getElementById(_id);
  	 num.value++;
  	 window.location.href="/SuperMarket/addgoods.do?method=addGoods&id="+id+"&num="+num.value;
  	}
  	
  	
  	function deleteGood(id){
  		window.location.href="/SuperMarket/deletegoods.do?method=deleteGoods&arr="+id;
  	}
  	
  	// --列头全选框被单击---
  	function ChkAllClick(sonName, cbAllId){
	     var arrSon = document.getElementsByName(sonName);
		 var cbAll = document.getElementById(cbAllId);
		 var tempState=cbAll.checked;
		 for(i=0;i<arrSon.length;i++) {
		  if(arrSon[i].checked!=tempState)
		           arrSon[i].click();
		 }
	}
  	
  	function deleteGoods(){
		 var arrSon = document.getElementsByName("check");
		 var arr = new Array();
		 for(i=0;i<arrSon.length;i++) {
		 	if(document.getElementById(arrSon[i].id).checked)
		 		arr[i]=arrSon[i].id;
		 }
		 window.location.href="/SuperMarket/deletegoods.do?method=deleteGoods&arr="+arr;
	}
	
	function goBuy(){
		window.location.href="/SuperMarket/getbooks.do?method=getBooks&pageNow=1";
	}
	
	function goPay(user){
		if( user== null ||user=="")
			window.open ('/SuperMarket/LogAndRegister/PopWindow.jsp', '', 'height=565, width=525, top=120, left=300, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no');
		else
			window.location.href="/SuperMarket/MainFram/OrderSettlement.jsp";
		
	}
  </script>
</html>
