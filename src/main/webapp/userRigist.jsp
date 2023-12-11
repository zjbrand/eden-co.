<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>userRigist</title>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1/i18n/jquery.ui.datepicker-ja.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	$("#registButton").click(function() {
		$("#bussiness4").fadeOut(2000);
		setTimeout(() => $("#registTable").fadeIn(4000), 2000);
	});

});

$(function() {
	
    $( "#input1" ).datepicker({
      changeMonth: true,
      changeYear: true
    });
  });

function time() {
	var time = new Date();
	var year = time.getFullYear();
	var month = time.getMonth() + 1;
	var date = time.getDate();
	var hour = time.getHours();
	var min = time.getMinutes();
	var sec = time.getSeconds();
	
	if(sec<10){sec="0"+sec;}
	if(min<10){min="0"+min;}
	if(hour<10){hour="0"+hour;}

	var nowtime=year + "年" + month + "月" + date + "日" + hour + ":"
			+ min + ":" + sec;
	// alert(nowtime); 
	 return nowtime;
	}
setInterval("time()", 1000);
  var time1=time();
</script>

<script type="text/javascript"></script>
<style type="text/css">
#registText {
	padding: 20px;
	text-align: right;
	background-color: #1a445d;
	/* 	background-color: #e5eecc; */
	border: solid 1px #c3c3c3;
}

#registButton {
	padding: 10px;
	text-align: right;
	background-color: #e5eecc;
	border: solid 3px #c3c3c3;
}

#carWhiteLine {
	margin-right: 180px;
	background-attachment: fixed;
}

h5 {
	margin-bottom: 0;
	padding-bottom: 0
}
#time{
	 font-size: 18px;
}
</style>


</head>

<body>

	<img src="image/SampleLogSm.jpg" alt="SampleLog" name="SampleLog"
		width="200" height="45" align="left" align="top">
	<br>
	<br>
	<br>

	<input type="text"   name="date" id="time" style="border-style:none;position: absolute; right: 20px; top: 35px">
<script>document.getElementById("time").value=time1</script>

	<div id="registText" align="right" style="color: white;font-size=200%;">
		お会員になり、こちらのボタンからどうぞ

		<button id="registButton" align="right">申し込み</button>
	</div>

	<table>
		<tr>
			<td>
				<form action="">
					<img id="carWhiteLine" src="image/carWhiteLinePrin.jpg"
						alt="carWhiteLinePrin" name="carWhiteLinePrin" width="600"
						height="800" align="left">

				</form>
			</td>
			<td><img id="bussiness4" src="image/bussiness4.jpg" width="480"
				height="600" align="left">

				<form id="registTable" align="center" action="ZhuceServlet"
					method="post" style="display: none">
					<h1>新規会員登録</h1>
					<h5>本名ではなく、ウェブサイト使ったユーザー名を入力してください</h5>
					<label for="name"> ユーザー名：</label> <input id="name" name="name"
						type="text" size="40" placeholder=名前を入力してください> <br>
					<h5>パスワードは半角英字と数字でお願いします</h5>
					<label for="password"> パスワード：</label> <input id="pwd" name="pwd"
						type="password" maxlength="8" placeholder=パスワードを入力してください>
					<br>

					<h5>パスワードは再度に入力してください</h5>
					<label for="password"> パスワード再確認：</label> <input id="pwd2"
						name="pwd2" type="password" maxlength="8"
						placeholder=パスワードを入力してください> <br> <br> <label>性別を入力してください：</label>
					<input type="radio" name="gender" value="男">男 <input
						type="radio" name="gender" value="女" checked>女 <br>

					<h5>電話番号は例のような入力してください(例：080-1234-5678)</h5>
					<label for="name"> 電話番号：</label> <input id="phoneNum"
						name="phoneNum" type="text" size="40" placeholder=電話番号を入力してください>
					<br>

					<h5>輸入車はその他を選んでください</h5>
					<label>お持っている車種を選んでください：</label> <select name="carType">
						<option value="トヨタ">トヨタ</option>
						<option value="日産">日産</option>
						<option value="ホンダ">ホンダ</option>
						<option value="三菱">三菱</option>
						<option value="マツダ">マツダ</option>
						<option value="スバル">スバル</option>
						<option value="スズキ">スズキ</option>
						<option value="ダイハツ">ダイハツ</option>
						<option value="日本フォード">日本フォード</option>
						<option value="ミツオカ">ミツオカ</option>
						<option value="レクサス">レクサス</option>
						<option value="日野自動">日野自動車</option>
						<option value="日産ディーゼル">日産ディーゼル</option>
						<option value="三菱ふそう">三菱ふそう</option>
						<option value="その他">その他</option>
					</select>

					<h5>車の生産期日を例のような入力してください（例：1900/01/01）</h5>
					<label>年月日: <input type="text" id="input1" name="buyYear" /></label>

					<h5>今まで車のキロ数の里程を入力してください</h5>
					<label for="name"> 車の里程：</label> <input id="odometer"
						name="odometer" type="text" size="20" placeholder=キロ数の里程を入力してください>
					<br>

					<h5>ご住所を入力してください、改行できる</h5>
					<textarea name="address" rows="3" cols="30"></textarea>

					<br> <br> <input type="submit" value="新規登録"> <input
						type="reset" value="重置">
				</form></td>
		</tr>
	</table>



</body>
</html>