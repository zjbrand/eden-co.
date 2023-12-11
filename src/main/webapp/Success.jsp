<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登錄成功！</title>
<style type="text/css">
#registText {
	padding: 50px;
	text-align: left;
	background-color: #1a445d;
}
p,a{

margin-left:50px;
}
</style>
</head>
<body>
<img src="image/SampleLogSm.jpg" alt="SampleLog" name="SampleLog"
		width="200" height="45" align="left" align="top">
	<br>
	<br>
	<br>
	<div id="registText" style="color: white;font-size=400%;">
		このページから他車種との比較ページに移動できます。</div>
		<br>

  <h1>${messageSuccess}</h1>
  <br>
  <h3>このページ使用の注意点：</h3>
  <p>1.${pwd}</p>
  <p>2.登録後24時間以内にお電話で確認させていただき，電話応対にご注意ください。</p>
  <p>3.電話で予約後、担当者が自宅まで査定に伺いますので、似たような条件の車の価格を参考にすることができます。</p>
  <p>4.お申し出があればいつでも委託販売が可能で、契約成立後速やかに販売いたします。契約成立後速やかに販売いたします。</p>
  <p>5.ログインパスワードを教えられない、車の購入に関する連絡は、当社のものではありませんので、ご注意ください。</p>
  <br><br><br><br>
  
  <a href="Searchallk">他のお客様の車両情報を閲覧することができます</a>
  <br><br>
  <a href="Searchall">管理者ポータル</a>

</body>
</html>
