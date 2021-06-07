<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<title>로그인</title>
</head>	
<body>
	<div class="container">
		<form action="/Logon/Login" method="POST" id="loginForm"> 
		<div class="col-lg-4"></div>
			<div class="col-lg-4">
			<div style="padding: 20px;">
			<h1>Member Login</h1>
			
		<div class="form-group">
			<label>아이디:</label>
				<input type="text" class="form-control" id="Id" placeholder="아이디를 입력해 주세요" name="id">
		</div>
		
		<div class="form-group">
			<label>비밀번호:</label>
			<input type="password" class="form-control" id="Password" placeholder="비밀번호를 입력해 주세요" name="password">
		</div>
			
		<div class="checkbox">
			<label><input type="checkbox" name="remember">아이디 저장</label>
		</div>
			
		<div class = "form-group">
			<div class = "col-lg-2"></div>
			<input type="submit" class="btn btn-primary form-control" value="로그인">
		</div>
			
		<div class = "form-group">
			<div class = "col-lg-2"></div>
			<input type="submit" class="btn btn-success form-control" value="네이버 로그인">
		</div>
		
		<div class = "form-group">
			<div class = "col-lg-2"></div>	
			<input type="submit" class="btn btn-warning form-control" value="카카오 로그인"><br><hr>
		</div>
		
		<div class= "form-group">
			<div class = col-sm-offset-1>	
			<button type="button" class="btn btn-default">ID찾기</button>
			<button type="button" class="btn btn-default">비밀번호 찾기</button>
			<button type="button" class="btn btn-default">회원가입</button>
			</div>
		</div>
		</div>		
	</div>
	</form>
</div>

<script src="../../js/jquery-3.6.0.min.js"></script>
<script src="../../bootstrap/js/bootstrap.min.js"></script>	

</body>
</html>