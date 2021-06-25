<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


    <style type="text/css">
        {
            font-family:'malgun gothic';
}

        #content.cols-d { width: 583px; min-width: 583px; margin:auto; }

        .f { position: relative; margin: 0; padding: 0; color: #666; }        
        .f p { width: 100%; margin: 0 0 13px; font-size: 1.3em; text-align:center; margin-top:20px;}
        .f p:after { display: block; overflow: hidden; clear: both; height: 0; }    
        .f textarea {
             position: relative; 
             width: 600px; height: 200px; min-height: 118px; 
             padding: 3px 3px 3px 6px; 
             border: 1px solid #ececec; 
             background: #ececec; 
             border-radius: 3px; 
            -moz-border-radius: 3px; 
            -webkit-border-radius: 3px;
             text-align:"left";
}     
/*  
        .scheme-g { 
            margin: 26px 0 8px; 
            padding: 0px; 
            font-size: 1.2em; 
            font-weight: 100;
            text-align:"center";
} 
    
        .button_big { 
            float:right;
            border: 0; border-radius: 3px; 
            cursor: pointer; display: inline-block; 
            font-size: 12px; font-weight: bold; 
            line-height: 24px; 
            margin-left: 5px; 
            padding: 8px 16px; 
            text-decoration: none; color:#fff; 
            background:#0080ff; 
            text-shadow: 1px 1px 1px #0066cc; 
            -webkit-transition: all 0.2s ease-out; 
}
*/
    </style>

	<title>회원가입 동의</title>
</head>

<body>
    
<article id="content" class="cols-d">
    <div class="Article">
        <h1 align="center" style="font-weight:bold;">이용약관</h1><hr>
        <form id="JoinArticle" class="f" action="/Join/JoinPage" method="GET">
        
            <h3 align="center" style="color:black; font-weight:bold;">중고나라 이용약관 동의</h3> <br>
                      
            <textarea style="font-size:1em;" readonly>                     			
                                                       1. 수집하는 개인정보
 이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 중고나라 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 중고나라는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
    
회원가입 시점에 중고나라가 이용자로부터 수집하는 개인정보는 아래와 같습니다.
 	  	
 - 회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 휴대전화번호’를 필수항목으로 수집합니다.

 만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대 
 리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대전화번호)를 추가로 수집합니다.
 그리고 선택항목으로 이메일 주소, 프로필 정보를 수집합니다.
           
 - 단체아이디로 회원가입 시 단체아이디, 비밀번호, 단체이름, 이메일주소, 휴대전화번호를 
   필수항목으로 수집합니다. 그리고 단체 대표자명을 선택항목으로 수집합니다.
            
        	
  서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.

 중고나라 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자 
 에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해 
 당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목 
 적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.

 서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집 
 될 수 있습니다. 또한 이미지 및 음성을 이용한 검색 서비스 등에서 이미지나 음성이 수집될 
 수 있습니다.
        	
 구체적으로 
 1) 서비스 이용 과정에서 이용자에 관한 정보를 자동화된 방법으로 생성하여 이를 저장(수집)하거나, 
 2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환하여 수집합 
 니다. 서비스 이용 과정에서 위치정보가 수집될 수 있으며,
 중고나라에서 제공하는 위치기반 서비스에 대해서는 '중고나라 위치정보 이용약관'에서 자 
 세하게 규정하고 있습니다.

 이와 같이 수집된 정보는 개인정보와의 연계 여부 등에 따라 개인정보에 해당할 수 있고, 개인정보에 해당하지 않을 수도 있습니다.
        	
        	                              2. 수집한 개인정보의 이용
  중고나라 및 중고나라 관련 제반 서비스(모바일 웹/앱 포함)의 회원관리, 서비스 개발・제공 
  및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.
    		
 - 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 
   확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다. 	  
 - 콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용 
   기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사 등에 기반 
   한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인 
   정보를 이용합니다.

  - 법령 및 중고나라 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포 
    함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정 
    거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 
    보호 및 서비스 운영을 위하여 개인정보를 이용합니다.

 - 유료 서비스 제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 
    개인정보를 이용합니다.
        	
 - 이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보 
    를 이용합니다.

 - 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 
    맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.
        	
 - 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축 
   을 위해 개인정보를 이용합니다.
    		
    	
    		                              3. 개인정보의 보관기간
 회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체없이 파기하고 있습니다.
 단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기 
 간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.
 이용자에게 개인정보 보관기간에 대해 회원가입 시 또는 서비스 가입 시 동의를 얻은 경우는 
 아래와 같습니다.
         	
