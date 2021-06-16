<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" 	tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/../../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<title>로그인</title>
</head>	
<body>
	<div class="container">

		<form class="form-horizontal" action="/Logon/Login" method="POST" id="loginForm">

		<c:if test="${member == null}"> 
			
			<div class="form-group">	
				<div class="col-sm-2"></div>
				<div class="col-sm-4">
					<h1 align="center">Member Login</h1>
				</div>
			</div>		
					
			<div class="form-group">
				<label class="control-label col-sm-2">아이디:</label>
				<div class= "col-sm-4">
					<input type="text" class="form-control" id="userid" placeholder="아이디를 입력해 주세요" name="id">	
				</div>	
			</div>
		
			<div class="form-group">
				<label class="control-label col-sm-2">비밀번호:</label>
				<div class="col-sm-4">
					<input type="password" class="form-control" id="password" placeholder="비밀번호를 입력해 주세요" name="password">
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-2">
					<input class="form-check-input" type="checkbox" id="idSaveCheck" name="idSaveCheck">
					<label class="form-check-label">아이디 저장</label>
				</div>
			</div>

			
			<div class = "form-group">
				<div class = "col-sm-offset-2 col-sm-4">
					<input type="submit" class="btn btn-primary form-control" id="submit" value="로그인">
						<!--<button class="btn btn-danger" type="submit" id="submit">로그인</button> -->								
						<input type="submit" class="btn btn-success form-control" id="submit1" value="네이버 로그인">
						<!--<button class="btn btn-success" type="submit" id="submit1">네이버 로그인</button>	-->				
						<input type="submit" class="btn btn-warning form-control" id="submit2" value="카카오 로그인">
						<!--<button class="btn btn-warning" type="submit" id="submit2">카카오 로그인</button>--> <br><hr>
				</div>
			</div>	 
		
			<div class= "form-group">
				<div class = "col-sm-8" align="center">					
			 		<button type="button" class="btn btn-default" id="F_id" name="findId" onClick="location.href='/Logon/FindId'">ID 찾기</button>		
					<button type="button" class="btn btn-default" id="F_pw" name="findPw"onClick="location.href='/Logon/FindPw'">PW 찾기</button>							
					<button type="button" class="btn btn-default" onClick="location.href='/Join/Joinarticle'">회원가입</button>				
		 		</div>
		 	</div>		
		</c:if>
			
			<!-- 세션을 체크하기 위해서는 상단에 page session을 true로 설정해야 한다. -->
			<!-- 정상적으로 로그인을 하여 세션값을 받아온 경우 -->
			<c:if test="${member != null}">
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-6">
						<div class="jumbotron">
							<h2 align="center">${member.id}님 환영합니다.</h2>
						</div>
						<div>
							<button type="button" class="btn btn-primary" onClick="location.href='/'">홈으로 이동</button>
							<button type="button" id="logoutBtn" class="btn btn-success" onClick="location.href='/Logon/Login'">로그아웃</button>
							<button type="button" id="updateBtn" class="btn btn-info" onClick="location.href='/Join/JoinUpdate'">회원정보 수정</button>
							<button type="button" id="updateBtn" class="btn btn-danger" onClick="location.href='/Join/JoinDelete'">회원정보 탈퇴</button>
						</div>
					</div>
				</div>
			</c:if>
			
			<c:if test="${msg == false}">		
			<div class="form-group">
				<div class="col-sm-2"></div>
				<div class="col-sm-4">
					<h5><span class="alert" align="center">아이디와 비밀번호를 다시 확인 해 주십시오</span></h5>
				</div>
			</div>
			<!--		
			<div class="form-group">
				<div class="col-sm-8">
					<div style="background-color:#CF0; color:red;"><h4>로그인을 실패하였습니다. 아이디와 비밀번호를 확인하신 후에 다시하십시오.</h4></div>
				</div>
			</div>
			-->	
			</c:if>
			
		</form>
	</div>

<script src="../../resources/js/jquery-3.6.0.min.js"></script>
<script src="../../resources/bootstrap/js/bootstrap.min.js"></script>	

<script type="text/javascript">
$(document).ready(function() {

	// 로그아웃 버튼을 눌렀을 경우
	$("#logoutBtn").on("click", function() {
		location.href="/Logon/Logout";
		alert("로그아웃이 정상적으로 되었습니다.");
	});

	// 로그인 버튼을 눌렀을 경우
	$("#submit").on("click", function() {
		//alert("아이디와 비밀번호를 다시 확인하여 주세요!");
	
		// 아이디, 비밀번호 input창에 아무 것도 작성이 안되어 있을경우
		if($("#userid").val()==""){
			alert("아이디를 입력해주세요.");
			$("#userid").focus();
			return false;
		}
		if($("#password").val()==""){
			alert("비밀번호를 입력해주세요.");
			$("#password").focus();
			return false;
		}
		
		document.getElementById("loginForm").submit();
		return false;
	});
	
	$("#submit1").on("click", function() {
		if($("#userid").val()==""){
			alert("아이디를 입력해주세요.");
			$("#userid").focus();
			return false;
		}
		if($("#passwd").val()==""){
			alert("비밀번호를 입력해주세요.");
			$("#passwd").focus();
			return false;
		}
		document.getElementById("loginForm").submit();
		return false;
	});
		
	$("#submit2").on("click", function() {
		if($("#userid").val()==""){
			alert("아이디를 입력해주세요.");
			$("#userid").focus();
			return false;
		}
		if($("#passwd").val()==""){
			alert("비밀번호를 입력해주세요.");
			$("#passwd").focus();
			return false;
		}
		document.getElementById("loginForm").submit();
		return false;
	});
});

//아이디 자동 저장 기능
    $(document).ready(function(){
    var userInputId = getCookie("userInputId");//저장된 쿠기값 가져오기
    $("input[name='id']").val(userInputId); 
     
    if($("input[name='id']").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩
                                           // 아이디 저장하기 체크되어있을 시,
        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }
     
    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 발생시
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
            var userInputId = $("input[name='id']").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("userInputId");
        }
    });
     
    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("input[name='id']").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            var userInputId = $("input[name='id']").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }
    });
});
 
function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}
 
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}
 
function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}



</script>

</body>
</html>