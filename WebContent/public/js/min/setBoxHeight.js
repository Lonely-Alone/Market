(function($) {
	$.setBoxHeight = function(element,offsetY,update) {	
		if (element.length > 0){
			Do('tinyscrollbar', function(){
				var n=0, fnScrollBar = function(){
					element.find('.viewport').height(document.documentElement.clientHeight - element.offset().top - offsetY);
					if(update===true){
						element.data("plugin_tinyscrollbar").update();
					}else{
						element.tinyscrollbar();
					}
				};
				$(window).resize(function(){
					if(n%2==0){
						fnScrollBar();
					}
					n++;
				}).ready(function(){
					fnScrollBar();
				});
			})
		}
	};
})(jQuery);