<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
	<title>Thymeleaf3</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	
	<%@ include file="../include/layout.jsp" %>

</head>
<body>

<div class="container">
		<%@ include file="../include/topmenu.jsp" %>

		
	<form class="form-horizontal" name = "regproductForm" action="/regproduct/regproductinsert"  method="post">
			<div>
				<h2 style="padding-left: 30px;">기본정보
					<span style="font-size: 2rem;  color: rgb(255, 80, 88);">*필수사항</span>
				</h2>
			</div>
			<hr style="border: solid 1px">
		 <div class="form-group">
			<ul>
			 <li>
			 	<h4 class="col-sm-2">
			 		상품이미지<span>*</span>
			 	</h4>
			 	<div class="col-sm-10">
			 		<ul class="prd-photo1">
			 			<li class="prd-photo" >
			 				"이미지 등록"
			 				
			 				<input id="uploadFile" type="file" id="image"accept="image/jpg, image/jpeg, image/png"  onchange="setThumbnail(event);" multiple>
			 				
			 			</li>
		 				<li id="image_container"></li>
			 		</ul>
		 				<div class="prd-dti">
		 					- 상품 이미지는 640x640에 최적화 되어 있습니다.<br>
							- 이미지는 상품등록 시 정사각형으로 짤려서 등록됩니다.<br>
							- 이미지를 클릭 할 경우 원본이미지를 확인할 수 있습니다.<br>
							- 이미지를 클릭 후 이동하여 등록순서를 변경할 수 있습니다.<br>
							- 큰 이미지일경우 이미지가 깨지는 경우가 발생할 수 있습니다.<br>
							최대 지원 사이즈인 640 X 640 으로 리사이즈 해서 올려주세요.(개당 이미지 최대 10M)
		 				</div>
			 		
			 	</div>
			 </li>	
			  
			</ul>
		</div>
		<hr style="border: solid 1px gray">
	
		 		
		<div class="form-group">
			<h4 class="col-sm-2">제목<span>*</span></h4>
			<div class="col-sm-10 " >
				<input class="col-sm-5" type="text" name = "psubject" placeholder="상품 제목을 입력해 주세요." style="margin-top: 8px" />
			</div>
		
		</div>
		
		<hr style="border: solid 1px gray">
	
		 		
		<div class="form-group">
			<h4 class="col-sm-2">카테고리<span>*</span></h4>
			<div class="col-sm-8 prd-ctgl">
					<div class="col-sm-4 prd-ctgl-dti">
						<ul id="prd-ctgl-dti-0">
							<li><button type="button" class="btn btn-light" id="prd-ctgl-dti1">여성의류</button></li>
							<li><button type="button" class="btn btn-light" id="prd-ctgl-dti2">패션잡화</button></li>
							<li><button type="button" class="btn btn-light" id="prd-ctgl-dti3">남성의류</button></li>
							<li><button type="button" class="btn btn-light" id="prd-ctgl-dti4">디지털/가전</button></li>
							<li><button type="button" class="btn btn-light" id="prd-ctgl-dti5">도서/티켓/취미/반려</button></li>
							<li><button type="button" class="btn btn-light" id="prd-ctgl-dti6">스타굿즈</button></li>
							<li><button type="button" class="btn btn-light" id="prd-ctgl-dti7">생활/문구/가구/식품</button></li>
							<li><button type="button" class="btn btn-light" id="prd-ctgl-dti8">스포츠/레저</button></li>
							<li><button type="button" class="btn btn-light" id="prd-ctgl-dti9">뷰티/미용</button></li>
							<li><button type="button" class="btn btn-light" id="prd-ctgl-dti10">유아동/출산</button></li>
							<li><button type="button" class="btn btn-light" id="prd-ctgl-dti11">차량/오토바이</button></li>
						</ul>						
					</div>
					
					<div class="col-sm-4 prd-ctgl-dti-1">
								 
						<ul id="prd-ctgl0">							
							<li><button type="button" class="btn btn-light">원피스</button></li>
							<li><button type="button" class="btn btn-light">스커트/치마</button></li>
							<li><button type="button" class="btn btn-light">자켓</button></li>
							<li><button type="button" class="btn btn-light">니트/스웨터</button></li>
							<li><button type="button" class="btn btn-light">블라우스</button></li>
							<li><button type="button" class="btn btn-light">야상/점퍼/패딩</button></li>
							<li><button type="button" class="btn btn-light">코트</button></li>
							<li><button type="button" class="btn btn-light">반팔 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">맨투맨/후드티</button></li>
							<li><button type="button" class="btn btn-light">가디건</button></li>
							<li><button type="button" class="btn btn-light">청바지/스키니(긴)</button></li>
							<li><button type="button" class="btn btn-light">면/캐주얼 바지(긴)</button></li>
							<li><button type="button" class="btn btn-light">스커트/치마</button></li>
						 </ul>		
						<ul id="prd-ctgl1">	
							<li><button type="button" class="btn btn-light">여성가방</button></li>
							<li><button type="button" class="btn btn-light">스니커즈</button></li>
							<li><button type="button" class="btn btn-light">주얼리/액세서리</button></li>
							<li><button type="button" class="btn btn-light">여성화</button></li>
							<li><button type="button" class="btn btn-light">지갑</button></li>
							<li><button type="button" class="btn btn-light">모자</button></li>
							<li><button type="button" class="btn btn-light">벨트/장갑/스타킹/기타</button></li>
							<li><button type="button" class="btn btn-light">남성화</button></li>
							<li><button type="button" class="btn btn-light">시계</button></li>
							<li><button type="button" class="btn btn-light">남성가방</button></li>
							<li><button type="button" class="btn btn-light">인경/선글라스</button></li>
							<li><button type="button" class="btn btn-light">여행용가방/소품</button></li>
						</ul>
						<ul  id="prd-ctgl2">	
							<li><button type="button" class="btn btn-light">점퍼/야상/패딩</button></li>
							<li><button type="button" class="btn btn-light">맨투맨/후드티</button></li>
							<li><button type="button" class="btn btn-light">반팔 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">자켓</button></li>
							<li><button type="button" class="btn btn-light">셔츠/남방</button></li>
							<li><button type="button" class="btn btn-light">트레이닝</button></li>
							<li><button type="button" class="btn btn-light">청바지(긴)</button></li>
							<li><button type="button" class="btn btn-light">니트/스웨처</button></li>
							<li><button type="button" class="btn btn-light">야상/점퍼/패딩</button></li>
							<li><button type="button" class="btn btn-light">코트</button></li>
							<li><button type="button" class="btn btn-light">긴팔 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">반바지/7~9부</button></li>
							<li><button type="button" class="btn btn-light">조끼/베스트</button></li>
							<li><button type="button" class="btn btn-light">가디건</button></li>
							<li><button type="button" class="btn btn-light">비즈니스 정장</button></li>
							<li><button type="button" class="btn btn-light">테마/이벤트 의류</button></li>
							<li><button type="button" class="btn btn-light">언더웨어/속옷</button></li>
							<li><button type="button" class="btn btn-light">빅사이즈</button></li>
						</ul>							
						<ul id="prd-ctgl3">
							<li><button type="button" class="btn btn-light">모바일</button></li>
							<li><button type="button" class="btn btn-light">가전베품</button></li>
							<li><button type="button" class="btn btn-light">음반/영상/관련기기</button></li>
							<li><button type="button" class="btn btn-light">PC/모니터/주변기기</button></li>
							<li><button type="button" class="btn btn-light">게임/타이틀</button></li>
							<li><button type="button" class="btn btn-light">노트북/넷북</button></li>
							<li><button type="button" class="btn btn-light">카메라/DSLR</button></li>
						</ul>
						<ul id="prd-ctgl4">
							<li><button type="button" class="btn btn-light">취미/키덜트</button></li>
							<li><button type="button" class="btn btn-light">도서/책</button></li>
							<li><button type="button" class="btn btn-light">희귀/수집품</button></li>
							<li><button type="button" class="btn btn-light">점퍼/야상/패딩</button></li>
							<li><button type="button" class="btn btn-light">반려동물용품</button></li>
							<li><button type="button" class="btn btn-light">기프티콘/쿠폰</button></li>
							<li><button type="button" class="btn btn-light">예술/악기/수공예품</button></li>
							<li><button type="button" class="btn btn-light">상품권</button></li>
							<li><button type="button" class="btn btn-light">티켓/항공권</button></li>
						</ul>
						<ul id="prd-ctgl5">							
							<li><button type="button" class="btn btn-light">보이그룹</button></li>
							<li><button type="button" class="btn btn-light">걸그룹</button></li>
							<li><button type="button" class="btn btn-light">솔로(남)</button></li>
							<li><button type="button" class="btn btn-light">코트</button></li>
							<li><button type="button" class="btn btn-light">긴팔 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">반바지/7~9부</button></li>
						</ul>
						<ul id="prd-ctgl6">
							<li><button type="button" class="btn btn-light">조끼/베스트</button></li>
							<li><button type="button" class="btn btn-light">가디건</button></li>
							<li><button type="button" class="btn btn-light">비즈니스 정장</button></li>
							<li><button type="button" class="btn btn-light">테마/이벤트 의류</button></li>
							<li><button type="button" class="btn btn-light">언더웨어/속옷</button></li>
							<li><button type="button" class="btn btn-light">빅사이즈</button></li>
						</ul>
						
						<ul id="prd-ctgl7">
							<li><button type="button" class="btn btn-light">베스트</button></li>
							<li><button type="button" class="btn btn-light">가건</button></li>
							<li><button type="button" class="btn btn-light">비니스 정장</button></li>
							<li><button type="button" class="btn btn-light">테/이벤트 의류</button></li>
							<li><button type="button" class="btn btn-light">언웨어/속옷</button></li>
							<li><button type="button" class="btn btn-light">빅사이즈</button></li>
						</ul>
						
						<ul id="prd-ctgl8">
							<li><button type="button" class="btn btn-light">조끼/베스트</button></li>
							<li><button type="button" class="btn btn-light">가디건</button></li>
							<li><button type="button" class="btn btn-light">비즈니스 정장</button></li>
							<li><button type="button" class="btn btn-light">테마/이벤트 의류</button></li>
							<li><button type="button" class="btn btn-light">언더웨어/속옷</button></li>
							<li><button type="button" class="btn btn-light">빅사이즈</button></li>
						</ul>
							
						<ul id="prd-ctgl8">
							<li><button type="button" class="btn btn-light">조끼/베스트</button></li>
							<li><button type="button" class="btn btn-light">가디건</button></li>
							<li><button type="button" class="btn btn-light">비즈니스 정장</button></li>
							<li><button type="button" class="btn btn-light">테마/이벤트 의류</button></li>
							<li><button type="button" class="btn btn-light">언더웨어/속옷</button></li>
							<li><button type="button" class="btn btn-light">빅사이즈</button></li>
						</ul>		
						
						<ul id="prd-ctgl9">
							<li><button type="button" class="btn btn-light">조끼/베스트</button></li>
							<li><button type="button" class="btn btn-light">가디건</button></li>
							<li><button type="button" class="btn btn-light">비즈니스 정장</button></li>
							<li><button type="button" class="btn btn-light">테마/이벤트 의류</button></li>
							<li><button type="button" class="btn btn-light">언더웨어/속옷</button></li>
							<li><button type="button" class="btn btn-light">빅사이즈</button></li>
						</ul>	
						
						<ul id="prd-ctgl10">
							<li><button type="button" class="btn btn-light">조끼/베스트</button></li>
							<li><button type="button" class="btn btn-light">가디건</button></li>
							<li><button type="button" class="btn btn-light">비즈니스 정장</button></li>
							<li><button type="button" class="btn btn-light">테마/이벤트 의류</button></li>
							<li><button type="button" class="btn btn-light">언더웨어/속옷</button></li>
							<li><button type="button" class="btn btn-light">빅사이즈</button></li>
						</ul>	
					
					</div>
					
					<div class="col-sm-4 prd-ctgl-dti-2">
						<ul id="prd-ctgl11">
							<li><button type="button" class="btn btn-light">보이그룹</button></li>
							<li><button type="button" class="btn btn-light">걸그룹</button></li>
							<li><button type="button" class="btn btn-light">솔로(남)</button></li>
							<li><button type="button" class="btn btn-light">코트</button></li>
							<li><button type="button" class="btn btn-light">긴팔 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">반바지/7~9부</button></li>
						</ul>
						<ul id="prd-ctgl12">
							<li><button type="button" class="btn btn-light">조끼/베스트</button></li>
							<li><button type="button" class="btn btn-light">가디건</button></li>
							<li><button type="button" class="btn btn-light">비즈니스 정장</button></li>
							<li><button type="button" class="btn btn-light">테마/이벤트 의류</button></li>
							<li><button type="button" class="btn btn-light">언더웨어/속옷</button></li>
							<li><button type="button" class="btn btn-light">빅사이즈</button></li>
						</ul>
						<ul id="prd-ctgl13">
							<li><button type="button" class="btn btn-light">보이그룹</button></li>
							<li><button type="button" class="btn btn-light">걸그룹</button></li>
							<li><button type="button" class="btn btn-light">솔로(남)</button></li>
							<li><button type="button" class="btn btn-light">코트</button></li>
							<li><button type="button" class="btn btn-light">긴팔 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">반바지/7~9부</button></li>
						</ul>
						<ul id="prd-ctgl14">	
							<li><button type="button" class="btn btn-light">조끼/베스트</button></li>
							<li><button type="button" class="btn btn-light">가디건</button></li>
							<li><button type="button" class="btn btn-light">비즈니스 정장</button></li>
							<li><button type="button" class="btn btn-light">테마/이벤트 의류</button></li>
							<li><button type="button" class="btn btn-light">언더웨어/속옷</button></li>
							<li><button type="button" class="btn btn-light">빅사이즈</button></li>
						</ul>
						<ul id="prd-ctgl15">	
							<li><button type="button" class="btn btn-light">보이그룹</button></li>
							<li><button type="button" class="btn btn-light">걸그룹</button></li>
							<li><button type="button" class="btn btn-light">솔로(남)</button></li>
							<li><button type="button" class="btn btn-light">코트</button></li>
							<li><button type="button" class="btn btn-light">긴팔 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">반바지/7~9부</button></li>
						</ul>
						<ul id="prd-ctgl16">	
							<li><button type="button" class="btn btn-light">조끼/베스트</button></li>
							<li><button type="button" class="btn btn-light">가디건</button></li>
							<li><button type="button" class="btn btn-light">비즈니스 정장</button></li>
							<li><button type="button" class="btn btn-light">테마/이벤트 의류</button></li>
							<li><button type="button" class="btn btn-light">언더웨어/속옷</button></li>
							<li><button type="button" class="btn btn-light">빅사이즈</button></li>
						</ul>						
					</div>
											
			</div>
		
		</div>
		
		<hr style="border: solid 1px gray">
		
		<div class="form-group">
			<h4 class="col-sm-2">거래지역<span>*</span></h4>
				<div class="prd-location col-sm-8">
					<div class="prd-location-dti">
					<input type="text" class="form-control" name="plocation"
						id="address01"   placeholder="선호 거래 지역을 검색해주세요."readonly/>
					<input type="button" class="form-control" 
						onclick="daumZipCode()" value="우리 동내 검색"/>					
					</div>
			
					
				</div>
		</div>
		<hr style="border: solid 1px gray">
		
		<div class="form-group">
			<h4 class="col-sm-2">상태<span>*</span></h4>
			<div class="col-sm-10 " >
				<input type="checkbox" name="pcondition" value="미개봉" style="margin-top: 10px">미개봉
				<input type="checkbox" name="pcondition" value="신품급(개봉)" style="margin-top: 10px">신품급(개봉)
				<input type="checkbox" name="pcondition" value="사용감있음" style="margin-top: 10px">사용감있음
				<input type="checkbox" name="pcondition" value="손상있음" style="margin-top: 10px">손상있음
				<input type="checkbox" name="pcondition" value="수리내역있음" style="margin-top: 10px">수리내역있음
			</div>
		
		</div>
		
		<hr style="border: solid 1px gray">
		
			
		<div class="form-group">
			<h4 class="col-sm-2">교환<span>*</span></h4>
			<div class="col-sm-10 " >
				<input type="radio" name="pexchange" value="교환불가" style="margin-top: 10px">&nbsp;교환불가
				<input type="radio" name="pexchange" value="교환가능" style="margin-top: 10px">&nbsp;교환가능
			</div>
		
		</div>
		
		<hr style="border: solid 1px gray">
		
		<div class="form-group">
			<h4 class="col-sm-2">가격<span>*</span></h4>
			<div class="col-sm-10 " >
				<input type="text" name="pprice" style="margin-top: 10px" placeholder="희망 가격을 적어주세요">&nbsp;원
				<br>
				<input type="checkbox" name="chk_info" value="HTML" style="margin-top: 10px">&nbsp;배송비포함
				<input type="checkbox" name="chk_info" value="HTML" style="margin-top: 10px">&nbsp;가격협의 가능
			</div>
		
		</div>
		
		<hr style="border: solid 1px gray"> 
		
			<div class="form-group">
			<h4 class="col-sm-2">설명<span>*</span></h4>
			
				<textarea class="col-sm-8" placeholder="상품 설명을 해주세요" name="pcontent" ></textarea>
		
		
		</div>
		
		<hr style="border: solid 1px gray">
		
		
			<div class="form-group">
			<h4 class="col-sm-2">수량<span>*</span></h4>
			
			<input type="text" name="pquantity" style="margin-top: 10px" placeholder="수량을 설정해주세요" >&nbsp; 개
		
		
		</div>
		
		<hr style="border: solid 1px gray">
		<div class="col-sm-offset-11 col-sm-1">
			<button type='submit' class="btn btn-danger btn-lg">등록하기</button>
		</div>
	</form>
	
	
