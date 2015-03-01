(function($) {
	
	var IboxDefault = {
		title: "",
		index: 200,
		opacity: 0.8,
		sureBtnTxt: "确定",
		
		width: "auto",
		height: "auto",
		
		bar: true, //是否显示标题栏
		bg: true, //是否显示半透明背景
		btnclose:true, //是否显示关闭按钮
		
		fix: false, //是否弹出框固定在页面上
		bgclose: false, //是否点击半透明背景隐藏弹出框
		drag: false, //是否可拖拽
		
		ajaxTagA: true, //是否a标签默认Ajax操作
		
		protect: "auto", //保护装载的内容
		
		onshow: $.noop, //弹窗显示后触发事件
		onclose: $.noop, //弹窗关闭后触发事件
		
		delay: 0 //弹窗打开后关闭的时间, 0和负值不触发
	};
	
	var WRAP = '<div id="iboxOverlay" onselectstart="return false;"></div>' + 
		'<div class="wrap_out" id="wrapOut">' +
			'<div id="wrapBar" class="wrap_bar" onselectstart="return false;">' +
				'<h4 id="wrapTitle" class="wrap_title"></h4>' +
				'<a id="wrapClose" class="wrap_close" href="javasctipt:" title="关闭"></a>' +	
			'</div>' +
			'<div id="wrapMain"></div>' +
		'</div>';
	
	$.fn.Ibox = function(options) {	
		options = options || {};
		var s = $.extend({}, IboxDefault, options);
		return this.each(function() {		
			var node = this.nodeName.toLowerCase();
			if (node === "a" && s.ajaxTagA) {
				$(this).click(function() {
					var href = $.trim($(this).attr("href"));
					if (href && href.indexOf("javascript:") != 0) {
						if (href.indexOf('#') === 0) {
							$.Ibox($(href), options);
						} else {
							//加载图片
							$.Ibox.loading();
							var myImg = new Image(), element;
							myImg.onload = function() {
								var w = myImg.width, h = myImg.height;
								if (w > 0) {
									options.protect = false;
									$.Ibox($('<img src="'+ href +'" width="'+ w +'" height="'+ h +'" />'), options);
								}
							};
							myImg.onerror = function() {
								//显示加载图片失败
								$.Ibox.ajax(href, {}, options);
							};
							myImg.src = href;
						}
					}	
					return false;
				});
			} else {
				$.Ibox($(this), options);	
			}
		});				
	};
	
	$.Ibox = function(elements, options) {
		if (!elements) {
			return;	
		}

		var s = $.extend({}, IboxDefault, options || {});

		//弹框的显示
		var eleOut = $("#wrapOut"), eleBlank = $("#iboxOverlay");
					
		if (eleOut.size()) {
			eleOut.show();
			eleBlank[s.bg? "show": "hide"]();
		} else {
			$("body").append(WRAP);
			eleOut = $("#wrapOut");
		}
		
		if (typeof(elements) === "object") {
			elements.show();
		} else {
			elements = $(elements);
		}
		//一些元素对象
		$.o = {
			s: s,
			ele: elements,
			bg: eleBlank.size()? eleBlank: $("#iboxOverlay"), 
			out: eleOut, 
			tit: eleOut.find("#wrapTitle"),
			bar: eleOut.find("#wrapBar"), 
			clo: eleOut.find("#wrapClose"),
			main: eleOut.find("#wrapMain")
		};
		
		// 标题以
		$.o.tit.html(s.title);
		
		//装载元素
		$.o.main.empty().append(elements);

		if ($.isFunction(s.onshow)) {
			s.onshow();
		}

		$.Ibox.setSize();

		$.Ibox.setPosition();

		if (s.fix) {
			$.Ibox.setFixed();
		}
		if (s.drag) {
			$.Ibox.drag();	
		} else {
			$(window).resize(function() {
				$.Ibox.setPosition();					  
			});	
		}
		if (!s.bar) {
			$.Ibox.barHide();	
		} else {
			$.Ibox.barShow();	
		}
		if (!s.bg) {
			$.Ibox.bgHide();
		} else {
			$.Ibox.bgShow();
		}
		if (!s.btnclose) {
			$.Ibox.closeBtnHide();	
		} else {
			$.o.clo.click(function() {
				$.Ibox.hide();	
				return false;
			});
		}
		if (s.bgclose) {
			$.Ibox.bgClickable();	
		}
		if (s.delay > 0) {
			setTimeout($.Ibox.hide, s.delay);	
		}
	};
	$.extend($.Ibox, {
		setSize: function() {
			if (!$.o.main.size() || !$.o.ele.size() || !$.o.main.size()) {
				return;	
			}
			//主体内容的尺寸
			$.o.out.css({
				"width": $.o.s.width,
				"height:": $.o.s.height
			});
						
			return $.o.out;
		},
		setPosition: function(flag) {
			flag = flag || false;
			if (!$.o.bg.size() || !$.o.ele.size() || !$.o.out.size()) {
				return;	
			}
			var w = $(window).width(), h = $(window).height(), st = $(window).scrollTop(), ph = $("body").height();
			if (ph < h) {
				ph = h;	
			}
			$.o.bg.width(w).height(ph).css("opacity", $.o.s.opacity);
			//主体内容的位置
			//获取当前主体元素的尺寸
			var xh = $.o.out.outerHeight(), xw = $.o.out.outerWidth();
			var t = st + (h - xh)/2, l = (w - xw)/2;
			
			if ($.o.s.fix && window.XMLHttpRequest) {
				t = (h - xh)/2;
			}
			if (flag === true) {
				$.o.out.animate({
					top: t,
					left: l
				});
			} else {
				$.o.out.css({
					top: t,
					left: l,
					zIndex: $.o.s.index
				});
			}
			return $.o.out;
		},
		//定位
		setFixed: function() {
			if (!$.o.out || !$.o.out.size()) {
				return;	
			}
			if (window.XMLHttpRequest) {
				$.Ibox.setPosition().css({
					position: "fixed"			
				});
			} else {
				$(window).scroll(function() {
					$.Ibox.setPosition();						  
				});
			}
			return $.o.out;
		},
		//背景可点击
		bgClickable: function() {
			if ($.o.bg && $.o.bg.size()) {
				$.o.bg.click(function() {
					$.Ibox.hide();
				});
			}
		},
		//背景隐藏
		bgHide: function() {
			if ($.o.bg && $.o.bg.size()) {
				$.o.bg.hide();
			}
		},
		//背景层显示
		bgShow: function() {
			if ($.o.bg && $.o.bg.size()) {
				$.o.bg.show();
			} else {
				$('<div id="iboxOverlay"></div>').prependTo("body");	
			}
		},
		//标题栏隐藏
		barHide: function() {
			if ($.o.bar && $.o.bar.size()) {
				$.o.bar.hide();
			}
		},
		//标题栏显示
		barShow: function() {
			if ($.o.bar && $.o.bar.size()) {
				$.o.bar.show();
			}
		},
		//关闭按钮隐藏
		closeBtnHide: function() {
			if ($.o.clo && $.o.clo.size()) {
				$.o.clo.hide();
			}
		},
		//弹框隐藏
		hide: function() {
			if ($.o.ele && $.o.out.size() && $.o.out.css("display") !== "none") {
				$.o.out.fadeOut("fast", function() {
					if ($.o.s.protect && (!$.o.ele.hasClass("wrap_content") || $.o.ele.attr("id"))) {
						$.o.ele.hide().appendTo($("body"));
					}
					$(this).remove();
					if ($.isFunction($.o.s.onclose)) {
						$.o.s.onclose();
					}
				});
				if ($.o.bg.size()) {
					$.o.bg.fadeOut("fast", function() {
						$(this).remove();								
					});
				}
			}
			return false;
		},
		//拖拽
		drag: function() {
			if (!$.o.out.size() || !$.o.bar.size()) {
				$(document).unbind("mouseover").unbind("mouseup");
				return;
			}
			var bar = $.o.bar, out = $.o.out;
			var drag = false;
			var currentX = 0, currentY = 0, posX = out.css("left"), posY = out.css("top");
			bar.mousedown(function(e) {
				drag = true;
				currentX = e.pageX;
				currentY = e.pageY;							 
			}).css("cursor", "move");	
			$(document).mousemove(function(e) {
				if (drag) {
					var nowX = e.pageX, nowY = e.pageY;
					var disX = nowX - currentX, disY = nowY - currentY;
					out.css("left", parseInt(posX) + disX).css("top", parseInt(posY) + disY);
				}					   
			});
			$(document).mouseup(function() {
				drag = false;
				posX = out.css("left");
				posY = out.css("top");
			});
		},
		//预载
		loading: function() {
			$.Ibox($('<div class="wrap_content">加载中...</div>'), { bar: false });
		},
		//confirm
		confirm: function(message, sureCall, cancelCall, options) {
			$.Ibox($('<div class="wrap_content">'+message+'</div><div class="warp_button"><a id="iboxSureBtn" class="bluebtn btn mr20" href="javascript:;"></a><a id="iboxCancelBtn" class="graybtn btn" href="javascript:;">取消</a></div>'), options);
			$("#iboxSureBtn").html($.o.s.sureBtnTxt).click(function() {
				if ($.isFunction(sureCall)) {
					sureCall.call(this);
				}						
			});
			$("#iboxCancelBtn").click(function() {
				if (cancelCall && $.isFunction(cancelCall)) {
					cancelCall.call(this);
				}
				$.Ibox.hide();						  
			});	
		},
		//open
		open: function(message, callback, options) {
			$.Ibox($('<div class="wrap_content">'+message+'</div><div class="warp_button"><a id="iboxSureBtn" class="bluebtn btn" href="javascript:;"></a></div>'), options);
			$("#iboxSureBtn").html($.o.s.sureBtnTxt).click(function() {
				if (callback && $.isFunction(callback)) {
					callback.call(this);	
				}
				$.Ibox.hide();
			});
				
		},
		//uri Ajax方法
		ajax: function(uri, params, options) {
			if (uri) {
				$.Ibox.loading();
				options = options || {};
				options.protect = false;
				$.ajax({
					url: uri,
					data: params || {},
					success: function(html, other) {
						$.Ibox(html, options);
					},
					error: function() {
						$.Ibox.open("加载出了点问题。");	
					}
				});	
			}
		}
	});
})(jQuery);