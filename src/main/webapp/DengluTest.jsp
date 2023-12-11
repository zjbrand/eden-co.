<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">请输入注册信息</h1>
<form align="center"action="DengluServlet" method="post" style="padding-top:-700px;">
	<label for="name">   输入用户名：</label>
	<input id="name"name="username"type="text"placeholder=名前を入力してください><br><br>
	<label for="password">   输入密码：  </label>
	<input id="pwd"name="pwd"type="password"maxlength="8"placeholder=パスワードを入力してください>
	<br><br>
	
	<input type="submit"value="登录">
	<input type="reset"value="重置">
</form>
</body>
</html>