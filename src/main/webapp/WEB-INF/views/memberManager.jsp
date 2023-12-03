<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content = "width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="../../css/custom.css">
	<style type="text/css">
	 a:link { color: black; text-decoration: none;}	
	 a:visited { color: #0064CD; text-decoration: none;}	
	 a:hover { color: grey; text-decoration: none;}
	</style>
	<title>2023 DGIST DATABASE PROJECT</title>
	<link rel="stylesheet" href="../../css/bootstrap.min.css">
</head>
<body>
	<script src="../../js/jquery.min.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
	<script src="./js/popper.min.js"></script>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="main.jsp">동아리 관리 웹 <small> - 회원 관리</small></a>
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
						<a class="dropdown-item" href="index.jsp">로그아웃</a>
					</div>
				</li>
			</ul>
		</div>
	</nav>
	
	<section style="height:90px">
		<form method="get" action="./memberManager.jsp" class="form-inline mt-3">
		<select name="searchDivide" class="form-control mx-1 mt-2">
		<option value="학생명">학생명</option>
		<option value="학번">학번</option>
		<option value="기수">기수</option>
		</select>
		<input type="text" name="search" class="form-control mx-1 mt-2" placeholder="내용을 입력하세요.">
		<button type="submit" class="btn btn-primary mx-1 mt-2">검색</button>
		<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal" style="font-weight:bold">등록하기</a>
		</form>
	</section>
	
	<!--  카드 보드 형태로 회원 정보 나열-->
	<div class="card bg-light mt-3">
		<div class="card-header bg-light">
			<div class="row">
				<div class="col-8 text-left">김달구&nbsp;<small>201811057</small></div>
					<div class="col-4 text-right">
					<span style="color: red;">5</span>기
					</div>
				</div>
		</div>
		<div class="card-body">
			<p class="card-text"><small>총무부 부원</small></p>
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
				<div class="col-8 text-left">박디지&nbsp;<small>201611011</small></div>
					<div class="col-4 text-right">
					<span style="color: red;">3</span>기
					</div>
				</div>
		</div>
		<div class="card-body">
			<p class="card-text"><small>홍보부 부장</small></p>
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
			<form action="memberRegisterAction.jsp" method="post">
				<div class="form-row">
				<div class="form-group col-sm-6">
				<label>학생명</label>
				<input type="text" name="studentName" class="form-control" maxlength="20">
				</div>
				<div class="form-group col-sm-6">
				<label>학번</label>
				<input type="text" name="studentNumber" class="form-control" maxlength="20">
				</div>
				</div>
			<div class="form-row">
				<div class="form-group col-sm-4">
				<label>기수</label>
				<select name="Year" class="form-control">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8" selected>8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				</select>
				</div>
			</div>
			<div class="form-group">
				<label>기타 비고 사항</label>
				<textarea name="memberContent" class="form-control" maxlength="2048" style="height: 180px;"></textarea>
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