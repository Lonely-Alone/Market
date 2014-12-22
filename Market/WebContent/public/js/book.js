Do.add('sort', {path: 'public/js/min/sort.js', type: 'js'});
Do.add('scroll', {path: 'public/js/min/scroll.js', type: 'js'});

/*---------------页面其他方法-------------*/
Do(function(){
	
	Do('sort',function(){});
	Do('scroll',function(){});
	
	var scroolT1 = function(){
		Do('sort',function(){
			new dhooo({
				btns:UIs.call(UI('myTab_btns1'),'LI')
				,className:'hot'
				,contentID:'main1'
				,len:360
			});
			
		});
	}
	scroolT1();
	
	//分类推荐
	var scroolT2 = function(){
		Do('scroll',function(){
			new dhooo({
				btns:UIs.call(UI('myTab_btns2'),'LI')
				,className:'hot'
				,contentID:'main2'
				,len:190
				,dir:'top'
				,auto:true
			});
			
		});
	}
	
	scroolT2();


	
	var switchBook = function(){
		var books = $("#bookSort").find("li");
		books.mouseenter(function(){
			SwapPaiHangShopDiv('DivShopPaiHangFlag1','1');
		})
			
	}
	
//	switchBook();
});

