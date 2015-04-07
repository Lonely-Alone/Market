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
			<nav id="addGoodNav" class="nav_content_box fix">
				<h4 class="l">填写宝贝基本信息</h4>
                <span class="g9 r">
                	<span class="cr">*</span>
                    表示该项必填
                </span>
			</nav>
            <article class="mt20">
            	<div class="p5 ca f14 bbahc">1.宝贝基本信息</div>
                <div class="ml20 mt10">
                    <div class="mb10">
                    	宝贝名称：
                        <span class="cr">*</span>
                        <input id="nameInput" class="jsForCount pct60 input vn" type="text" value='<s:property value="#request.good.name"/>'/>
                        <input id="goodIdInput" class="dn " type="text" value='<s:property value="#request.good.id"/>'/>
                    </div>
                    <div class="mb10">
                    	<span class="dib w60 tr">副标题：</span>
                        <span class="cr">*</span>
                        <input id="chiefInput" class="jsForCount pct60 input vn" type="text" value='<s:property value="#request.good.chief"/>'/>
                    </div>
                    <div class="mb10">
                    	<span class="dib w60 tr">宝贝类型：</span>
                        <span class="cr">*</span>
                        <select id="goodType" >
                        	<option selected><s:property value="#request.good.goodType"/></option>
                        	<s:iterator value="{'服饰','数码','饮食','家具','书籍','其他' }" id="type">
                       			<option ><s:property/></option>
                        	</s:iterator>
		                </select>
                    </div>
                    <div class="mb10">
                    	<span class="dib w60 tr">市场价：</span>
                        <span class="cr">*</span>
                        <input id="showPriceInput"  class="pct20 input vn jsForPrice" type="text" value='<s:property value="#request.good.showPrice"/>'/>
                        元
                        <span class="ml20 dib w60 tr">商店价：</span>
                        <span class="cr">*</span>
                        <input id="realPriceInput" value='<s:property value="#request.good.realPrice"/>' class="pct20 input vn jsForPrice" type="text"/>
                        元
                    </div>
                    <div class="mb10">
                    	<span class="dib w60 tr">宝贝数量：</span>
                        <span class="cr">*</span>
                        <input id="leftCountInput" class="pct20 input vn jsForNumber" type="text" value='<s:property value="#request.good.leftCount"/>'/>
                        件
                     </div>
                     <div class="mb10 fix">
                     	<div class="l">
                        	<span class="dib w60 tr">宝贝描述：</span>
                     		<span class="cr">*</span>
                        </div>
                        <div class="cell">
                        	<textarea id="descrArea" class="textarea pct85" rows="8"><s:property value="#request.good.description"/></textarea><br/>
                        </div>
                     </div>
                </div>
                <div class="p5 ca f14 bbahc">上传图片</div>
                <div class="mt10 ml20">
                   	<div class="mb10 fix">
					 	<span class="l">宝贝图片：</span>
					    <div class="cell">
					    	<div class="ml10 pct85 bdc">
					        	<div class="pl10 pt10 bgef">
					            	<a class="upload_nav_on" href="#">本地上传</a>
					            </div>
					            <div class="mt20 ml80 pl20 pb20">
					                <p class="mt20 mb10 ml45 g9">
					                    提示：1.&nbsp;本地上传图片大小不能超过&nbsp;<span class="co">500K</span>&nbsp;。
					                </p>
					                <p class="ml80 mb10 g9">
					                    2.&nbsp;您必须上传&nbsp;<span class="co">2</span>&nbsp;张及以上商品预览图。
					                </p>
					                <p class="ml80 g9">
					                    3.&nbsp;商品logo宽高推荐<span class="co">300*300</span>像素，主图和附图宽高推荐<span class="co">640*355</span>像素。
					                </p>
					            </div>
					            <div class="mt10 p10 bgf9">
					            	<div class="mt10 fix">
						            	<div id="mainDiv" class="upload_img_box2 l rel ">
					            			<form action="Market/upload.action" id="form0" class="dn" target="upload_target0" method="post" enctype="multipart/form-data">
												<p>主图：</p>
												<input type="file" name="image" class="dn jsForUpload" id="fileInput0"></br>
												<input type="hidden" name="target" value="0"/>
												<a id="uploadTrigger0" class="bdc p5 g5 uploadBtn mt20" href="javascript:;" rel="fileInput0">点击上传</a>
											</form>
											<img id="uploadedPic0" class="l mr10 jsForUploaded " src="<s:property value="#request.good.imgUrl"/>" url="<s:property value="#request.good.imgUrl"/>"  height="90" width="90" rel="fileInput0"/>
											<iframe id="upload_target0" name="upload_target0" class="dn"></iframe>
					            		</div>
						            	<s:iterator value="#request.attchs" var="attch" status="item">
						            		<div id="previewPicDiv<s:property value="#item.index+1"/>" class="upload_img_box2 l rel picDiv">
						            			<form action="Market/upload.action" id="form<s:property value="#item.index+1"/>" class="dn" target="upload_target<s:property value="#item.index+1"/>" method="post" enctype="multipart/form-data">
													<p>图<s:property value="#item.index+1"/>：</p>
													<input type="file" name="image" class="dn jsForUpload" id="fileInput<s:property value="#item.index+1"/>"></br>
													<input type="hidden" name="target" value='<s:property value="#item.index+1"/>'/>
													<a id="uploadTrigger" class="bdc p5 g5 uploadBtn mt20 dn" href="javascript:;" rel="fileInput<s:property value="#item.index+1"/>">点击上传</a>
												</form>
												<img id="uploadedPic<s:property value="#item.index+1"/>" class="l mr10 jsForUploaded " src='<s:property value="url" />' url='<s:property value="url" />' height="90" width="90" rel="fileInput<s:property value="#item.index+1"/>"/>
												<iframe id="upload_target" name="upload_target<s:property value="#item.index+1"/>" class="dn"></iframe>
						            		</div>
						            	</s:iterator>
					            		<s:bean name="org.apache.struts2.util.Counter" id="counter">
											<s:param name="first" value="#request.attchs.size +1" />
											<s:param name="last" value="5" />
											<s:iterator>
													<div id="previewPicDiv${current-1 }" class="upload_img_box2 l rel picDiv">
								            			<form action="Market/upload.action" id="form${current-1 }" class="" target="upload_target${current-1}" method="post" enctype="multipart/form-data">
															<p>图${current-1}：</p>
															<input type="file" name="image" class="dn jsForUpload" id="fileInput${current-1}"></br>
															<input type="hidden" name="target" value="${current-1}"/>
															<a id="uploadTrigger${current-1}" class="bdc p5 g5 uploadBtn mt20" href="javascript:;" rel="fileInput${current-1}">点击上传</a>
														</form>
														<img id="uploadedPic${current-1}" class="l mr10 jsForUploaded dn" src=""  height="90" width="90" rel="fileInput${current-1}"/>
														<iframe id="upload_target" name="upload_target${current-1}" class="dn"></iframe>
								            		</div>
											</s:iterator>
										</s:bean>
					                </div>
					            </div>
					        </div>
					    </div>
					 </div>
                </div>
                <div class="mt10 tc">
                	<a id="addGoodBtn" class="bluebtn btn_m" href="javascript:;">${null == good ? "发布商品" : "保存"}</a>
                </div>
            </article>
        </section>
	</div>
</div>
</body>
<script type="text/javascript" src="public/js/min/jquery-1.8.3.js"></script>
<script type="text/javascript" src="public/js/min/newAjax.js"></script>
<script type="text/javascript" src="public/js/back/editGood.js"></script>
</html>