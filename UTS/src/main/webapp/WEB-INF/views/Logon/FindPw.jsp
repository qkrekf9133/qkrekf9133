<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" 	tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>비밀번호 찾기</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>

	<div class = "container">
	<form class="form-horizontal" method="POST" name="findform" action="/Logon/FindPw">
	
		<div class="form-group">
			<div class="col-sm-2"></div>
			<div class="col-sm-6">
				<h2 align="center">비밀번호 찾기</h2>
				<h4>비밀번호는 가입시 입력한 아이디, 이메일을 통해 찾을 수 있습니다</h4><hr>
			</div>
		</div>		

	<div class="form-group">
    	<div class="col-sm-2"></div>
        <div class="col-sm-6">
        	<input type="text" class="form-control" id="f_id" name= "id" placeholder="아이디를 입력해 주세요" maxlength="15">
        </div>
   </div>
   
   <div class="form-group">
    	<div class="col-sm-2"></div>
        <div class="col-sm-6">
        	<input type="text" class="form-control" id="f_email" name="email" placeholder="이메일을 입력해 주세요" maxlength="40">
        </div>
   </div>
   
   <div class="row">
   		<div class= "col-sm-2"></div>
   		<div class= "col-lg-6">
   			<button type="submit" class="btn btn-outline-secondary">찾기</button>	
   		</div>
   </div>
   </form> 
   </div>        
	
	 
	<!--이름과 이메일이 일치하지 않을 때
	<c:if test="${check == 1}">
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-6">
				<div class="jumbotron">
					<h2 align="center">일치하는 정보가 없습니다. 다시 확인해 주세요</h2>
				</div>
				<div>
					<button type="button" class="btn btn-primary" onClick="location.href='/Logon/FindPw'">확인</button>
				</div>
			</div>
		</div>					
	</c:if>
	
		
	 이름과 이메일이 일치 할때
	<c:if test="${check == 0 }">
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-6">
				<div class="jumbotron">
					<h2 align="center">고객님의 비밀번호는 ${password} 입니다.</h2>
				</div>
				<div>
					<button type="button" class="btn btn-primary" onClick="location.href='/Logon/Login'">로그인 페이지로 이동</button>
				</div>
			</div>
		</div>					
	</c:if>
		 
	다른 방식
	 이름과 전화번호가 일치하지 않을 때
	<c:if test="${check == 1}">
		<script>
			opener.document.findform.name.value = "";
			opener.document.findform.email.value = "";
		</script>
		<label>일치하는 정보가 존재하지 않습니다.</label>
		</c:if>

		이름과 비밀번호가 일치하지 않을 때 
		<c:if test="${check == 0 }">
		<label>찾으시는 아이디는' ${id}' 입니다.</label>
		<div class="form-label-group">
				<input class="btn btn-lg btn-secondary btn-block text-uppercase"
					type="button" value="OK" onclick="closethewindow()">
			</div>
		</c:if>
							
	
	<script type="text/javascript">
		function closethewindow(){
			self.close();
		}
	</script>
	-->	
</body>
</html>