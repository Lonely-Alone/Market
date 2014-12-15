<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>《 ${book.bookName } 》</title>
    
	<link rel="stylesheet" type="text/css" href="style/bookDetail.css">
  </head>
  
  <body >
    <jsp:include page="/views/head.jsp"></jsp:include>
    <div class="detai">
		<h2 ><a href="#">图书 &gt;</a></h2>
		<span><a href="#">计算机与互联网&gt;</a><a href="#">编程语言与程序设计</a></span>
	</div>
	<div class="detail1"></div>
	
	<div class="detail2">
		<div class="detail2_div1"><img src="images/javaBook/${book.id}.jpg"></div>
		<div class="detail2_div2">
				<span class="detail2_div2_1">${book.bookName }</span><br>
				<span class="detail2_div2_2">( ${book.description } )</span><br>
				<hr align="center"   /><br/>
				<span style="text-decoration:line-through;">定&emsp; &emsp;价：￥ ${book.basePrice}</span><br>
				<span >现&emsp; &emsp;价：</span><span style="color:red;font-size:16px;font-weight:bold;margin-left:-58px;">￥  ${book.sellPrice}</span><br/>
				<span >作 &emsp; &emsp;者：  ${book.author} 著</span><br>
				<span >出 &ensp;版 &ensp;社：  ${book.publish}</span><br/>
				<span >出版时间： ${book.publishTime}</span><br>
				<hr align="center" /><br/>
				<span style="font-size:14px;margin-top:15px;margin-left:0px">购买数量：
					<a href="javascript:;" onclick="reduce()">—</a>
					<input type="text" value="1" id="num" />	
					<a href="javascript:;" onclick="add()">+</a>			
				</span><br>
				<button type="button" onclick="addGoods(${book.id})">加入购物车</button>
		</div><br>
		
				
	</div>
  </body>
  
  <script type="text/javascript">
    function reduce(){
     var num = document.getElementById("num");
     if(num.value=="1"){
     	alert("商品数量最少为1！")
     	return;
     }
  	 num.value--;
  	}
  	
  	 function add(){
     var num = document.getElementById("num");
     
  	 num.value++;
  	}
  	
  	function addGoods(id){
  		 var num = document.getElementById("num").value;
  		 window.open("/SuperMarket/addgoods.do?method=addGoods&id="+id+"&num="+num);
  		 
  	}
  </script>
</html>
