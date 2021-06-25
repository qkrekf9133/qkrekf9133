<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" 	tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	
	<div class="form-group">
		<div class="col-sm-2"></div>
		<div class="col-sm-6">
			<h5 align="center">새로운 중고플랫폼에 오신 것을 환영합니다.</h5><hr>
		</div>
	</div>

	<c:if test="${check == 0}">
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-6">
				<div class="jumbotron">
					<h2 align="center">비밀번호는 ${password} 입니다.</h2>
				</div>
				<div>
					<button type="button" class="btn btn-primary" onClick="location.href='/Logon/Login'">로그인페이지 이동</button>
				</div>
			</div>
		</div>
	</c:if>		

	<c:if test="${check == 1}">
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-6">
				<div class="jumbotron">
					<h2 align="center"> 일치하는 정보가 없습니다... </h2>
				</div>
				<div>
					<button type="button" class="btn btn-primary" onClick="location.href='/Logon/FindPw'">비밀번호 찾기 이동</button>
					<button type="button" class="btn btn-primary" onClick="location.href='/'">홈 이동</button>
				</div>
			</div>
		</div>
	</c:if>			
</div>

<script type="text/javascript">

</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</body>
</html>