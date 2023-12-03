<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content = "width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="../../css/custom.css">
	<style type="text/css">
	 a:link { color: #0064CD; text-decoration: none;}	
	 a:visited { color: #0064CD; text-decoration: none;}	
	 a:hover { color: black; text-decoration: none;}
	</style>
	<title>2023 DGIST DATABASE PROJECT</title>
	<link rel="stylesheet" href="../../css/bootstrap.min.css">
</head>
<body>
	<script src="../../js/jquery.min.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
	<script src="./js/popper.min.js"></script>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="main">동아리 관리 웹</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="memberManager">회원 관리</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="eventManager">연혁 및 이벤트 관리</a>
				</li>
				<li class="nav-item active">
					<a class="nav-link" href="moneyManager">회비 관리</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">
						설정
					</a>
					<div class="dropdown-menu" aria-labelledby="dropdown">
						<a class="dropdown-item" href="#">계정관리</a>
						<a class="dropdown-item" href="#">계정삭제</a>
						<a class="dropdown-item" href="#">로그아웃</a>
					</div>
				</li>
			</ul>
		</div>

	</nav>

	<div style = "margin: auto; display: flex; justify-content: center;align-items: center;">
		<img src="https://shorturl.at/bBJS4" width="300px" height="350px">
	</div>
</body>

</html>