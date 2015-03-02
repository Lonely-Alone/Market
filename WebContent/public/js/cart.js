    var decreaseNum = function (){
    	$(".decrese").click(function(){
    		 var ele = $(this), amount=ele.next(),num=new Number($.trim(amount.val()));
    	     if(num>1){
    	    	 amount.val(num-1);
    	     }
    	})
     
  	}
    decreaseNum();
    var increaseNum = function (){
    	$(".increase").click(function(){
    		 var ele = $(this), amount=ele.prev(),num=new Number($.trim(amount.val()));
	    	 amount.val(num+1);
    	})
     
  	}
    increaseNum();
  	
    //删除某件商品
  	var deleteFromCart = function(){
  		$(".delete").click(function(){
  			var ele=$(this);
  			$.ajax({
  			   type: "POST",
  			   url: "Market/deleteGood.action",
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
  	
  	// --列头全选框被单击---
  	var checkAll=function (){
	     $("#checkAll").click(function(){
	    	 $(".check").attr("checked",true);
	     });
	}
  	checkAll();
  	//删除选中商品
  	var deleteGoods= function (){
  		$("#deleteChecked").click(function(){
  			var goodsArr="";
  			$(".check").each(function(index,item){
  				var ele =$(item);
  				if(item.checked){
  					goodsArr+=ele.attr("data")+",";
  				}
  			})
  			$.ajax({
	  			   type: "POST",
	  			   url: "Market/deleteGoods.action",
	  			   data: {
	  				 goodsArr:goodsArr
	  			   },
	  			   success: function(msg){
	  				 $(".check").each(function(index,item){
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
