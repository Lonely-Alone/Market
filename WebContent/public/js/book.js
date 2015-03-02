Do.add('sort', {path: 'public/js/min/sort.js', type: 'js'});
Do.add('scroll', {path: 'public/js/min/scroll.js', type: 'js'});
//newAjax
Do.add('newAjax', {path: 'public/js/min/newAjax.js', type: 'js'});

/*---------------页面其他方法-------------*/
Do(function(){
	
	Do('sort',function(){});
	Do('scroll',function(){});
	



	
	var switchBook = function(){
		var books = $("#bookSort").find("li");
		books.mouseenter(function(){
			SwapPaiHangShopDiv('DivShopPaiHangFlag1','1');
		})
			
	}
	
//	switchBook();
	
	
	//物品详情页面
	
	//物品数量操作
	var numInput = $("#num"),reduce = $(".reduceNum"),add = $(".addNum");
		$(".reduceNum").click(function(){
			var num=parseInt($("#num").val());
			     if(num==1){
			     	alert("商品数量最少为1！")
			     	return;
			     }
			     $("#num").val(num-1);
		})
	 $(".addNum").click(function(){
    	 var num=parseInt($("#num").val());
    	 $("#num").val(num+1);
     })
	  	//加入购物车
	  	function addGoods(id){
	  		 var num = document.getElementById("num").value;
	  		 window.open("/SuperMarket/addgoods.do?method=addGoods&id="+id+"&num="+num);
	  		 
	  	}
		
		$("#addToCart").click(function(){
			var ele = $(this), num = $("#num").val(),goodsId = ele.attr("goodsId");
			addToCart(goodsId,num);
			
		})
		
		//向购物车添加物品
		var addToCart = function(goodsId,num){
			var ele =$(this);
			Do('newAjax', function(){
				$.newAjax(this,{
					type:'post',
					url:"Market/addGoodsToCart.action",
					data:{
						goodsId:goodsId,
						goodNum:num
					},
					callback : function (json) {
						if(json.status){
							window.location.href="/Market/views/book/myCart.jsp"
						}
					}
				});
			})
		}
});

