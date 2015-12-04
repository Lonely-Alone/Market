<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>地址编辑</title>
</head>
	<link rel="stylesheet" type="text/css" href="public/css/common.css">
	<link rel="stylesheet" type="text/css" href="public/css/address.css">
	<link rel="stylesheet" type="text/css" href="public/js/sobox/style.css">
<script type="text/javascript" src="public/js/min/jquery-1.8.3.js"></script>
<body >
<div class="address_box" >
		<div class="l">
			<span class="label">收货人：</span>
    		<input type="text" class="address_input" id="userName">
    	</div>
    	<div class="mt30 l">
    		<span class="label">地址：</span>
	    	<div class="address">
				<select id="s_province" name="s_province"></select>  
	    		<select id="s_city" name="s_city" ></select>  
	    		<select id="s_county" name="s_county"></select>
	    	</div>
    	</div>
    	<div class="mt30 l">
    		<span class="label">详细地址：</span>
	    	<div class="address">
				<input type="text" class="address_input" id="address">
	    	</div>
    	</div>
    	<div class="mt30 l">
    		<span class="label">手机号码：</span>
	    	<div class="address">
				<input type="text" class="address_input" id="cellphone">
	    	</div>
    	</div>
    	<div class="mt30 l">
			<span  class="saveButton">保存收货人信息</span>
    	</div>
</div>
</body>
<link rel="stylesheet" type="text/css" href="public/js/sobox/style.css">
<script type="text/javascript" src="public/js/min/jquery-1.8.3.js"></script>
<script type="text/javascript" src="public/js/sobox/jquery.sobox.min.js"></script>
<script type="text/javascript" src="public/js/min/area.js"></script>
<script type="text/javascript">
	_init_area();
	$(".saveButton").click(function(){
		var name= $("#userName").val(),province=$("#s_province").val(),city=$("#s_city").val(),
			county=$("#s_county").val(),address=$("#address").val(),cellphone=$("#cellphone").val();
		if(name.length==0){
			$.sobox.tip({content: '请填写收件人' });
		}else if(province.length==0||province=="省份"){
			$.sobox.tip({content: '请选择省份' });
		}else if(city.length==0||city=="地级市"){
			$.sobox.tip({content: '请选择所在地级市' });
		}else if(county.length==0||county=="市、地级县"){
			$.sobox.tip({content: '请选择所在市、地级县' });
		}else if(address.length==0){
			$.sobox.tip({content: '请填写详细地址' });
		}else if(cellphone.length==0){
			$.sobox.tip({content: '请填写手机号码' });
		}else{
			$.ajax({
	  			   type: "POST",
	  			   url: "/Market/addAddress.action",
	  			   data: {
	  				name:name,
	  				province:province,
	  				city:city,
	  				county:county,
	  				address:address,
	  				cellPhone:cellphone
	  			   },
	  			   success: function(json){
	  				 parent.soIframe.removePop();
	  			   }
	  			});
		}
		
	})
	
	
	
</script>
</html>