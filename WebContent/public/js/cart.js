    var decreaseNum = function (){
    	$(".decreaseNum").click(function(){
    		 var ele = $(this), amount=ele.next().children("input"),num=new Number($.trim(amount.val())),
    		 	target=amount.attr("data"),price=amount.attr("price"),checkBox=$("#jsForCheck"+target);
    		 if(!checkBox.attr("checked")){
    			 checkBox.attr("checked",true);
    		 }
    	     if(num>1){
    	    	 amount.val(num-1);
    	    	 $("#realPrice"+target).html((num-1)*price);
    	     }
    	     sumTotal();
    	})
     
  	}
    decreaseNum();
    var increaseNum = function (){
    	$(".increaseNum").click(function(){
    		 var ele = $(this), amount=ele.prev().children("input"),num=new Number($.trim(amount.val()))
    		 target=+amount.attr("data"),price=amount.attr("price"),checkBox=$("#jsForCheck"+target);
    		 if(!checkBox.attr("checked")){
    			 checkBox.attr("checked",true);
    		 }
	    	 amount.val(num+1);
	    	 $("#realPrice"+target).html((num+1)*price);
	    	 sumTotal();
    	})
     
  	}
    increaseNum();
    
    var sumTotal = function(){
    	var totalPrice=0,totalNum=0;
    	$(".jsForCheck:checked").each(function(index,item){
	    		var ele=$(item),data=ele.attr("data");
	    		totalPrice+=Number($("#realPrice"+data).html());
	    		totalNum+=Number($("#amount"+data).val());
    	});
    	$(".totalPrice").html("￥"+totalPrice);
    	$(".totalNum").html(totalNum);
    }
    sumTotal();
    
    //全选与反选
    $("#checkAllBtn").click(function(){
    	checkFun(!$(this).attr("checked"));
    	sumTotal();
    });
    $("#checkAllChk").click( function(){
    	checkFun(!$(this).attr("checked"));
     	sumTotal();
    });
  	
    //删除某件商品
  	var deleteFromCart = function(){
  		$(".delete").click(function(){
  			var ele=$(this);
  			$.ajax({
  			   type: "POST",
  			   url: "/Market/deleteGood.action",
  			   data: {
  				 goodsId:ele.attr("data")
  			   },
  			   success: function(msg){
  				   ele.parent().parent().remove();
  			   }
  			});
  			
  		})
  	}
  	deleteFromCart();
  	
  	//删除选中商品
  	var deleteGoods= function (){
  		$("#deleteAllBtn").click(function(){
  			var goodsArr="";
  			$(".jsForCheck").each(function(index,item){
  				var ele =$(item);
  				if(item.checked){
  					goodsArr+=ele.attr("data")+",";
  				}
  			})
  			$.ajax({
	  			   type: "POST",
	  			   url: "/Market/deleteGoods.action",
	  			   data: {
	  				 goodsArr:goodsArr
	  			   },
	  			   success: function(msg){
	  				 $(".jsForCheck").each(function(index,item){
	  	  				if(item.checked){
	  	  					$(item).parent().parent().remove();
	  	  				}
	  	  			})
	  			   }
	  			});
  		})
	}
  	deleteGoods();
  	
  	var goPay  = function(){
  		$("#goPay").click(function(){
  			var ele=$(this),data =ele.attr("data"); 
  			if( data== null ||data==""){
  				window.open ('/Market/view/application/Login.jsp', '', 'height=565, width=525, top=120, left=300, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no');
  			}else{
  				window.location.href="/Market/views/book/order.jsp";
  			}
  			
  		})
  		
  	}
  	goPay();
