<%@ page language="java" import="java.util.*" contentType="text/html;  charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String path=request.getContextPath();
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 以字符串basePath來鏈接網頁地址 -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理者客様編集頁面</title>

<style type="text/css">
#registText {
	padding: 50px;
	text-align: left;
	background-color: #1a445d;
}

a {
	text-decoration: none;
	text-size: 5px;
}
input{
 text-align: center;
}
table{
margin-left:120px;
}
table, td, th {
    border: 1px solid black;
    text-align: center;
    border-collapse: cllapse;
    align: center;
}

</style>
</head>
<body>

<img src="image/SampleLogSm.jpg" alt="SampleLog" name="SampleLog"
		width="200" height="45" align="left" align="top">
	<br>
	<br>
	<br>
	<div id="registText" style="color: white;">
		客様はこの頁面で情報が編集出来ません。</div>
		<br>

<table>
   <tr>
   <th>ID</th>
   <th>ユーザー名</th>
    <th>性別</th>
   <th>電話番号</th>
   <th>車の型</th>
   <th>購入時間</th>
   <th>里程</th>
   <th>客様の居住地</th>
  <th>新規時間</th> 
    </tr>
   <c:forEach var="U" items="${userAll}">
   <form action="UpdateServlet" method="post">
   <tr>
    	<td><input type="text" value="${U.id}"  size="3" name="id" style="border-style:none"></td>
    	<td><input type="text" value="${U.name}"  size="10" name="name" style="border-style:none"></td>
    	<td><input type="text" value="${U.gender}" size="4"name="gender" style="border-style:none"></td>
    	<td><input type="text" value="${U.phoneNum}" size="15"name="phoneNum" style="border-style:none"></td>
    	<td><input type="text" value="${U.carType}" size="10"name="carType" style="border-style:none"></td>
    	<td><input type="text" value="${U.buyYear}" size="13"name="buyYear" style="border-style:none"></td>
    	<td><input type="text" value="${U.odometer}" size="6"name="odometer" style="border-style:none"></td>
    	<td><input type="text" value="${U.address}" size="40"name="address" style="border-style:none"></td>
    	<td><input type="text" value="${U.registTime}" size="22"name="registTime" style="border-style:none"></td>
    	   	</td>
    </tr>
   
   </form>
</c:forEach>


</table>
</body>
</html>