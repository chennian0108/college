<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>校友会登录</title>
</head>
<body bgcolor="#99aaee">
	<center>
		<image src="qian_images/banner.gif" alt="校训" width="600" height="100"></a>
	</center>
	<table border="0" width="100%" cellspacing="0" cellpadding="0">
		<tr bgcolor="#99aaee">

			<center>
				</td>
				<td colspan="1" align="left">
					<center><h2>校友会登录页面</h2></center>
				</td>
		</tr>
		<tr>
			<td colspan="2">
				<hr align="center" width="100%" size="20" color="green">
			</td>
		</tr>
		<tr>
			<td windth="30%" align="center"><image src="image/m-logo.png"></td>
			<td align="center" bgcolor="#99aadd" width="70%">
				<form action="login" method="post">
					<table border="2" cellspacing="0" cellpadding="0" bgcolor="#95BDFF"
						width="350">
						<tr align="center">
							<td align="center" height="130">
							输入用户名：<input type="text"	name="userName" size="16" /><br>
							输入用户密码：<input type="password" name="password" size="18" /><br>
							</td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp; 
							<input type="submit" value="确定" size="12">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="reset" value="清除" size="12">
							</td>
						</tr>
						<tr>
							<td>
								<p align="center">
									<a href="register.jsp">注册</a>
								</p>
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>
