<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>网站会员注册</title>
</head>
<body bgcolor="#99aaee">
	<center>
		<a href="admin.jsp"> <image src="qian_images/banner.gif" alt="校训"
				width="600" height="100"></a>
	</center>
	<a href="login.jsp">《《返回登录页面</a>
	<form action="" method="post">
		<center>
			<table border="1">
				<caption>会员注册</caption>
				<tr>
					<td>会员名：</td>
					<td><input type="text" name="username" /></td>
					<td>* 会员名称由3至12位字母和数字组成</td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><input type="password" name="password" /></td>
					<td>* 密码长度至少为6位</td>
				</tr>
				<tr>
					<td>性别：</td>
					<td>
					  	男<input type="radio" name="sex" value="男" checked="checked" /> 
						女<input type="radio" name="sex" value="女" />
					</td>
					<td>* 请选择性别</td>
				</tr>
				<tr>
					<td>职业：</td>
					<td><select name="career">
							<option value="">请选择</option>
							<option value="">教师</option>
							<option value="">学生</option>
							<option value="">程序员</option>
					</select></td>
					<td>* 请选择您的职业</td>
				</tr>
				<tr>
					<td>爱好：</td>
					<td>
					看书<input type="checkbox" name="likes" value="看书" /> 
					游泳<input type="checkbox" name="likes" value="游泳" /> 
					音乐<input type="checkbox" name="likes" value="音乐" /> 
					旅游<input type="checkbox" name="likes" value="旅游" />
					</td>
					<td>* 请选择您的爱好</td>
				</tr>
				<tr>
					<td>个人介绍：</td>
					<td><textarea rows=8 cols=50></textarea></td>
					<td>* 请做自我介绍</td>
				</tr>
				<tr>
					<td colspan=3>
						<center>
							<input type="submit" value="注册" /> 
							<input type="reset" value="重置" />
						</center>
					</td>

				</tr>
			</table>
		</center>
	</form>
</body>
</html>