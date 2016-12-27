<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎注册！</title>
<link type="text/css" href="css/reset.css" rel="stylesheet">
<link type="text/css" href="css/public.css" rel="stylesheet">
<link type="text/css" href="css/register.css" rel="stylesheet">
<link rel="shortcut icon" href="favicon.ico" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.form.js" type="text/javascript"></script>
<script src="js/json.parse.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	$(".btn").click(function(){
				var agreenMent=$("#agreement").attr("data");
				
				//alert(agreenMent);0
				var userName= $("#username").val();
				var userPass= $("#password1").val();
				var userPass2=$("#password2").val();
				
				
				
				userPass=$.trim(userPass);
				userPass2=$.trim(userPass2);
				
				$(".input_div1 span,.input_div2 span,.input_div3 span,.input_div4 span,.input_div6 span,.input_div5 span").html("");
				$(".btn").val('注册中...').attr('disabled','disabled');
				
				if(!isRegisterUserName(userName)){
					$(".input_div1 span").html('<img src="images/text_error.png"><font color=red>账户名格式不正确!</font>');
					$("#username").focus();
					$(".btn").val('注册').removeAttr('disabled');
					return false;
				
				}else if(userPass.length <8){
					$(".input_div3 span").html('<img src="images/text_error.png"><font color=red>密码格式不正确!</font>');
					$("#password1").focus();
					$(".btn").val('注册').removeAttr('disabled');
					return false;
				}else if(userPass != userPass2){
					$(".input_div4 span").html('<img src="images/text_error.png"><font color=red>两次输入的密码不一致!</font>');
					$("#password2").focus();
					$(".btn").val('注册').removeAttr('disabled');
					return false;
				
				
				}else{
					$("#registerForm").ajaxSubmit(function(e){
						var obj=json_parse(e);
						var code=obj.code;
						var info = '<img src="images/text_error.png"><font color=red>'+obj.info+"</font>";
						if(code=='-1' || code=='-5'){
							$(".input_div1 span").html(info);
							$("#username").focus();
						}else if(code =='-2' || code == '-4'){
							$(".input_div2 span").html(info);
							$("#password1").focus();
						
						
						
						}else if(code == '1'){
							//alert('恭喜您，注册成功!');
							//window.location.href='register/success';
							window.location.href=obj.acturl;
						}
						//flushCode();
						$(".change").click();
						$(".btn").val('注册').removeAttr('disabled');
					})
				}
				
		})
	
	$(".change").click(function(){
		$("#imgcode").attr('src','vercode');
	})
	
	$('.check2').click(function(){
		var rel = $('#agreement').attr("data");
		//alert(rel);
		if(rel =='1'){
			$('#agreement').attr("data","0");
		}else{
			$('#agreement').attr("data","1");
		}
		$('.check2').toggleClass("check1");
	});
	
});

function isRegisterUserName(s){  
	var patrn=/^[a-zA-Z0-9]{1}([a-zA-Z0-9]|[._]){5,19}$/;  
	if (!patrn.exec(s)) return false
	return true
}
</script>
<style>
.input_div span{ background:#FFF;}
</style>


</head>
<body>
<div id="header">
		<div class="header">	
			<a class="png_bg" href="index.jsp">返回主页</a>
		</div>
	</div>
	<div class="register_content">
	
		<ul class="step_ul step1 clear">
			<li class="li1">01、填写资料</li>
			<li class="li2">02、完成注册</li>
		</ul>	
		 <form name="registerForm" id='registerForm' action='<c:url></c:url>' method="post" style="padding:60px 40px 88px 40px;font-family:Microsoft Yahei">
			<div class="div_form clear ">
				<label>用户名：</label>
				<div class="input_div input_div1">
					<input id="username" name="UserName" type="text" placeholder="格式6-24位数字字母组合" maxlength="24">
					<span></span>
				</div>
			</div>		
			<div class="div_form clear ">
				<label>请创建一个密码：</label>
				<div class="input_div input_div3">
					<input id="password1" name="userpass" type="password" placeholder="最少 8 个字符，区分大小写" maxlength="32">
					<span></span>
				</div>
			</div>
			<div class="div_form clear ">
				<label>重新输入密码：</label>
				<div class="input_div input_div4">
					<input id="password2" name="userpass2" type="password" placeholder="再次输入密码" maxlength="32">
					<span></span>
				</div>
			</div> 
			
			<div class="div_form clear ">
				<label>性别：</label>
				<div class="input_div input_div4">
					<input id="gender" name="Gender" type="text" placeholder="性别只能输入男女" maxlength="32">
					<span></span>
				</div>
			</div>  
			<div class="div_form clear ">
				<label>出生日期：</label>
				<div class="input_div input_div4">
					<input id="datebirth" name="DateBirth" type="text" placeholder="请输入出生日期" maxlength="32">
					<span></span>
				</div>
			</div>  
			<div class="div_form clear ">
				<label>地区：</label>
				<div class="input_div input_div4">
					<input id="nation" name="Nation" type="text" placeholder="请输入省份" maxlength="32">
					<span></span>
				</div>
			</div>    
			<div class="div_form clear ">
				<label>电话号码：</label>
				<div class="input_div input_div4">
					<input id="cell" name="Cell" type="text" placeholder="号码为11位数字" maxlength="32">
					<span></span>
				</div>
			</div> 
			<div class="div_form clear ">
				<label>地址：</label>
				<div class="input_div input_div4">
					<input id="adds" name="Adds" type="text" placeholder="请输入地址" maxlength="32">
					<span></span>
				</div>
			</div>  
			<div class="div_form clear ">
				<label>邮箱：</label>
				<div class="input_div input_div4">
					<input id="email" name="Email" type="text" placeholder="请输入邮箱" maxlength="32">
					<span></span>
				</div>
			</div>                                            
			<div class="div_form clear ">
				<label></label>
				<div class="input_div">
					<input id="btn" class="btn" type="submit" value="注册" />
				</div>
			</div>
		</form>	
		</div>
		
	<!-- footer start -->
<div id="footer" class="clear">
    <h1 class="png_bg">GAMELOFT</h1>
    <div class="friendLink clear">
        <a  href="#" target="_blank" title="隐私政策" rel="nofollow">隐私政策</a>
        <a href="#" target="_blank" rel="nofollow">服务条款</a>
        <a href="#" target="_blank" rel="nofollow">关于我们</a>
        <a href="#" target="_blank" rel="nofollow">游戏招聘</a>
        <a href="#" target="_blank" rel="nofollow">联系我们</a>
        <a href="#" target="_blank" rel="nofollow">友情链接</a>
    </div>
    <p>上海GAMELOFT有限公司©版权所有</p>
    <div class="weixin">
        <img src="img/gameloft.JPG" alt="" />
        <h3>关注GAMELOFT官网</h3>
    </div>
</div>
<script type="text/javascript">
    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5d12e2b4eed3b554ae941c0ac43c330a' type='text/javascript'%3E%3C/script%3E"));
</script>
<!-- footer end -->
</body>
</html>