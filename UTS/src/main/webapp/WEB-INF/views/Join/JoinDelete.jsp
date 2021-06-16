<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원탈퇴</title>
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
	<form class="form-horizontal" name="JoinForm" method="post" action="/Join/JoinDelete" onsubmit="return check()">
	
		<div class="form-group">
			<div class="col-sm-2"></div>
			<div class="col-sm-6">
				<h2 align="center">${member.id}님 회원탈퇴하시겠습니까?</h2>
			</div>
		</div>			
	
			<div class="form-group">
				<div class="col-sm-2"></div>
				<div class="col-sm-6">
					<h5 align="center">새로운 중고플랫폼에 오신 것을 환영합니다.</h5><hr>
				</div>
			</div>

			<div class="form-group">
            	<label class="col-sm-2 control-label">아이디</label>
                	<div class="col-sm-6">
                    	<input type="text" class="form-control" id="userid" name="id"  value="${member.id}" readonly="readonly"/>
                    </div>
            </div>
            
            <div class="form-group">
            	<label for="inputPassword" class="col-sm-2 control-label">패스워드</label>
                	<div class="col-sm-6">
                       <input type="password" class="form-control" id="Password" name="password" data-rule-required="true" placeholder="비밀번호를 입력 해주세요" maxlength="30">
                   </div>             
           	</div>
            
            <div class="form-group">
            	<label for="inputPasswordCheck" class="col-sm-2 control-label">패스워드 확인</label>
                	<div class="col-sm-6">
                        <input type="password" class="form-control" id="PasswordCheck" name="PasswordCheck" data-rule-required="true" placeholder="비밀번호를 재입력 해주세요" maxlength="30">
                    </div>
                </div>
                
                <br>

			<div class="form-group">
				<div class = "col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-success btn-lg" id="submit">회원 탈퇴</button>		
					<button type="reset" class="cancle btn btn-danger btn-lg" onClick="location.href='/'">취소 </button>
				</div>		
			</div>	
			</form>
			<div>
				<c:if test="${msg ==false}">
					비밀번호가 맞지 않습니다.
				</c:if>
			</div>
		</div>		

<script type="text/javascript">

$(document).ready(function(){
	
	// 취소
	$(".cancle").on("click", function(){
		
		location.href = "/Logon/Login";
				    
	})

	$("#submit").on("click", function(){
		if($("#userid").val()==""){
			alert("아이디를 입력해주세요.");
			$("#userid").focus();
			return false;
		}
		
		//아이디 생성식
		var reg = /^[a-zA-Z0-9]{4,12}$/;		
		var id = $("#userid").val();
		if(!reg.test(id)){
			alert("ID: 4~12자의 영문 대소문자와 숫자로만 입력해주세요");
			$("#userid").focus();
			return false;
		}
	
		//비밀번호 공백시
		if($("#Password").val()==""){
			alert("비밀번호 체크해주세요.");
			$("#Password").focus();
			return false;
		}
		//비밀번호와 비밀번호 체크 시 다를 경우
		if($("#PasswordCheck").val() != $("#Password").val()){
			alert("비밀번호가 다릅니다");
			$("#PasswordCheck").focus();
			return false;
		}
		
		// 비밀번호 체크란 공백시
		if($("#PasswordCheck").val() == ""){ 
			alert("패스워드 확인란을 입력해주세요"); 
			$("#PasswordCheck").focus(); 
			return false; 
		}
		
		//패스워드 암호 생성식
		var reg = /^(?=.*?[a-zA-Z])(?=.*?[0-9])(?=.*?[#?!@$%^&-*]).{4,12}$/;		
		var password = $("#Password").val();
		if(!reg.test(password)){
			alert("Password: 4~12자의 영문 대소문자/특수기호/숫자로 입력해주세요");
			$("#Password").focus();
			return false;
		}

		//아이디와 비밀번호 작성이 같을 경우
		if($("#userid").val() == $("#Password").val()){ 
			alert("아이디와 비밀번호가 같습니다"); 
			$("#Password").val(""); 
			$("#Password").focus(); 
			return false; 
		}
		alert("회원탈퇴 진행하시겠습니까?");
	})
})	
		
		/*
		//이름란 공백시
		if($("#Name").val()==""){
			alert("이름을 입력해주세요.");
			$("#Name").focus();
			return false;
		}
		
		//한글 및 영어 가능 이름 정규식 
		var reg = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;	
		var name = $("#Name").val();
		if(!reg.test(name)){
			alert("이름을 다시 확인하여 주세요");
			$("#Name").focus();
			return false;
		}
		*/

</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</body>
</html>