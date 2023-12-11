<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

 <style type="text/css">

body {
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;  
}
#registText {
	padding: 50px;
	text-align: left;
	background-color: #1a445d;
	/* 	background-color: #e5eecc; */
	border: solid 1px #c3c3c3;
}
/* 容器样式 */
.container {
  width:650px;
  margin-left:350px;
  position: relative;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px 0 30px 0;
} 

/* 输入框，链接按钮样式 */
input,
.btn {
  width: 100%;
  padding: 12px;
  border: none;
  border-radius: 4px;
  margin: 5px 0;
  opacity: 0.85;
  display: inline-block;
  font-size: 17px;
  line-height: 20px;
  text-decoration: none; /* 移除锚文本链接下划线 */
}

input:hover,
.btn:hover {
  opacity: 1;
}

/* 按钮背景颜色 */
.fb {
  background-color: #3B5998;
  color: white;
}

.twitter {
  background-color: #55ACEE;
  color: white;
}

.google {
  background-color: #dd4b39;
  color: white;
}

/* 提交按钮样式 */
input[type=submit] {
  background-color: #4CAF50;
  color: white;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

/* 两列布局 */
.col {
  float: left;
  width: 50%;
  margin: auto;
  padding: 0 50px;
  margin-top: 6px;
}

/* 清除浮动 */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* vertical line */
.vl {
  position: absolute;
  left: 50%;
  transform: translate(-50%);
  border: 2px solid #ddd;
  height: 175px;
}

/* 水平方向的文本 */
.vl-innertext {
  position: absolute;
  top: 50%;
  transform: translate(-50%, -50%);
  background-color: #f1f1f1;
  border: 1px solid #ccc;
  border-radius: 50%;
  padding: 8px 10px;
}

/* 大屏幕隐藏文本 */
.hide-md-lg {
  display: none;
}

/* 底部容器 */
.bottom-container {
  width:650px;
  margin-top:70px;
  text-align: center;
  background-color: #666;
  border-radius: 0px 0px 4px 4px;
}

/* 响应式设计，在设备屏幕尺寸小于 650px ，上下丢跌显示 */
@media screen and (max-width: 650px) {
  .col {
    width: 100%;
    margin-top: 0;
  }
  /* hide the vertical line */
  .vl {
    display: none;
  }
  /* show the hidden text on small screens */
  .hide-md-lg {
    display: block;
    text-align: center;
  }
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
		おめでとうございます、会員になりました、こちらログインしてください。</div>
		<br>
	<br>
<div class="container" >
  <form action="DengluServlet" method="post">
    <div class="row">
      <h2 style="text-align:center;color: #1a445d;">ログインテーブル</h2>
      <div class="vl">
        <span class="vl-innertext">or</span>
      </div>

      <div class="col">
        <a href="#" class="fb btn">  フェイスブックログイン  </a>
        <a href="#" class="twitter btn"> ツイッターログイン </a>
        <a href="#" class="google btn"> グーグルログイン   </a>
      </div>

      <div class="col">
        <div class="hide-md-lg">
          <p>Or sign in manually:</p>
        </div>
        
        <form >
        <input type="text" name="username" placeholder="ユーザー名" required>
        
        <input type="password" name="pwd" placeholder="暗証番号" required>
        <input type="submit" value="ログイン">
      </form>
            	
</form>
      
    </div>
  </form>
</div>

<div class="bottom-container">
  <div class="row">
    <div class="col">
      <a href="#" style="color:white" class="btn">再登録</a>
    </div>
    <div class="col">
      <a href="#" style="color:white" class="btn">パスワードを忘れた場合</a>
    </div>
  </div>
</div> 


</body>
</html>