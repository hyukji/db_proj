<%@ page import="com.spring.boot.dto.PayDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.spring.boot.dto.FeeDTO" %>
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
						<a class="dropdown-item" href="adminEdit">계정관리</a>
						<a class="dropdown-item" href="logout">로그아웃</a>
					</div>
				</li>
			</ul>
		</div>
	</nav>

	<%
		FeeDTO fee = (FeeDTO) request.getAttribute("fee");
	%>
	<div class="form-group col-sm-12"></div>
	<div class="form-group col-sm-12">
		<div style = "font-size:18px; font-weight:bold" ><%= fee.getName() %>&nbsp;</div>
	</div>
	<div class="form-group col-sm-6">
	<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal" style="font-weight:bold">납부 내역 추가</a>
	</div>

	<table id="myTable" class="table table-striped">
        <thead>
            <tr>
                <th scope="col">번호</th>
                <th scope="col">이름</th>
                <th scope="col">금액(원)</th>
                <th scope="col">비고</th>
            </tr>
        </thead>
        <tbody>

			<%
				List<PayDTO> pays = (List<PayDTO>) request.getAttribute("pays");
				int id = 0;
				for (PayDTO pay : pays) {
					id += 1;
					String etc = (fee.getPrice() <= pay.getPrice()) ? "완납" : "미납";
			%>
            <tr>
                <td scope="row"><%= id %></td>
                <td><%= pay.getMember_name() %></td>
                <td><%= pay.getPrice() %></td>
                <td><%= etc %></td>
            </tr>

			<%
				}
			%>
            <!-- Add more rows as needed -->
        </tbody>
    </table>


    <script>
    $(document).ready(function(){
        var sum = 0;
        $("#myTable tbody tr").each(function(){
            var value = parseInt($(this).find('td').eq(2).text());
            if (!isNaN(value)) {
                sum += value;
            }
        });
        $("#sum").text( "납부 총액 : "+ sum + "원");
    });
    </script>
	
    <div class="form-group col-sm-6">
		<div style = "font-size:15px; font-weight:bold" >회비 금액 : <%= fee.getPrice() %></div>
		<div style = "font-size:15px; font-weight:bold" id="sum"></div>
	</div>
    
    <div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
		<div class="modal-content">
		<div class="modal-header">
			<h5 class="modal-title" id="modal">납부 내역 등록</h5>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
			</button>
		</div>
		<div class="modal-body">
			<form action="payRegister/<%= fee.getId() %>" method="post">
				<div class="form-row">
				<div class="form-group col-sm-6">
				<label>학번</label>
				<input type="text" name="member_number" class="form-control" maxlength="20">
				</div>
				<div class="form-group col-sm-6">
				<label>금액</label>
				<input type="text" name="price" class="form-control" maxlength="20">
				</div>
				</div>
			<div class="form-group">
				<label>비고</label>
				<textarea name="etc" class="form-control" maxlength="2048" style="height: 180px;">
				</textarea>
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
