<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path=request.getContextPath();
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<style type="text/css">

#registText {
	padding: 50px;
	text-align: left;
	background-color: #1a445d;
}

a {
text-decoration: none; 
	
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
		客様車輛の情報。</div>
		<br>
<h1>${messageSuccessP}</h1>
	
	<table>
		<tr>
			<th>ID</th>
   <th>ユーザー名</th>
   <th>暗証番号</th>
   <th>性別</th>
   <th>電話番号</th>
   <th>車の型</th>
   <th>購入時間</th>
   <th>里程</th>
   <th>客様の居住地</th>
   <th>新規時間</th>
   
		</tr>
			<c:forEach items="${listss}" var="person">
			  <form action="UpdateServletPage" method="post">
			<tr>
			<td><input type="text" value="${person.id}"  size="3" name="id" style="border-style:none"></td>
    	<td><input type="text" value="${person.name}"  size="10" name="name" style="border-style:none"></td>
    	<td><input type="text" value="${person.pwd}" size="10" name="pwd" style="border-style:none"></td>
    	<td><input type="text" value="${person.gender}" size="4"name="gender" style="border-style:none"></td>
    	<td><input type="text" value="${person.phoneNum}" size="15"name="phoneNum" style="border-style:none"></td>
    	<td><input type="text" value="${person.carType}" size="10"name="carType" style="border-style:none"></td>
    	<td><input type="text" value="${person.buyYear}" size="13"name="buyYear" style="border-style:none"></td>
    	<td><input type="text" value="${person.odometer}" size="6"name="odometer" style="border-style:none"></td>
    	<td><input type="text" value="${person.address}" size="40"name="address" style="border-style:none"></td>
    	<td><input type="text" value="${person.registTime}" size="22"name="registTime" style="border-style:none"></td>
    		</tr>
		</c:forEach>
	</table>
	<br>
	<h4 align="center">
	<%-- <c:if test="${pageNos>1}">  --%>
	<%-- <c:if test="true"> --%>
	<%-- <c:if test="${pageNos < recordCount}">  --%>
	<%-- <c:if test="true"> --%>
	<%-- </c:if> --%>
	
	<fieldset style="border-style:none">
	
	<c:if test="${recordCount<1}"> 
	<a href="ListUser?pageNos=1">前ページなし</a>
		</c:if>
		
		<a href="ListUser?pageNos=1">首頁</a>
		<a href="ListUser?pageNos=${recordCount-1}">上一頁</a>
			
		<a href="ListUser?pageNos=${recordCount+1}">下一頁</a>
		<a href="ListUser?pageNos=${total}">末頁</a>
		
		<c:if test="${recordCount>total}"> 
		<a href="ListUser?pageNos=${total}">後ページなし</a>
	</c:if>	
	</fieldset>
	
			</h4>
	<form action="ListUser">
		<h4 align="center">
			共${total}頁&nbsp&nbsp&nbsp&nbsp第<input type="text" value="${recordCount}"
				name="pageNos" size="1"　style="border-style:none">頁
		</h4>
	</form>
	
	
	
	
</body>
</html>