<%@ page import="java.util.List" %>
<%@ page import="com.spring.boot.dto.MemberDTO" %>
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
		<a class="navbar-brand" href="main">동아리 관리 웹 <small> - 회원 관리</small></a>
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
						<a class="dropdown-item" href="index">로그아웃</a>
					</div>
				</li>
			</ul>
		</div>
	</nav>
	
	<section style="height:90px">
		<form method="post" action="memberSearch" class="form-inline mt-3">
		<select name="searchDivide" class="form-control mx-1 mt-2">
			<option value="학생명">학생명</option>
			<option value="학번">학번</option>
			<option value="기수">기수</option>
		</select>
		<input type="text" name="searchContent" class="form-control mx-1 mt-2" placeholder="내용을 입력하세요.">
		<button type="submit" class="btn btn-primary mx-1 mt-2">검색</button>
		<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal" style="font-weight:bold">등록하기</a>
		</form>
	</section>

	<%
		List<MemberDTO> members = (List<MemberDTO>) request.getAttribute("members");
		for (MemberDTO member : members) {
	%>

	<div class="card bg-light mt-3">
		<div class="card-header bg-light">
			<div class="row">
				<div class="col-8 text-left"><%= member.getName() %>&nbsp;<small><%= member.getNumber() %></small></div>
				<div class="col-4 text-right">
					<span style="color: red;"><%= member.getInception() %></span>기
				</div>
			</div>
		</div>
		<div class="card-body">
			<p class="card-text"><small><%= member.getEtc() %></small></p>
			<div class="row">
				<div class="col-12 text-right">
					<a onclick="return confirm('삭제하시겠습니까?')" href="memberDeleteAction?number=<%= member.getNumber() %>">삭제</a>
				</div>
			</div>
		</div>
	</div>

	<%
		}
	%>

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
			<form action="memberRegisterAction" method="post">
				<div class="form-row">
				<div class="form-group col-sm-6">
				<label>학생명</label>
				<input type="text" name="name" class="form-control" maxlength="20">
				</div>
				<div class="form-group col-sm-6">
				<label>학번</label>
				<input type="text" name="number" class="form-control" maxlength="20">
				</div>
				</div>
			<div class="form-row">
				<div class="form-group col-sm-4">
				<label>기수</label>
				<select name="inception" class="form-control">
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
				<textarea name="etc" class="form-control" maxlength="2048" style="height: 180px;"></textarea>
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