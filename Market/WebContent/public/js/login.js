/*---------------配置模块-------------*/
//tinyScrollbar
//ibox
Do.add('Ibox-css', {path: 'public/css/min/ibox.css', type: 'css'});
Do.add('Ibox', {path: 'public/js/min/ibox.js', type: 'js', requires: ['Ibox-css']});
//jquery.cookie
Do.add('cookie', {path: 'public/js/min/jquery.cookie.js', type: 'js'});
//powerFloat
Do.add('powerFloat-css', {path: 'public/css/min/powerFloat.css', type: 'css'});
Do.add('powerFloat', {path: 'public/js/min/powerFloat.js', type: 'js', requires: ['powerFloat-css']});
//testRemind
Do.add('testRemind', {path: 'public/js/min/testRemind.js', type: 'js', requires: ['powerFloat']});
//newAjax
Do.add('newAjax', {path: 'public/js/min/newAjax.js', type: 'js'});
//integerInput
Do.add('integerInput', {path: 'public/js/min/integerInput.js', type: 'js'});

/*---------------页面其他方法-------------*/
Do(function(){
	/*-------获取页面标示符------------*/
	var loginInput = $("#loginId"),passwordInput=$("#password"),loginBtn = $("#login");
	
	var login = function(){
		loginBtn.click(function(){
			var loginId = $.trim(loginInput.val()),password = $.trim(passwordInput.val());
			if(loginId.length<1){
				Do('testRemind', function(){$.testRemind(loginInput, '账号不能为空');setTimeout($.testRemind.hide, 1000);});	
				return;
			}
			if(password.length<1){
				Do('testRemind', function(){$.testRemind(passwordInput, '密码不能为空');setTimeout($.testRemind.hide, 1000);});	
				return;
			}
			Do('newAjax', function(){
				$.newAjax(this,{
					type:'post',
					url:"Market/login.action",
					data:{
						loginId:loginId,
						password:password
					},
					callback : function (json) {
						if(json.status){
							window.location.href="/Market/views/application/main.jsp";
					}
					}
				});
			})
			
		})
			
	}
	login();
	
/*----------------------------注册------------------------------------*/
	
	var registBtn = $("#regist"),userName=$("#userName"), pass1 = $("#password1"),pass2 = $("#password2") ;
	   userName.blur(function(){
	  	  if(this.value==""){
	  	  	return ;
	  	  }
	  	  if(this.value.length<4||this.value.length>20){
	  		 Do('testRemind', function(){$.testRemind(userName, '用户名长度只能在4-20位字符之间');setTimeout($.testRemind.hide, 1000);});	
		  	 return ;
	  	  }
	  	  
	  	  	var num= /^[0-9]*$/;//验证是否全是数字
	  	  	var char =/^[a-zA-Z]$/;//验证是否全是字母
	  	  	var mail = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;//邮箱验证
	  	  	var patt=new RegExp("@");
	  	  	if(num.test(this.value)){
  	  			Do('testRemind', function(){$.testRemind(userName, '用户名不能是纯数字，请确重新输入！');setTimeout($.testRemind.hide, 1000);});	
  	  			return;
	  	  	}
	  	  	if(patt.test(this.value)){
		  	  	if(!mail.test(this.value)){
		  	  		Do('testRemind', function(){$.testRemind(userName, '邮箱地址不正确，请重新输入！');setTimeout($.testRemind.hide, 1000);});	
	  	  			return;
		  	  	 }
	  	   	}
	  	  	
	  	  Do('newAjax', function(){
				$.newAjax(this,{
					type:'post',
					url:"Market/checkLoginId.action",
					data:{
						loginId:userName.val(),
					},
					callback : function (json) {
						console.log(json);
						if(json.status){
							$("#errName").html("<img src='public/img/right.png'></img>");
						}else{
							Do('testRemind', function(){$.testRemind(userName, '该用户名已存在！');setTimeout($.testRemind.hide, 1000);});	
						}
					}
				});
			});
	  	   	
	  	   	
	   });
	   
	pass1.focus(function(){
		Do('testRemind', function(){$.testRemind(pass1, '请输入密码,6-20位字符，可由数字、字母或者字符组成！');setTimeout($.testRemind.hide, 1000);});	
	})
	pass1.blur(function(){
		var len = pass1.val().length;
		if(len<6 || len>20){
			Do('testRemind', function(){$.testRemind(pass1, '6-20位字符！');setTimeout($.testRemind.hide, 1000);});
			return;
		}
		$("#errPass1").html("<img src='public/img/right.png'></img>");
	})
		
	pass2.focus(function(){
		Do('testRemind', function(){$.testRemind(pass2, '再次输入密码进行确认！');setTimeout($.testRemind.hide, 1000);});	
	})
	pass2.blur(function(){
		if(pass2.val()==null||pass2.val()==""){
			return;
		}
		if(pass1.val() !=pass2.val()){
			Do('testRemind', function(){$.testRemind(pass2, '密码两次输入不一样，请重新输入！！');setTimeout($.testRemind.hide, 1000);});
			return;
		}
		$("#errPass2").html("<img src='public/img/right.png'></img>");
	})
		  
		
	var regist = function(){
		registBtn.click(function(){
	   		if(userName.val() =="" ){
	   			 Do('testRemind', function(){$.testRemind(userName, '用户名不能为空！');setTimeout($.testRemind.hide, 1000);});
	   			 return ;
	   		}
	   		if(pass1.val() ==""){
	   			Do('testRemind', function(){$.testRemind(pass1, '密码不能为空！');setTimeout($.testRemind.hide, 1000);});
	   			return ;
	   		}
	   		if(pass2.val() ==""){
	   			Do('testRemind', function(){$.testRemind(pass2, '请再次输入密码确认！');setTimeout($.testRemind.hide, 1000);});
	   			return ;
	   		}
	   		Do('newAjax', function(){
				$.newAjax(this,{
					type:'post',
					url:"Market/regist.action",
					dataType: "json", 
					data:{
						loginId:userName.val(),
						password:pass1.val()
					},
					callback : function (json) {
						if(json.status){
							window.location.href="/Market";
						}
					}
				});
			});
   
		})
	}
	regist(); 
	
	
	
});




