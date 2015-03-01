(function($) {
	$.testRemind = function(target, content, pos) {
		if (content) {
			Do('powerFloat', function(){
				target.powerFloat({
					eventType: null,
					targetMode: "remind",
					target: content,
					zIndex: 201,
					position: (pos ? pos : "5-7")
				});
			})
		}
	};
	$.extend($.testRemind,{
		hide: function() {
			var target = $("#floatBox_remind");
			if (target.length > 0) {
				target.hide();
				$(".float_corner").empty();	
			}	
		},
		bind: function() {
			if (!document.data("testRemind")) {
				document.mousedown(function() {$testRemind.hide()}).data("testRemind", true);	
			}
		}
	})
})(jQuery);