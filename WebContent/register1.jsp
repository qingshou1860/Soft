<%@page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>个人信息管理系统</title>
</head>
<body bgcolor="CCCFFF">
	<table align="center">
		<tr>
			<td colspan="3" align="center">
				<h3>
					<font color="red">填写以下注册信息</font>
				</h3>
			</td>
		</tr>

		<tr>
			<td></td>
		</tr>
	</table>
	<center>
	<form action="http://localhost:8084/PIMS/RegisterServlet" method="post">
		<table border="2" cellspacing="0" cellpadding="0" background="AAABBB">
			<tr>
				<td>登录名字</td>
				<td><input type="text" name="loginName" size="22" placeholder="名字"></td>
			</tr>
			<tr>
				<td>用户密码</td>
				<td><input type="password" name="passWord" size="22" placeholder="密码">
				</td>
			</tr>
			<tr>
				<td>重复密码</td>
				<td><input type="password" name="passWord1" size="22" placeholder="密码">
				</td>
			</tr>
			<tr>
				<td>用户姓名</td>
				<td><input type="text" name="userName" size="22" placeholder="用户名"></td>
			</tr>
			<tr>
			<td>年龄</td>
			<td><input type="text" name="age" size="22" placeholder="年龄"></td>
			</tr>
			<tr>
				<td>用户性别</td>
				<td><input type="radio" name="sex" value="男" checked>男
					<input type="radio" name="sex" value="女">女</td>
			</tr>
			<tr>
				<td>用户民族</td>
				<td><input type="radio" name="nation" value="汉族" checked>汉族
					<input type="radio" name="nation" value="回族">回族 <input
					type="radio" name="nation" value="壮族">壮族 <input
					type="radio" name="nation" value="其他">其他</td>
			</tr>
			<tr>
				<td>用户电话</td>
				<td><input type="text" name="cell" size="20" /></td>
			</tr>
			<tr>
				<td>家庭住址</td>
				<td><select name="place" size="1">
						<option value="北京">北京</option>
						<option value="上海">上海</option>
						<option value="天津">天津</option>
						<option value="河北">河北</option>
						<option value="河南">河南</option>
						<option value="吉林">吉林</option>
						<option value="黑龙江">黑龙江</option>
						<option value="内蒙古">内蒙古</option>
						<option value="山东">山东</option>
						<option value="山西">山西</option>
						<option value="陕西">陕西</option>
						<option value="甘肃">甘肃</option>
						<option value="宁夏">宁夏</option>
						<option value="青海">青海</option>
						<option value="新疆">新疆</option>
						<option value="辽宁">辽宁</option>
						<option value="江苏">江苏</option>
						<option value="浙江">浙江</option>
						<option value="安徽">安徽</option>
						<option value="广东">广东</option>
						<option value="海南">海南</option>
						<option value="广西">广西</option>
						<option value="云南">云南</option>
						<option value="贵州">贵州</option>
						<option value="四川">四川</option>
						<option value="重庆">重庆</option>
						<option value="西藏">西藏</option>
						<option value="香港">香港</option>
						<option value="澳门">澳门</option>
						<option value="福建">福建</option>
						<option value="江西">江西</option>
						<option value="湖南">湖南</option>
						<option value="青海">青海</option>
						<option value="湖北">湖北</option>
						<option value="台湾">台湾</option>
						<option value="其他">其他</option>
				</select>省（直辖市）</td>
			</tr>
			<tr>
				<td>邮箱地址</td>
				<td><input type="text" name="email" size="20" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="确定"
					size="12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
					type="reset" value="清除" size="12"></td>
			</tr>
		</table>
	</form>
	</center>
</body>
</html>