- 부정 가입 및 이용 방지
  부정 이용자의 가입인증 휴대전화번호 또는 DI (만14세 미만의 경우 법정대리인DI) : 탈퇴일 
  로부터 6개월 보관 탈퇴한 이용자의 휴대전화번호(복호화가 불가능한 일방향 암호화(해시 
  처리)) : 탈퇴일로부터 6개월 보관
  전자상거래 등에서의 소비자 보호에 관한 법률, 전자금융거래법, 통신비밀보호법 등 법령에 
  서 일정기간 정보의 보관을 규정하는 경우는 아래와 같습니다.
            			
  중고나라는 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 본 정보를 다른 목적으 
  로는 절대 이용하지 않습니다.
        			
        			
  - 전자상거래 등에서 소비자 보호에 관한 법률
    계약 또는 청약철회 등에 관한 기록: 5년 보관
    대금결제 및 재화 등의 공급에 관한 기록: 5년 보관
    소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관
            			
  - 전자문서 및 전자거래 기본법
     공인전자주소를 통한 전자문서 유통에 관한 기록 : 10년 보관
            			
  - 통신비밀보호법
      로그인 기록: 3개월
            		
              			
 참고로 중고나라는 ‘개인정보 유효기간제’에 따라 1년간 서비스를 이용하지 않은 회원의 개 
 인정보를 별도로 분리 보관하여 관리하고 있습니다.
        			    			
    			    4. 개인정보 수집 및 이용 동의를 거부할 권리
 이용자는 개인정보의 수집 및 이용 동의를 거부할 권리가 있습니다. 회원가입 시 수집하는 
 최소한의 개인정보, 즉, 필수 항목에 대한 수집 및 이용 동의를 거부하실 경우, 회원가입이 어 
 려울 수 있습니다.	
            </textarea>
            <p>
                <input type="checkbox" id="Agree_01"  name="중고나라" > 위 이용약관에 동의 합니다.<br><br>
            </p>
                        
            <h3 align="center" style="color:black; font-weight:bold;" readonly>개인정보 약관 동의</h3> <br>
            <textarea style="font-size:1em;">
 "중고 나라" 서비스를 이용하시거나 중고 나라 서비스 회원으로 가입하실 경우 
  여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로,잠시 시간을 내시어 주 
  의 깊게 살펴봐 주시기 바랍니다.
        
 "중고 나라"는 "중고 나라"를 비롯한 중고 나라 도메인의 웹사이트 및 응용프로그램을 통해 정보 검색, 다른 이용자와의 커뮤니케이션, 콘텐츠 제공, 상품 쇼핑 등 여러분의 생활에 편리함을 더할 수 있는 다양한 서비스를 제공하고 있습니다.
        		
  여러분은 PC, 휴대폰 등 인터넷 이용이 가능한 각종 단말기를 통해 각양각색의 "중고 나라" 
  서비스 를 자유롭게 이용하실 수 있으며, 개별 서비스들의 구체적인 내용은 각 서비스 상의 
  안내, 공지사항,중고 나라 웹고객센터 (이하 ‘고객센터’) 도움말 등에서 쉽게 확인하실 수 있 
  습니다.
  
  중고 나라는 기본적으로 여러분 모두에게 동일한 내용의 서비스를 제공합니다.
  다만, '청소년보호법' 등 관련 법령이나 기타 개별 서비스 제공에서의 특별한 필요에 의해서 
  연령 또는 일정한 등급을 기준으로 이용자를 구분하여 제공하는 서비스의 내용, 이용 시간, 
  이용 횟수 등을 다르게 하는 등 일부 이용을 제한하는 경우가 있습니다.
  
  자세한 내용은 역시 각 서비스 상의 안내, 공지사항, 고객센터 도움말 등에서 확인하실 수 있 
  습니다.
   	 			
  중고 나라 서비스에는 기본적으로 본 약관이 적용됩니다만 중고 나라가 다양한 서비스를 제 
  공하는 과정에서 부득이 본 약관 외 별도의 약관, 운영정책 등을 적용하는 경우가 있습니다.
  
  그리고 중고 나라 계열사가 제공하는 특정 서비스의 경우에도 해당 운영 회사가 정한 고유 
  의 약관, 운영정책 등이 적용될 수 있습니다.
  이러한 내용은 각각의 해당 서비스 초기 화면에서 확인해 주시기 바랍니다.         
            </textarea>
            <p>
            <input type="checkbox" id="Agree_02"  name="중고나라"> 개인이용 약관에 동의 합니다.<hr>
            </p>
            <p>
            <input type="checkbox" id="Agree_all" name="중고나라"> 위의 약관에 모두 동의 합니다.<br /><br />
           	</p>
           <div class="container">
           		<div class="col-sm-2"></div>
           			<div class="col-sm-6">
           				<input type="button" id="nextBtn"  class="btn btn-success btn-lg" onClick="location.href='Join/JoinPage'"  value="회원가입"/>
                		<input type="button" id="homeBtn"  class="btn btn-primary btn-lg" onClick="location.href='/'" value="홈으로"/>
           			</div>
           	</div>	           		    
      
        </form>
    </div>    
</article>
					
</body>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

  <script type="text/javascript">
  function checkResult() {
		var checked1 = $('#Agree_01').is(':checked');
		var checked2 = $('#Agree_02').is(':checked');
		var checked3 = $('#Agree_all').is(':checked');
		var checkedAll = $('#allCk').is(':checked');

		alert("체크결과 : " + checked1 + ":" + checked2 + ":" + checked3 + ":" + checkedAll);
		
		if(checked1 == true && checked2 == true) {
			//alert("1, 2번 체크");
		} else {
			alert("약관 모두 동의 해 주세요");
		}
		
	} 

	document.getElementById('nextBtn').onclick = function() {
		var checked1 = $('#Agree_01').is(':checked');
		var checked2 = $('#Agree_02').is(':checked');

		if(checked1 == true && checked2 == true) {
			document.getElementById('JoinArticle').submit();
			return false;
		} else {
			alert("약관에 모두 동의하셔야 회원가입을 하실 수 있습니다");
		}
	}

  $('#Agree_all').click(function(){
	  		
		var checked = $('#Agree_all').is(':checked');
		//$('#Agree_all').prop('checked',!checked);
		var checked1 = $('#Agree_01').is(':checked');
		var checked2 = $('#Agree_02').is(':checked');
		
		if(checked) {
			  alert("약관 모두를 선택하셨습니다.");
			$('input:checkbox').prop('checked',true);
			document.getElementById('nextBtn').onclick = function() {
				document.getElementById('JoinArticle').submit();
				return false;
			}
		} else {
			$('input:checkbox').prop('checked',false);
			  alert("약관에 모두 동의하셔야 회원가입을 하실 수 있습니다.");
			  
		}
	});
  

    </script>

</html>