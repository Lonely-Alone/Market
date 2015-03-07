


var checkFun = function(isChecked){
	var checkAllBtn = $("#checkAllBtn"), checkAllChk = $("#checkAllChk");
	if(isChecked){
		$('.jsForCheck').attr('checked', false);
		checkAllBtn.text('全选');
		checkAllChk.attr("checked",false);
	}else{
		$('.jsForCheck').attr('checked', true);
		checkAllBtn.text('反选');
		checkAllChk.attr("checked",true);
		
	}
}

$("#checkAllBtn").click(function(){
	checkFun(!$(this).attr("checked"));
});
$("#checkAllChk").click( function(){
	checkFun(!$(this).attr("checked"));
});