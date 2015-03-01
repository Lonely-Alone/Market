(function($) {	
	var ajaxDefault = {
		url: null,
		type: 'get',
		timeOut: 30000,
		data: null,
		ifModified: false,
		dataType: 'json',
		remind: null,
		text: "",
		delay: 0,
		callback: $.noop
	};
	
	$.newAjax = function(elements,options) {
		var s = $.extend({}, ajaxDefault, options), trigger = $(elements), text = trigger.text(), $jsonHandle = function(json, s) {
			if (json) {
				if (json["msg"]) {
					if (s.reminds && s.remind.length > 0) {
						Do('testRemind', function(){
							$.testRemind(trigger,json["msg"]);
							var valDelay = parseInt(s.delay);
							if (valDelay > 0) {
								setTimeout(function() {$.testRemind.hide();}, valDelay);
							}
						})
					} else {
						Do('Ibox', function(){
							$.Ibox.open(json["msg"], null, {delay: s.delay});
						});
					}
				}
				
				if (json["url"]) {
					window.location.href = url
				} else {
					if (json["refresh"]) {
						window.location.href = window.location.href.split("#")[0]
					}
				}
			}				
		};
		
		$.ajax({
			url: s.url,
			type: s.type,
			timeout: s.timeOut,
			data: s.data,
			ifModified: s.ifModified,
			dataType: s.dataType,
			beforeSend: function(){
				if (s.url && trigger.data("ajax") != false) {
					trigger.data("ajax", false);
					if (s.text) {
						trigger.text(s.text);
					}
				}
			},
			success: function(json){
				trigger.data("ajax", true);						
				$jsonHandle(json, s);
				if ($.isFunction(s.callback)) {
					s.callback(json);	
				}
				return false;
			},
			complete: function(XMLHttpRequest){
				if (s.text) {
					trigger.text(text);
				}
			},
			error: function(){
				trigger.data("ajax", true);
				var json = {
					succ: false,
					msg: "系统繁忙，请稍后再试。"
				};
				$jsonHandle(json, s);
				if (s.text) {
					trigger.text(text);
				}
				return false;
			}
		});
	};	
})(jQuery);