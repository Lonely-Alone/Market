
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
                    2.&nbsp;您必须上传&nbsp;<span class="co">1</span>&nbsp;张商品预览图和&nbsp;<span class="co">1</span>&nbsp;张主图。副图最多可以上传&nbsp;<span class="co">4</span>&nbsp;张副图。
                </p>
                <p class="ml80 g9">
                    3.&nbsp;商品logo宽高推荐<span class="co">300*300</span>像素，主图和附图宽高推荐<span class="co">640*355</span>像素。
                </p>
            </div>
            <div class="mt10 p10 bgf9">
            	<div class="mt10 fix">
            		<s:bean name="org.apache.struts2.util.Counter" id="counter">
						<s:param name="first" value="1" />
						<s:param name="last" value="5" />
						<s:iterator>
							<div id="previewPicDiv" class="upload_img_box2 l rel">
		            			<form action="Market/upload.action"target="upload_target${current}" method="post" enctype="multipart/form-data">
									<p>主图：</p>
									<input type="file" name="image" class="dn jsForUpload" id="fileInput"></br>
									<a id="uploadTrigger" class="bdc p5 g5 uploadBtn mt20" href="javascript:;" rel="fileInput">点击上传</a>
								</form>
								<img id="uploadedPic" class="l mr10 jsForUploaded dn" src=""  height="90" width="90" rel="fileInput"/>
								<iframe id="upload_target" name="upload_target" class="dn"></iframe>
		            		</div>
						</s:iterator>
					</s:bean>
                </div>
            </div>
        </div>
    </div>
 </div>
