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
		<a class="navbar-brand" href="main.jsp">동아리 관리 웹 <small> - 회비 관리</small></a>
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
		<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal" style="font-weight:bold">신규 등록</a>
	</section>
	
		<!--  카드 보드 형태로 월 구분-->
		<!--  9월 회비 납부-->
	<div class="card bg-light mt-3">
		<div class="card-header bg-light">
			<div class="row">
				<div class="col-8 text-left">9월 회비 납부&nbsp;</div>
				</div>
		</div>
		<div class="card-body">
			<div class="row">
				<div class="col-1 text-right">
				  <!-- Trigger the modal with a button -->
				  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="height:30px;font-size:12px">열람</button>
				
				  <!-- Modal -->
				  <div class="modal fade" id="myModal" role="dialog">
				    <div class="modal-dialog">
				    
				      <!-- Modal content-->
				      <div class="modal-content">
				        <div class="modal-header">
				          <h4 class="modal-title">Membership Fee Table</h4>
				          <button type="button" class="close" data-dismiss="modal">&times;</button>
				        </div>
				        <div class="modal-body">
				          <table class="table">
				            <thead>
				              <tr>
				                <th>Membership Type</th>
				                <th>Fee</th>
				              </tr>
				            </thead>
				            <tbody>
				              <tr>
				                <td>Gold</td>
				                <td>$100</td>
				              </tr>
				              <tr>
				                <td>Silver</td>
				                <td>$50</td>
				              </tr>
				              <tr>
				                <td>Bronze</td>
				                <td>$25</td>
				              </tr>
				            </tbody>
				          </table>
				        </div>
				        <div class="modal-footer">
				          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				        </div>
				      </div>
				      
				    </div>
				  </div>

				</div>
				<div class="col-11 text-right">
					<a onclick="return confirm('삭제하시겠습니까?')" href="./deleteAction.jsp?moneyID=">삭제</a>
				</div>
			</div>
		</div>
	</div>
	<!--  10월 회비 납부-->
	<div class="card bg-light mt-3">
		<div class="card-header bg-light">
			<div class="row">
				<div class="col-8 text-left">10월 회비 납부&nbsp;</div>
				</div>
		</div>
		<div class="card-body">
			<div class="row">
				<div class="col-1 text-right">
				  <!-- Trigger the modal with a button -->
				  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="height:30px;font-size:12px">열람</button>
				
				  <!-- Modal -->
				  <div class="modal fade" id="myModal" role="dialog">
				    <div class="modal-dialog">
				    
				      <!-- Modal content-->
				      <div class="modal-content">
				        <div class="modal-header">
				          <h4 class="modal-title">Membership Fee Table</h4>
				          <button type="button" class="close" data-dismiss="modal">&times;</button>
				        </div>
				        <div class="modal-body">
				          <table class="table">
				            <thead>
				              <tr>
				                <th>Membership Type</th>
				                <th>Fee</th>
				              </tr>
				            </thead>
				            <tbody>
				              <tr>
				                <td>Gold</td>
				                <td>$100</td>
				              </tr>
				              <tr>
				                <td>Silver</td>
				                <td>$50</td>
				              </tr>
				              <tr>
				                <td>Bronze</td>
				                <td>$25</td>
				              </tr>
				            </tbody>
				          </table>
				        </div>
				        <div class="modal-footer">
				          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				        </div>
				      </div>
				      
				    </div>
				  </div>

				</div>
				<div class="col-11 text-right">
					<a onclick="return confirm('삭제하시겠습니까?')" href="./deleteAction.jsp?moneyID=">삭제</a>
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
			<form action="./moneyRegisterAction.jsp" method="post">
				<div class="form-row">
				<div class="form-group col-sm-12">
				<label>회비 구분명</label>
				<input type="text" name="studentName" class="form-control" maxlength="20">
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
