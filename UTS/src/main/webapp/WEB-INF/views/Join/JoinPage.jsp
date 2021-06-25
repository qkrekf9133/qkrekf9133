<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<form class="form-horizontal" name="JoinForm" method="post" action="/Join/JoinPage" onsubmit="return check()">
	
	<div class="form-group">
		<div class="col-sm-2"></div>
		<div class="col-sm-6">
			<h2 align="center">SIGN UP!</h2>
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
                        <input type="text" class="form-control" id="userid" name="id" placeholder="4~12자의 영문 대소문자와 숫자로만 입력해 주세요." maxlength="15">
                    </div>
                    	<!--<input type="button" class="btn btn-danger btn-sm" id="confirm_id" name="confirm_id" value="아이디 중복확인">-->
                    	<!--<button class="idCheck btn btn-warning" type="button" id="idCheck" name="idCheck"onclick="fn_idCheck();" value="N">중복확인</button> -->
                    	<input type="button" class="idCheck btn btn-danger" id="idCheck" name="idCheck" onclick="fn_idCheck();" value="아이디 중복확인">
                </div>
            
            <div class="form-group">
            	<label for="inputPassword" class="col-sm-2 control-label">패스워드</label>
                	<div class="col-sm-6">
                       <input type="password" class="form-control" id="Password" name="password" data-rule-required="true" placeholder="4~12자의 영문 대소문자/특수기호/숫자로 입력해 주세요." maxlength="30">
                   </div>             
           	</div>
            
            <div class="form-group">
            	<label for="inputPasswordCheck" class="col-sm-2 control-label">패스워드 확인</label>
                	<div class="col-sm-6">
                        <input type="password" class="form-control" id="PasswordCheck" name="PasswordCheck" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
                    </div>
                </div>
                
                <br>
                
            <div class="form-group">
            	<label for="inputName" class="col-sm-2 control-label">이름</label>
               	<div class="col-sm-6">
                	<input type="text" name="name" class="form-control" id="Name" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15">
                </div>
            </div>
                
                <div class="form-group">
                    <label class="col-sm-2 control-label">닉네임</label>
                    	<div class="col-sm-6">
                        	<input type="text" name="nickname" class="form-control" id="usernickname" placeholder="닉네임을 입력해 주세요" maxlength="15">
                    	</div>
                    		<input type="button" class="btn btn-danger" id="nicknameCheck" name="nicknameCheck" onclick="fn_nCheck();" value="닉네임 중복확인">
                </div>
                      
                <div class = "form-group">
                	<label class="col-sm-2 control-label">주소</label>
                	<div class="col-sm-3">
                		<input type="text" class="form-control" id="zipcode" name="zipcode" maxlength="100" placeholder="우편번호" readonly/>
                	</div>
                		<input type="button" class="btn btn-danger btn-sm" name="zipcode" id="zipcode" value="우편번호 검색" onclick="daumZipCode()" readonly/>    	
                </div>
                
                 <div class = "form-group">
                	<label class="col-sm-2 control-label"></label>
                	<div class="col-sm-6">
                		<input type="text" class="form-control" id="address" name="address" maxlength="100" placeholder="자동입력" readonly/>
                	</div>
                </div>
                
				<div class = "form-group">
                	<label class="col-sm-2 control-label"></label>
                	<div class="col-sm-6">
                		<input type="text" class="form-control" id="Daddress" name="daddress" maxlength="100" placeholder="상세주소를 입력해주세요">
                	</div>
                </div>
                             
                <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">E-MAIL</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="email" id="email" placeholder="ex) jungo@jungo.com" maxlength="40">
                    </div>
                </div>
         		
                <div class="form-group">
                    <label for="inputPhoneNumber" class="col-sm-2 control-label">휴대폰 번호</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="phone" id="phoneNumber" placeholder="ex) 010-1234-5678" maxlength="13">
                    </div>
                </div>
 
				<div class="form-group">
					<div class = "col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-success btn-lg" id="submit" disabled="disabled">회원가입</button>		
						<button type="reset" class="cancle btn btn-danger btn-lg" onClick="location.href='/'">취소 </button>
					</div>		
				</div>	
			</form>
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
		
		
		if($("#confirm_id").val()==""){
			alert("아이디 중복확인 해주세요.");
			$("#confirm_id").focus();
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
		
		//닉네임 공백시
		if($("#usernickname").val()==""){
			alert("닉네임을 입력해주세요.");
			$("#usernickname").focus();
			return false;
		}
		
		
		if($("#nicknameCheck").val()==""){
			alert("닉네임 중복확인 해주세요.");
			$("#nicknameCheck").focus();
			return false;
		}
		
		
		//우편번호 공백시
		if($("#zipcode").val()==""){
			alert("우편번호 검색을 눌러주세요.");
			$("#zipcode").focus();
			return false;
		}
		
		//이메일 공백시
		if($("#email").val()==""){
			alert("이메일 입력해 주세요.");
			$("#email").focus();
			return false;
		}
		
		//이메일 생성식
		var reg = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;		
		var email = $("#email").val();
		if(!reg.test(email)){
			alert("이메일 형식을 확인하여 주세요");
			$("#email").focus();
			return false;
		}
		
		//휴대폰번호 공백시
		if($("#phoneNumber").val()==""){
			alert("휴대폰번호 입력해 주세요.");
			$("#phoneNumber").focus();
			return false;
		}
		
		//휴대폰 생성식
		var reg = /^\d{3}-\d{3,4}-\d{4}$/;		
		var phone = $("#phoneNumber").val();
		if(!reg.test(phone)){
			alert("휴대폰 번호 다시 확인하여 주세요.");
			$("#phoneNumber").focus();
			return false;
		}
	
	})
})


