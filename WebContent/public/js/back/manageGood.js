
//
///* 商品管理 */
//var goodFilter = $("goodFilter");
//// 筛选
//goodFilter.addEvent('change', function(){
//	new AjaxPost(this,{
//		url: '/AdminController/filterGoods',
//		data: {goodFilter: this.val()}
//	}).send();
//});
//// 搜索
//$('searchGoodBtn').addEvent('click', function(){
//	new AjaxPost(this, {
//		url: '/AdminController/filterGoods',
//		data: {
//			name: searchNameInput.val().trim(), 
//			goodFilter: $("goodFilter").val()
//		}
//	}).send();
//});
////预览商品
//var previewGoodBtn=$$(".previewGoodBtn")
//if($isArr(previewGoodBtn)){
//	previewGoodBtn.addEvent('click',function(){
//		var ele=this;
//		Ibox.open({
//			url:'<div id="previewBox"></div>',
//			title: '商品预览',
//			width: 420,
//			onShow: function(){
//				Ibox.reposition();
//				new AjaxPost(ele, {
//					url : '/AdminController/jsonGoodPreview',
//					data: {goodId: ele.attr('data')},
//					callback: function(json){
//						if(json.succ){
//							$("previewBox").html(json.html);
//								Ibox.reposition();
//							}
//						}
//				}).send();
//			}
//		});
//	});
//}
// 删除商品
var removeData = function(){
	$("#removeBtn").click(function(){
		var goodIds="";
		$(".jsForCheck:checked").each(function(index,item){
			goodIds+=$(item).attr("data")+",";
		});
		if(goodIds.length==0){
			return;
		}
		$.ajax({
			url: 'Market/removeGoods.action',
			data: { goodIds :goodIds },
			type:'POST',
			success: function(json){
				$(".jsForCheck:checked").each(function(index,item){
					var id=$(item).attr("data");
					$("#goodChk_"+id).remove();
					$("#good_"+id).remove();
				});
				$("#dataCount").text(parseInt($("#dataCount").text())-ids.length);
				if(json.succ){
					Ibox.alert("删除成功");
				}else{
					Ibox.alert("删除成功，但是编号为："+json.msg+"的商品已经被删除");
				}
			}
		});
	})
};

removeData();