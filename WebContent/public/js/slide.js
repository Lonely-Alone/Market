var slideImgs=$("#slideImg").children("li"), num=slideImgs.length,slideMods=$("#slideMod").children("li");
  var Index=1;
  var slideInter;
  var autoSlide=function(){
    slideInter=setInterval(function(){
      slideShow(Index); 
      Index++;          
      if(Index==num){
        Index=0;
      } 
    },1500);
  }
  var slideShow = function(Index){
	  slideImgs.addClass("dn").eq(Index).removeClass("dn");
	  slideMods.removeClass("current").eq(Index).addClass("current");
  }
  autoSlide();   
  
  var selectPic = function(){
	  slideMods.hover(function(){
		  clearInterval(autoSlide);
		  var ele = $(this),Index=ele.attr("data");
		  slideImgs.addClass("dn").eq(Index-1).removeClass("dn");
		  slideMods.removeClass("current").eq(Index-1).addClass("current");
	  })
  }
  
  selectPic();
  