<br>
<br><br><br><br><br><br>
	
	</div> <!-- <div class="container"> end  -->
		
	
	<%@ include file="../include/footer.jsp" %>
	<script  src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>




function getEventTarget(e) {
    e = e || window.event;
    return e.target || e.srcElement; 
}

$(".prd-ctgl  ul  li").click(function(){
	
	
   var index = $(".prd-ctgl  ul  li").index(this);
   
     
     if($('#prd-ctgl'+(index)).css("display") == "none"){
   	     	 
    	 $('#prd-ctgl'+(index)).show();
   	  
      }
});

/*var ul = document.getElementById('prd-ctgl-dti-0');
ul.onclick = function(event) {
    var target = getEventTarget(event);
    
    
    
    if($('#'+(target.innerHTML)).css("display") == "none"){
 	   $('#'+(target.innerHTML)).show();
 	
    }
};*/





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
				fullAddr = data.sigungu;
			} else { //지번 주소를 선택한 경우
				fullAddr = data.sigungu;
			}

			//사용자가 선택한 주소가 도로명 타입일 때 조합한다.
			if(data.userSelectedType == 'R') {
				//법정동명이 있을 경우 추가한다.
				if(data.bname != '') {
					subAddr += data.bname;
				}
			
				
				//조합형 주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
				fullAddr += ' '+subAddr;
				
			}
			//우편번호와 주소정보를 행당 필드에 나타낸다.
			//5자리의 새 우편번호
		
			document.getElementById('address01').value = fullAddr;
			//커서를 상세주소 입력필드로 이동시킨다.
			document.getElementById('address02').focus();
		}
	}).open();
}
		




		

