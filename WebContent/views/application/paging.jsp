<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
		<s:if test="%{page>1}" >
			<a href="/Market/getGoodsList.action?goodsType=${goodsType}&page=${page - 1}" 
				style="display:block;float:left;width:60px;align:center">上一页</a>
		</s:if>
		<s:else>
			<a href="javascript:;" 
				style="display:block;float:left;width:60px;align:center">上一页</a>
		</s:else>
		<select name="page" style="float:left;margin-left:40px"
			onchange="javascript:window.location='/Market/getGoodsList.action?goodsType=${goodsType}&page='+this.value">
			<s:bean name="org.apache.struts2.util.Counter">
			<s:param name="first" value="1" />
			<s:param name="last" value="%{#request.pageCount-1}" />
			<s:iterator>
			<option value="<s:property />"
			<s:if test="%{page==(current-1)}"> selected="selected"</s:if>>
			<s:property />
			</option>
			</s:iterator>
			</s:bean>
		</select>
		<s:if test="#request.pageCount > #request.page+1">
			<a href="/Market/getGoodsList.action?goodsType=${goodsType}&page=${page + 1}" style="display:block;float:left;width:60px;align:center;margin-left:40px">下一页</a>
		</s:if>
		<s:else>
			<a href="javascript:;" 
				style="display:block;float:left;width:60px;margin-left:40px">下一页</a>
		</s:else>

</body>
</html>