<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1"> <!-- 디자인 개깔쌈하게 -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>로그인 페이지</title>
</head>
<body>
<nav class="navbar navbar-default">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed"
			data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
			aria-expanded="false">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="main.jsp">웹 페이지로</a>
	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav">
			<li><img src="images/homeicon.png" width="50" height="50"><a href="main.jsp">메인</a></li>
			<li><img src="images/smicon.png" width="50" height="50"><a href="sm.jsp">영업관리</a></li>
			<li><img src="images/lticon.png" width="50" height="50"><a href="lt.jsp">근지교통</a></li>
			<li><img src="images/hsicon.png" width="50" height="50"><a href="hs.jsp">접대정산</a></li>
			<li><img src="images/cmicon.png" width="50" height="50"><a href="cm.jsp">상담관리</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopus="true"
					aria-expanded="false">접속하기 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">로그인</a></li>
						<li><a href="userManage.jsp">회원 관리</a>
					</ul>
			
			</li>
		</ul>
	</div>
</nav>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>