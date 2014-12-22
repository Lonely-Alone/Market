/*---------------配置模块-------------*/
Do.add('scroll', {path: 'public/js/min/scroll.js', type: 'js'});


Do(function(){
	Do('scroll',function(){});
	
	var picScroll = function(){
		Do('scroll',function(){
			new dhooo({
				btns:UIs.call(UI('numberScroll'),'LI')
				,className:'hot'
				,contentID:'picScroll'
				,len:360
				,dir:'top'
				,auto:true
			});
		});
			
			
	}
	picScroll();
	
	
});