function setThumbnail(event) {
	var reader = new FileReader(); 
	reader.onload = function(event) { 
	
		var img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		
		//document.getElementById("uploadFile").files[0].size;

		// 선택한 파일의 용량계산을 uploadFileSizeCheck()에서 가져온다.
		var rtnValue = uploadFileSizeCheck();
		
		// 계산된 파일의 용량을 가지고 제한된 범위내이면 화면에 보여준다.
		if(rtnValue == true) {
			// 선택한 이미지를 화면에 보여주는 부분
			
			document.querySelector("li#image_container").appendChild(img);
		}
	}; 
		reader.readAsDataURL(event.target.files[0]); 
}

// 파일용량을 계산하는 함수
function uploadFileSizeCheck() {
    if(document.getElementById("uploadFile").value != "") {
	    var fileSize = document.getElementById("uploadFile").files[0].size;
	    var maxSize = 10 * 1024 * 1024; //10MB
	 
	    if(fileSize > maxSize) {
	       alert("첨부파일 사이즈는 10MB 이내로 등록하셔야 합니다.");
	       return false;
	    } else {
	    	
	       //alert("파일을 등록합니다.");
	       return true;
    	}
    }
}


function uploadimgSizeCheck() { 
	
	var maxWidth = 600; 				// Max width for the image 
	var maxHeight = 600;				// Max height for the image 
	var ratio = 0;						// Used for aspect ratio 
	var width = $(this).width();		// Current image width 
	var height = $(this).height();		// Current image height 
// Check if the current width is larger than the max 
if(width > maxWidth){
	ratio = maxWidth / width; // get ratio for scaling image 
	$(this).css("width", maxWidth); // Set new width 
	$(this).css("height", height * ratio); 	// Scale height based on ratio 
	height = height * ratio; 	// Reset height to match scaled image 
	} 
	var width = $(this).width();// Current image width 
	var height = $(this).height(); 	// Current image height 
	// Check if current height is larger than max 
	
	if(height > maxHeight){ 
		ratio = maxHeight / height; // get ratio for scaling image
		$(this).css("height", maxHeight); // Set new height 
		$(this).css("width", width * ratio); // Scale width based on ratio 
		width = width * ratio; // Reset width to match scaled image 
		}
}




	

/*
$("input[type=file]").bind( 'change', function (e) {
            if( !$(this).val() ) return;
             
            var f = this.files[0];
            var size = f.size || f.fileSize;
             
            var limit = 10000000;
                             
         //  alert( id + ' / ' + limit );
                         
            if( size > limit )
            {
                alert( '파일용량은 10mb 를 넘을수 없습니다.' );
                $(this).val('');
                return;
            }
                     
        $(this).parent().find('input[type=text]').val( $(this).val() );
})
*/


</script>
</body>
</html>
