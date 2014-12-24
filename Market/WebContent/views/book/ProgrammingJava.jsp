<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>Java</title>
<link rel="stylesheet" type="text/css" href="style/programmingJava.css">
<link rel="stylesheet" type="text/css" href="style/bookMain.css">
<link rel="stylesheet" type="text/css" href="style/programmingBook.css">


</head>

<body>

	<jsp:include page="/views/head.jsp"></jsp:include>
	<div class="booklist">
		<h2><a href="#">图书 &gt;</a></h2>
		<span><a href="#">编程语言与程序设计</a></span>
	</div>
	<div class="javabook1" ></div>

	<div class="javabook2">
		<hr>
			<c:forEach  items="${ goodsList}" var="book" >
				<div style="float:left;width:260px;margin-top:30px;margin-left:40px;"><a href="/SuperMarket/showdetail.do?method=getBook&id=${book.id}" ><img src="images/javaBook/${book.id}.jpg"></a></div>
				<div style="float:left;width:400px;margin-top:30px;">
				<a href="/SuperMarket/showdetail.do?method=getBook&id=${book.id}" style="font-size:16px;font-weight:bold;">${book.bookName }</a><br>
				<span  class="javabook3">${book.description }</span>
				<a href="javascript:;" target="_blank" class="javabutton" onclick="addGoods(${book.id})">加入购物车</a><br>
				<span >现价:</span><span style="color:red;font-weight:bold;">￥  ${book.sellPrice}</span>
				<span style="margin-left:30px;text-decoration:line-through">定价：￥ ${book.basePrice}</span><br>
				<hr align="center"  style= "border:1px dotted #CCCCCC;width:400px;margin-bottom:-10px; " /><br/>
				<span>作 &emsp; &emsp;者:  ${book.author} 著</span><br>
				<span>出 &ensp;版 &ensp;社：  ${book.publish}</span><br/>
				<span>出版时间： ${book.publishTime}</span>
				</div><br>
				<hr align="center"  style= "margin-top:20px;border:1px dashed #CCCCCC;width:800px; " /><br/>
		 </c:forEach >
		  <div class="page">
		  <c:if test="${pageNow - 1 > 0 }">
			<a href="/SuperMarket/getbooks.do?method=getBooks&pageNow=${pageNow - 1}" style="display:block;float:left;width:60px;align:center">上一页</a>
		  </c:if>
		  <c:choose> 
			  <c:when test="${pageNow - 4 > 0 }">
				  <c:forEach begin="${pageNow - 4}" end="${pageNum-1 }" var="i">
					<a href='/SuperMarket/getbooks.do?method=getBooks&pageNow=${i }'>${i }</a>
				  </c:forEach>
			  </c:when>
			  <c:otherwise >
			  	<c:forEach begin="1" end="${pageNow-1 }" var="i">
					<a href='/SuperMarket/getbooks.do?method=getBooks&pageNow=${i }&search=${searchName}'>${i }</a>
				  </c:forEach>
			  </c:otherwise>
		  </c:choose>
		  <a href='/SuperMarket/getbooks.do?method=getBooks&pageNow=${pageNow}&search=${searchName}' style="border:0px;color:orange">${pageNow}</a>
		  <c:choose> 
			  <c:when test="${pageNow + 4 < pageNum}">
				  <c:forEach begin="${pageNow +1 }" end="${pageNum + 4 }" var="i">
					<a href='/SuperMarket/getbooks.do?method=getBooks&pageNow=${i }&search=${searchName}'>${i }</a>
				  </c:forEach>
			  </c:when>
			  <c:otherwise >
			  	<c:forEach begin="${pageNow+1 }" end="${pageNum }" var="i">
					<a href='/SuperMarket/getbooks.do?method=getBooks&pageNow=${i }&search=${searchName}'>${i }</a>
				  </c:forEach>
			  </c:otherwise>
		  </c:choose>
	<c:if test="${pageNow < pageNum}">
		<a href='/SuperMarket/getbooks.do?method=getBooks&pageNow=${pageNow +1}&search=${searchName}' style="display:block;float:left;width:60px;align:center">下一页</a>
	</c:if>
			
		 </div>
	</div>



</body>
<script type="text/javascript">

	function addGoods(id){
  		 window.open("/SuperMarket/addgoods.do?method=addGoods&id="+id+"&num=1");
  		 
  	}

</script>
</html>
