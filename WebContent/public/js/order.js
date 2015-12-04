

//选择支付方式

$(".payMode").click(function(){

	var ele=$(this);
	if(!ele.hasClass("selected")){
		$(".payMode").removeClass("selected");
		ele.addClass("selected");
	}
	
})

var soIframe = null;
$("#addAddress").click(function(){
	soIframe = $.sobox.pop({
		    type:'iframe',
		    width:600,height:400, //iframe模式必须写有height，不支持自适应，自动出现滚动条
		    title:'新增收货人信息',
		    iframe:'/Market/views/good/address.jsp'//iframe 请求地址
	});

})
