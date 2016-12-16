<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>GameLoft官网</title>
<link rel="stylesheet"
	href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
<link type="text/css" rel="stylesheet" href="css/style.css" />
 <script type="text/javascript">
        var count = 1;
        var timeId;
        function showPic(no)
        {
            count = no;
            setColor(count);
            document.getElementById("imgShow").src = "img/" + count + ".jpg";
            count++;
            if (count > 4)
                count = count - 4;
            timeId= window.setTimeout("showPic(count)",2000);
        }
        function bindEvent()
        {
            var btns = document.getElementById("dvMain").getElementsByTagName("input");
            for (var i = 0; i < btns.length;i++)
            {
                btns[i].onclick = function () {
                    clearTimeout(timeId);//暂时清除计时器
                    count = this.value;
                    setColor(count);
                    timeId = window.setTimeout("showPic(count)", 2000);
                }
            }
        }
        function setColor(no)
        {
            var btns = document.getElementById("dvMain").getElementsByTagName("input");
            for (var i = 0; i < btns.length;i++)
            {
                if (btns[i].value == no)
                    btns[i].style.backgroundColor = "#ff7744";
                else
                    btns[i].style.backgroundColor = "";
            }
        }
        window.onload = function () {
            bindEvent();
            showPic(1);
        }
    </script>
   
</head>
<body>
	<div class="header">
		<div class="w1000">
			<div class="logo">
				<strong>GameLoft官网</strong>
			</div>
			<div class="nav">
				<ul>
					<li>直通车</li>
					<li><img src="img/微薄.JPG" /></li>
					<li><img src="img/微信.JPG" /></li>
					<li><a href="#"> 登录</a></li>
					<li><a href=" #"> 注册 </a></li>
					<li><a href="#"> 设为首页</a></li>
					<li><a href="#"> 加入收藏</a></li>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="width01">
		<img src="img/gameloft.JPG" />
		<div class="nav01">
			<ul>
				<li><select name="choose" size="1">
						<option value="游戏">游戏</option>
						<option value="下载">下载</option>
						<option value="补丁">补丁</option>
						<option value="新闻">新闻</option>
				</select></li>
				<li><input type="text" placeholder=" 请输入关键字" maxlength="12"
					class="ssk"></input></li>
				<li><button type="submit" class="button">搜索</button></li>
			</ul>
		</div>

	</div>
	<div class="w1000">
	 <div id="dvMain" class="dvMain">
        <table>
            <tr>
                <td style="width:600px;height:250px;">
                    <img id="imgShow" />
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="1" />
                    <input type="button" value="2" />
                    <input type="button" value="3" />
                    <input type="button" value="4" />
                </td>
            </tr>
        </table>
    </div>
    </div>
	<div class="dv3">
		<div class="font25"><strong>精品游戏推荐</strong></div>
		<div class="dv4">
			<img class="img2" alt="" src="img/p1.jpg"> <a href=""
				class="a3">完美红颜</a> <input type="button" id="btn1"
				class="btn btn-danger btn-xs" value="开始游戏" />
		</div>

		<div class="dv5">
			<img class="img3" alt="" src="img/p2.jpg"> <a href=""
				class="a4">啸剑星辰</a> <input type="button" id="btn2"
				class="btn btn-danger btn-xs" value="开始游戏" />
		</div>

		<div class="dv6">
			<img class="img4" alt="" src="img/p3.jpg"> <a href=""
				class="a5">寻  魔  记</a> <input type="button" id="btn3"
				class="btn btn-danger btn-xs" value="开始游戏" />
		</div>

		<div class="dv7">
			<img class="img5" alt="" src="img/p4.jpg"> <a href=""
				class="a6">修  天  绝</a> <input type="button" id="btn4"
				class="btn btn-danger btn-xs" value="开始游戏" />
		</div>

		<div class="dv8">
			<img class="img6" alt="" src="img/p5.jpg"> <a href=""
				class="a7">魔法王座</a> <input type="button" id="btn5"
				class="btn btn-danger btn-xs" value="开始游戏" />
		</div>

		<div class="dv9">
			<img class="img7" alt="" src="img/p6.jpg"> <a href=""
				class="a8">决战武陵</a> <input type="button" id="btn6"
				class="btn btn-danger btn-xs" value="开始游戏" />
		</div>

		<center>
			<%
				int number = 1;
				Object obj = session.getAttribute("number");
				if (obj == null) {
					session.setAttribute("number", String.valueOf(number));
				} else {
					number = Integer.parseInt(obj.toString());
					number += 1;
					session.setAttribute("number", String.valueOf(number));
				}
			%>
		</center>
		
		<div class="w1000">
		<br>
		<br>
		<div class="dv10"><h3><strong>本团队</strong></h3><br>
				热烈欢迎第<strong><%=number%></strong>位访问本网站的用户。
			</div>
	</div>
	</div>
</body>
</html>