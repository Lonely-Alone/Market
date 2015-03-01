// 上传图片、预览
var iFrameCallBack = function(uploadResult) {
	var url=uploadResult.split("|")[0],target=uploadResult.split("|")[1];
	$("#uploadedPic"+target).attr("src",url).removeClass("dn");
	$("#form"+target).addClass("dn");
	
};

$(".uploadBtn").click(function(){
	$("#"+$(this).attr('rel')).click();
})

$(".jsForUpload").change(function(){
	$(this).parent().submit();
})

