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
	<a class="navbar-brand" href="index.jsp">동아리 관리 웹</a>
	</nav>
	
	<div style="padding:50px;"></div>
	
	<div class="loginbox">
		<div class="subtitle" style="width:100px;position:absolute; top:35%; left:50%; margin: -50px 0 0 -50px;" >회원 로그인</div>
		<div style="padding:5px; width:100%"></div>
		<div style = "position:absolute; top:50%; left:50%; margin: -50px 0 0 -50px;">
		<form style = "position:absolute; top:50%; left:50%; margin: -50px 0 0 -50px;" action="loginAction" method="post" path="name">
			<input type="text" name="name" placeholder="ID">
			<div style="padding:1px;"></div>
			<input type="password" name="number" placeholder="PW">
			<div style="padding:5px;"></div>
			<input style = "width:100px; left-margin:auto; right-margin:auto"type="submit" value="로그인">
		</form>
		</div>
		<div style="width:100px; position:absolute; top:65%; left:50%; margin: -50px 0 0 -50px;">
			<form action="UserJoin.jsp" method="post">
				<input type="submit" value="회원가입">
			</form>
		</div>
	</div>
	
	
	<div style="padding:50px;"></div>
	<div class="projecttitle"  >2023 DGIST DATABASE PROJECT</div>
	<div style="padding:20px;"></div>
</body>

</html>