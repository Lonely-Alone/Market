<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<base href="<%=basePath%>">
<%@ taglib prefix="s"  uri="/struts-tags" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/Market/public/css/bs_main.css">
<link rel="stylesheet" type="text/css" href="/Market/public/css/common.css">
<title>添加商品</title>
</head>
<body>
	<div class="content_page">
	<div class="constr fix">
		<jsp:include page="/views/back/leftTag.tag"></jsp:include>
		<section class="cell">
			<nav class="nav_content_box fix">
				<span class="l">所有商品</span>
				<span class="r">
	                显示：
	                <select id="goodFilter">
	                	<option value="" >全部</option>
	                	<option >衣服</option>
                		<option >数码</option>
                		<option >饮食</option>
                		<option >家具</option>
                		<option >书籍</option>
                		<option >其他</option>
	                </select>
                </span>
			</nav>
            <article class="mt10">
            	<div class="p10 bgf9 bdc">
					<div>
				    	宝贝名称：
				        <input id="searchNameInput" class="mr20 input pct20" type="text" value="${StringUtils.defaultIfBlank(currName, "")}"/>
				        <a id="searchGoodBtn" class="bluebtn btn_s bdrad3 ml10" href="javascript:;">搜索</a>
				    </div>
				</div>
                <div class="p5 fix">
                	<span class="l">
                    	<input id="checkAllChk" class="vn" type="checkbox" />
                        <a id="checkAllBtn" href="javascript:;">全选</a>
                        <a id="removeBtn" class="ml10" href="javascript:;">删除</a>
                    </span>
                    <span class="r">
                        商品总数：<span id="dataCount" class="co">${goodCount}</span>
                        个
                    </span>
                </div>
                <div class="mt10 mb5 p5 bgef bdc tc">
                	<span class="dib pct30">商品</span>
                	<span class="dib pct10">编号</span>
                    <span class="dib pct10">单价（元）</span>
                    <span class="dib2 pct10">库存</span>
                    <span class="dib pct10">已销量</span>
                    <span class="dib pct10">发布时间</span> 
                    <span class="dib pct10">操作</span>       
                </div>
                <table width="100%" class="bdc tc" cellpadding="5" cellspacing="0">
                    <tbody>
                    	<s:iterator  value="#request.goodList"   var="good">
                    	<tr id="goodChk_${good.id}" class="bgef tl">
                            <td colspan="8"><input class="jsForCheck" type="checkbox" data="${good.id}"/></td>
                        </tr>
                        <tr id="good_${good.id}">
                            <td class="pct30 tl fix">
                            	<div class="w15 ml5 co l"></div>
                                <img class="ml5 mr10 l" width="50" height="50" src=""/>
                                <div class="cell">
                                    <a class="previewGoodBtn" href="@{AdminController.goodPreview(good.id)}" data="${good.id}"><s:property value="name"/></a>
                                    <a class="previewGoodBtn" href="javascript:;" data="${good.id}"><s:property value="chief"/></a>
                                </div>
                            </td>
                            <td class="pct10"><s:property value="goodSerial"/></td>
                            <td class="pct10"><s:property value="realPrice"/></td>
                            <td class="pct10"><s:property value="leftCount"/></td>
                            <td class="pct10"><s:property value="soldCount"/></td>
                            <td class="pct10" ><s:date name="createTime" format="yyyy-MM-dd"/></td>
							<td class="pct10">
                            	<a href="Market/editGood.action?id=${good.id}">编辑</a>
                            </td>
                        </tr>
                    	</s:iterator>
                        <tr class="bgef tr">
                        	<td class="p10" colspan="8">
                        		
                            </td>
                        </tr>
                     </tbody>
            	</table>
            </article>
        </section>
	</div>
</div>
</body>
<script type="text/javascript" src="public/js/min/jquery-1.8.3.js"></script>
<script type="text/javascript" src="public/js/min/newAjax.js"></script>
<script type="text/javascript" src="public/js/check.js"></script>
<script type="text/javascript" src="public/js/back/manageGood.js"></script>
</html>