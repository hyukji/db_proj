<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content = "width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="./css/custom.css">
	<style type="text/css">
	 a:link { color: #0064CD; text-decoration: none;}	
	 a:visited { color: #0064CD; text-decoration: none;}	
	 a:hover { color: black; text-decoration: none;}
	</style>
	<title>2023 DGIST DATABASE PROJECT</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css">
</head>
<body>
	<script src="./js/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/popper.min.js"></script>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="main.jsp">동아리 관리 웹</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="memberManager.jsp">회원 관리</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="eventManager.jsp">연혁 및 이벤트 관리</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="moneyManager.jsp">회비 관리</a>
				</li> 
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">
						설정
					</a>
					<div class="dropdown-menu" aria-labelledby="dropdown">
						<a class="dropdown-item" href="#">계정관리</a>
						<a class="dropdown-item" href="#">계정삭제</a>
						<a class="dropdown-item" href="./index.jsp">로그아웃</a>
					</div>
				</li>
			</ul>
		</div>
	
	</nav>
	<div style = "height:300px; witdh:100%"></div>
	<div class="subtitle" style="width:200px;position:absolute; top:20%; left:45%;" >계정 암호 변경</div>
	<div class="col-15 text-middle">
		<div style = "position:absolute; top:50%; left:50%; margin: -50px 0 0 -50px;">
		<form style = "position:absolute; top:50%; left:50%; margin: -50px 0 0 -50px;" action="#" method="post">
			<div style="padding:1px;"></div>
			<input type="password" name="userPWChange" placeholder="PW">
			<div style="padding:5px;"></div>
			<input style = "width:190px; left-margin:auto; right-margin:auto"type="submit" value="정보 변경">
		</form>
		</div>
	</div>
</body>

</html>