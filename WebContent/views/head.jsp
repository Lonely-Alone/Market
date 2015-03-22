<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<link rel="stylesheet" type="text/css" href="public/css/head.css">
				<ul class="head_menu">
					<li><a href="javascript:;">我的订单</a> </li>
					<li><a href="javascript:;" >手机购物</a></li>
					<li  class="head_li1"><a href="javascript:;" >客户服务 </a>
						<div class="dn drop_servi">
							<div class="item"> <a href="javascript:;" >常见问题</a> </div>
							<div class="item"> <a href="javascript:;" >售后服务</a> </div>
							<div class="item"> <a href="javascript:;" >在线客服</a> </div>
							<div class="item"> <a href="javascript:;" >投诉中心</a> </div>
							<div class="item"> <a href="javascript:;" >客服邮箱</a> </div>
						</div>
					</li>
					<li  class="head_li2"> <a href="javascript:;" >网站导航</a>
						<div class="dn drop_nav">
							<div> <span >购物</span></div>
							<div class="item"> 
								<a href="javascript:;" >图书</a> 
						 		<a href="javascript:;" >数码</a> 
					 		</div>
							<div class="item"> 	
								<a href="javascript:;" >服饰</a> 
								<a href="javascript:;" >食品</a> 
							</div>
							<div> <span >生活</span> </div>
							<div class="item"> 
								<a href="javascript:;" >商旅</a> 
							 	<a href="javascript:;" >保险</a> 
							</div>
							<div class="item"> 
								<a href="javascript:;" >游戏</a> 
							 	<a href="javascript:;" >水电</a> 
						 	</div>
							<div> <span >娱乐</span> </div>
							<div class="item"> 
								<a href="javascript:;" >电影</a> 
							 	<a href="javascript:;" >玩具</a> 
						 	</div>
							<div class="item"> 
								<a href="javascript:;" >棋牌麻将</a> 
							 	<a href="javascript:;" >游戏机</a> 
						 	</div>
						</div>
					</li>
					<s:if test="#session.member.username != null && !#session.member.username.isEmpty()">
						<li>
							 <a href="javascript:;"><s:property value="#session.member.username"/></a>
						</li>
						<li>
							<a href="/Market/logout.action">退出</a>
						</li>
					</s:if>
					<s:else >
						<li>
							<a href="/Market/views/application/Login.jsp">登录</a>
						</li>
						<li>
							<a href="/Market/views/application/register.jsp">注册</a>
						</li>
					</s:else>
				</ul>
