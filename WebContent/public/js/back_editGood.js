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

var $isEmpty = function(ele){
	if(ele.val().length==0){
		return true;
	}else{
		return false;
	}
}
// 发布商品
var addGoodBtn = $("#addGoodBtn");
addGoodBtn.click( function(){
	var  previewPicDiv = $(".picDiv"), nameInput = $("#nameInput"), chiefInput = $("#chiefInput"), showPriceInput = $("#showPriceInput"), 
		realPriceInput = $("#realPriceInput"), leftCountInput = $("#leftCountInput"), descrArea = $("#descrArea"),goodType=$("#goodType");
	if($isEmpty(nameInput)){
		alert( "请输入商品名称");
	}else if($isEmpty(chiefInput)){
		alert( "请输入副标题");
	}else if($isEmpty(goodType)){
		alert( "请选择商品类型");
	}else  if($isEmpty(showPriceInput) || new Number(showPriceInput.val()) > 20000 || new Number(showPriceInput.val()) < 1){
		alert(  "一口价必须在1元-20000元之间");
	}else if($isEmpty(realPriceInput) || new Number(realPriceInput.val()) > 20000 || new Number(realPriceInput.val()) < 1){
		alert( "一口价必须在1元-20000元之间");
	}else if($isEmpty(leftCountInput) || new Number(leftCountInput.val()) < 0){
		alert(  "库存必须大于等于0");
	}else if($isEmpty(descrArea)){
		alert(  "请输入商品描述");
	}else if(previewPicDiv.find('img').attr('src').length == 0){
		alert( '您必须上传&nbsp;<span class="co">1</span>&nbsp;张商品预览图');
	}else{
		var picUrls = '';
		previewPicDiv.find('img').each(function(index,item){
			if(item.src.length>0){
				picUrls += item.src + ',';
			}
		})
		if(picUrls.length>0){
			picUrls = picUrls.substring(0, picUrls.length-1);
		}
		$.ajax({
			type: "POST",
			url: 'Market/saveGood.action',
			data: {
//				goodId: $("goodIdInput").val(),
				name: nameInput.val().trim(),
				chief: chiefInput.val().trim(),
				showPrice: Number(showPriceInput.val().trim()),
				realPrice: Number(realPriceInput.val().trim()),
				leftCount: Number(leftCountInput.val().trim()),
				description: descrArea.val(),
				picUrls: picUrls.length>0?picUrls:null,
				goodType:goodType.val().trim(),
			},
			success: function(json){
				if(json.succ){
					alert(json.msg);
				}
			}
		});
	}
});


