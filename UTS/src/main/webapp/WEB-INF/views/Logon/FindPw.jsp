<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<title>PW 찾기</title>
</head>
<body>

	<div class = "container">
	<form class="form-horizontal" method="post" name="f_pw" action="Find/FindPw">
	
		<div class="form-group">
			<div class="col-sm-2"></div>
			<div class="col-sm-6">
				<h2 align="center">ID 찾기</h2>
				<h5 align="center">비밀번호는 가입시 입력한 이름, 아이디, 이메일을 통해 찾을 수 있습니다.</h5><hr>
			</div>
		</div>		
   
   <div class="form-group">
    	<div class= col-sm-2></div>
        <div class="col-sm-6">
        	<input type="text" class="form-control" id="f_Passwd" placeholder="아이디를 입력해 주세요" maxlength="15">
        </div>
   </div>
   
   <div class="form-group">
    	<div class= col-sm-2></div>
        <div class="col-sm-6">
        	<input type="text" class="form-control" id="f_email" placeholder="이메일을 입력해 주세요" maxlength="15">
        </div>
   </div>
   
   <div class="row">
   		<div class= col-sm-2></div>
   		<div class= "col-sm-6">
   			<button type="submit" class="btn btn-outline-secondary findbtn col-lg-12">찾기</button>	
   		</div>
   </div>
   </form> 
   </div>        
          

<script src="../../js/jquery-3.6.0.min.js"></script>
<script src="../../bootstrap/js/bootstrap.min.js"></script>	
</body>
</html>