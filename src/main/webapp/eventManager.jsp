<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content = "width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="./css/custom.css">
	<style type="text/css">
	 a:link { color: black; text-decoration: none;}	
	 a:visited { color: #0064CD; text-decoration: none;}	
	 a:hover { color: grey; text-decoration: none;}
	</style>
	<title>2023 DGIST DATABASE PROJECT</title>
	<link rel="stylesheet" href="./css/bootstrap.min.css">
</head>
<body>
	<script src="./js/jquery.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	<script src="./js/popper.min.js"></script>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="main.jsp">동아리 관리 웹 <small> - 연혁 및 이벤트 관리</small></a>
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
	
	<section style="height:90px">
		<form method="get" action="./eventManager.jsp" class="form-inline mt-3">
		<select name="searchDivide" class="form-control mx-1 mt-2">
		<option value="행사명">행사명</option>
		<option value="날짜">날짜</option>
		</select>
		<input type="text" name="search" class="form-control mx-1 mt-2" placeholder="내용을 입력하세요.">
		<button type="submit" class="btn btn-primary mx-1 mt-2">검색</button>
		<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal" style="font-weight:bold">등록하기</a>
		</form>
	</section>
	
	<!--  카드 보드 형태로 이벤트 나열-->	
	<div class="card bg-light mt-3">
		<div class="card-header bg-light">
			<div class="row">
				<div class="col-8 text-left">2023 달빛제 부스운영&nbsp;</div>
					<div class="col-4 text-right">
					<span style="color: blue;">2023.11.02</span>
					</div>
				</div>
		</div>
		<div class="card-body">
			<p class="card-text"><small>달빛제에 참여하여 커피 및 음료 판매</small></p>
			<div class="row">
				<div class="col-12 text-right">
					<a onclick="return confirm('삭제하시겠습니까?')" href="./deleteAction.jsp?evaluationID=">삭제</a>
				</div>
			</div>
		</div>
	</div>
	<div class="card bg-light mt-3">
		<div class="card-header bg-light">
			<div class="row">
				<div class="col-8 text-left">2023 2학기 1차 교육&nbsp;</div>
					<div class="col-4 text-right">
					<span style="color: blue;">2023.09.05</span>
					</div>
				</div>
		</div>
		<div class="card-body">
			<p class="card-text"><small>드립커피 추출법 및 추출 도구 실습</small></p>
			<div class="row">
				<div class="col-12 text-right">
					<a onclick="return confirm('삭제하시겠습니까?')" href="./deleteAction.jsp?evaluationID=">삭제</a>
				</div>
			</div>
		</div>
	</div>
	
	<!--  등록 모달창 -->
	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
			<h5 class="modal-title" id="modal">부원 등록</h5>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
		</div>
		<div class="modal-body">
			<form action="./eventRegisterAction.jsp" method="post">
				<div class="form-row">
				<div class="form-group col-sm-6">
				<label>행사명</label>
				<input type="text" name="eventName" class="form-control" style="width:300px">
				</div>
				</div>
				<div class="form-row">
				<div class="form-group col-sm-6">
				<label>날짜</label>
				<input type="text" name="eventDate" class="form-control" style="width:300px">
				</div>
				</div>
			<div class="form-group">
				<label>행사 내용</label>
				<textarea name="eventContent" class="form-control" maxlength="2048" style="height: 180px;"></textarea>
				</div>
				<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
				<button type="submit" class="btn btn-primary">등록하기</button>
				</div>
			</form>
		</div>
		</div>
		</div>
	</div>
	
</body>

</html>