//우편번호
function daumZipCode() {
	new daum.Postcode({
		oncomplete: function(data) {
			//팝업창에서 검색한 결과 중 항목을 클릭하였을 경우에 
			//실행할 코드를 이곳에 작성한다.

			//각 주소의 노출 규칙에 따라 주소를 조합한다.
			//내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로,
			//이름 참고하여 분기한다.
			var fullAddr  = '';	//최종 주소 변수
			var subAddr   = ''; //조합형 주소 변수

			//사용자가 선택한 주소의 타입에 따라서 해당 주소값을 가져온다.
			if(data.userSelectedType == 'R') { //도로명 주소를 선택한 경우
				fullAddr = data.roadAddress;
			} else { //지번 주소를 선택한 경우
				fullAddr = data.jibunAddress;
			}

			//사용자가 선택한 주소가 도로명 타입일 때 조합한다.
			if(data.userSelectedType == 'R') {
				//법정동명이 있을 경우 추가한다.
				if(data.bname != '') {
					subAddr += data.bname;
				}
				//건물명이 있을 경우에 추가한다.
				if(data.buildingName != '') {
					subAddr += (subAddr != '' ? ', ' + data.buildingName : data.buildingName);
				}
				//조합형 주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
				fullAddr += (subAddr != '' ? '(' + subAddr + ')' : '');
			}
			//우편번호와 주소정보를 행당 필드에 나타낸다.
			//5자리의 새 우편번호
			document.getElementById('zipcode').value   = data.zonecode; 
			document.getElementById('address').value = fullAddr;
			//커서를 상세주소 입력필드로 이동시킨다.
			document.getElementById('Daddress').focus();
		}
	}).open();
}


// 아이디 중복확인
// 값이 안나타 날때 pom.xml에 maven 추가시키면 된다.
function fn_idCheck() {
	//alert("중복확인"); 
	$.ajax({
		url : "/Join/idCheck",
		type : "POST",
		dataType : "json",
		////data : {"db 네임값" : $("#해당 아이디").val()},
		data : {"id" : $("#userid").val()},
		success : function(data){
			//alert("Return Value : " + data);
			if(data == 1) {
				alert("중복된 아이디 입니다. 다시 입력하여 주세요.");
				// 아이디 중복시 버튼 비활성화
				$("#submit").attr("disabled", "disabled");
			} else if(data == 0) {
				//$("#idCheck").attr("value", "Y");
				alert("사용가능한 아이디입니다.");
				$("#submit").removeAttr("disabled");
			}
		}
	})
}

//닉네임 중복확인
function fn_nCheck(){
	//alert("중복확인");
	$.ajax({
		url : "/Join/nicknameCheck",
		type : "POST",
		dataType : "json",
		////data : {"db 네임값" : $("#해당 아이디").val()},
		data : {"nickname" : $("#usernickname").val()},
		success : function(data){
			//alert("Return Value : " + data);
			if(data == 1) {
				alert("중복된 닉네임 입니다.");
				$("#submit").attr("disabled", "disabled");
			} else if(data == 0) {
				//$("#nicknameCheck").attr("value", "Y");
				alert("사용가능한 닉네임 입니다.");
				$("#submit").removeAttr("disabled");
			}
		}
	});
}


</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</body>
</html>