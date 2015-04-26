


var checkFun = function(isChecked){
	var checkAllBtn = $("#checkAllBtn"), checkAllChk = $("#checkAllChk");
	if(isChecked){
		$('.jsForCheck').attr('checked', false);
		checkAllChk.attr("checked",false);
		checkAllBtn.attr("checked",false);
	}else{
		$('.jsForCheck').attr('checked', true);
		checkAllChk.attr("checked",true);
		checkAllBtn.attr("checked",true);
		
	}
}
