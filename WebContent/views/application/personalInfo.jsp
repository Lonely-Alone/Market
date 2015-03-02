<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心</title>
</head>
<link type="text/css" href="/public/css/blog.css" rel="stylesheet" />
<body>
<jsp:include page="/views/head.jsp"></jsp:include>
<div class="set_r_box">
	<div class="inline_box"><div class="inline_any pct10 b tr">基本信息:</div>
	</div>
    <div id="showBaseInfo" class="set_content_box">
		<div class="tr h16">
		     <a  class="i i_11 ibg_l editInfo" href="javascript:;" title="编辑" rel="BaseInfo_${interviewee.id}"></a>
	   </div>
	   <div class="set_content_list">
       		<div class="inline_box"><div class="inline_any pct10 g9 tr">姓名:</div><div class="inline_any pct80 pl15">大李力</div></div>
			<div class="inline_box"><div class="inline_any pct10 g9 tr">性别:</div><div class="inline_any pct80 pl15">男</div></div>
			<div class="inline_box"><div class="inline_any pct10 g9 tr">生日:</div><div class="inline_any pct80 pl15">1990.2.1</div></div>
	  		<div class="inline_box"><div class="inline_any pct10 g9 tr">邮箱:</div><div class="inline_any pct80 pl15">***@***</div></div>
	   
	   </div>
   	</div>
    <div id="editBaseInfo" class="bgee p5 abs_out">
    	<form id="formBaseInfo}">
	        <div class="inline_box"><div class="inline_any pct10 g9 tr">姓名:</div>
	        	<div class="inline_any pct80 pl15">
	        		<input id="memberName" class="set_input_220" value="" />
	        		<span class="cr ml10 showErrorInfo"></span>
	       		</div>
	   		</div>
	        <div class="inline_box"><div class="inline_any pct10 g9 tr">性别:</div>
	        <div class="inline_any pct80 pl15">
	           <input type="radio" name="sex" value="Male" class="vn memberSex"  />男<input type="radio" name="sex" value="Female" class="vn memberSex" />女<input type="radio" name="sex" value="secrecy" class="vn memberSex" />保密</div>
	        </div>
	        <div class="inline_box"><div class="inline_any pct10 g9 tr">生日:</div>
	        	<div class="inline_any pct80 pl15">
	            	<select id="birthYear" class="set_select vn selectYear" day="birthDay" month="birthMonth">
	            	        <option value=""></option>	             	
	            	        <option value=""></option>
	            	</select>年
	                <select id="birthMonth" class="set_select vn selectMonth"  day="birthDay" year="birthYear">
	            	        <option value=""></option>		                
	            	        <option value=""></option>
	                </select>月
	                <select id="birthDay" class="set_select vn selectDay">
	            	        <option value=""></option>	            		                   
	            	        <option value=""></option>
	                </select>日
	            </div>
	        </div>
	         <div class="inline_box">
	        	<div class="inline_any pct10 g9 tr">电子邮箱:</div>
	        	<div class="inline_any pct80 pl15 lh20">
	        		<input id="emailAddress" class="set_input_220" value="" />
	        		<span class="cr ml10 showErrorInfo">*</span>
	        	</div>
	        </div>
	        <div class="inline_box mt10">
	        	<div class="inline_any pct10"></div>
	        	<div class="inline_any pct80 pl15">
		        	<a class="bluebtn_set saveBaseInfo" rel="BaseInfo_${interviewee.id}" href="javascript:;">保存</a>
		        	<a class="grabtn_set ml10 cancelBtn" rel="BaseInfo_${interviewee.id}" href="javascript:;" >取消</a>
	        	</div>
	       	</div>
       	</form>
   	</div>
  `
</div>
</body>
</html>