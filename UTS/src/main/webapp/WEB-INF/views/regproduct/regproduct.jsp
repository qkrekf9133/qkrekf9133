<%@ page session="true" %>
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

		
	<form class="form-horizontal" name = "regproductForm" action="/regproduct/regproductinsert"  method="post" enctype="multipart/form-data" >
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
			 				<input id="uploadFile" type="file" name="files" 
			 				accept="image/jpg, image/jpeg, image/png"  onchange="setThumbnail(event);" multiple/>
			 			</li>
		 				<li id="image_container"></li>
		 			</ul>
		 				<div id="file_container">
		 				</div>
		 				<div class="prd-dti">
		 					- 상품 이미지는 640x640에 최적화 되어 있습니다.<br>
							- 이미지는 상품등록 시 정사각형으로 짤려서 등록됩니다.<br>
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
	
		 		
		<div class="form-group ctgl">
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
							<li><button type="button" class="btn btn-light" id="prd-ctgl-dti11">기타</button></li>
						</ul>						
					</div>
					
					<div class="col-sm-4 prd-ctgl-dti-1">
								 
						<ul id="prd-ctgl0">							
							<li><button type="button" class="btn btn-light">원피스</button></li>
							<li><button type="button" class="btn btn-light">스커트/치마</button></li>
							<li><button type="button" class="btn btn-light">자켓</button></li>
							<li><button type="button" class="btn btn-light">블라우스</button></li>
							<li><button type="button" class="btn btn-light">니트/스웨터</button></li>
							<li><button type="button" class="btn btn-light">야상/점퍼/패딩</button></li>
							<li><button type="button" class="btn btn-light">코트</button></li>
							<li><button type="button" class="btn btn-light">반팔 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">맨투맨/후드티</button></li>
							<li><button type="button" class="btn btn-light">가디건</button></li>
							<li><button type="button" class="btn btn-light">청바지/스키니(긴)</button></li>
							<li><button type="button" class="btn btn-light">면/캐주얼 바지(긴)</button></li>
							<li><button type="button" class="btn btn-light">셔츠/남방</button></li>
							<li><button type="button" class="btn btn-light">트레이닝</button></li>
							<li><button type="button" class="btn btn-light">긴팔 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">반바지/핫팬츠</button></li>
							<li><button type="button" class="btn btn-light">조끼/베스트</button></li>
							<li><button type="button" class="btn btn-light">테마/이벤트 의류</button></li>
							<li><button type="button" class="btn btn-light">언더웨어/속옷</button></li>
							<li><button type="button" class="btn btn-light">레깅스</button></li>
							<li><button type="button" class="btn btn-light">비즈니스 정장</button></li>
							<li><button type="button" class="btn btn-light">빅사이즈</button></li>
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
							<li><button type="button" class="btn btn-light">남성가방</button></li>
							<li><button type="button" class="btn btn-light">시계</button></li>
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
							<li><button type="button" class="btn btn-light">니트/스웨터</button></li>
							<li><button type="button" class="btn btn-light">면/캐주얼 바지(긴)</button></li>
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
							<li><button type="button" class="btn btn-light">기프티콘/쿠폰</button></li>
							<li><button type="button" class="btn btn-light">반려동물용품</button></li>
							<li><button type="button" class="btn btn-light">예술/악기/수공예품</button></li>
							<li><button type="button" class="btn btn-light">상품권</button></li>
							<li><button type="button" class="btn btn-light">티켓/항공권</button></li>
						</ul>
						<ul id="prd-ctgl5">							
							<li><button type="button" class="btn btn-light">보이그룹</button></li>
							<li><button type="button" class="btn btn-light">걸그룹</button></li>
							<li><button type="button" class="btn btn-light">솔로(남)</button></li>
							<li><button type="button" class="btn btn-light">솔로(여)</button></li>
							<li><button type="button" class="btn btn-light">배우(남)</button></li>
							<li><button type="button" class="btn btn-light">기타(방송인)</button></li>
							<li><button type="button" class="btn btn-light">배우(여)</button></li>
						</ul>
						<ul id="prd-ctgl6">
							<li><button type="button" class="btn btn-light">생활용품</button></li>
							<li><button type="button" class="btn btn-light">주방용품</button></li>
							<li><button type="button" class="btn btn-light">가구</button></li>
							<li><button type="button" class="btn btn-light">식품</button></li>
						</ul>
						
						<ul id="prd-ctgl7">
							<li><button type="button" class="btn btn-light">골프</button></li>
							<li><button type="button" class="btn btn-light">축구</button></li>
							<li><button type="button" class="btn btn-light">등산/클라이밍</button></li>
							<li><button type="button" class="btn btn-light">자전거</button></li>
							<li><button type="button" class="btn btn-light">헬스/요가/필라테스</button></li>
							<li><button type="button" class="btn btn-light">캠핑</button></li>
							<li><button type="button" class="btn btn-light">수상 스포츠</button></li>
							<li><button type="button" class="btn btn-light">야구</button></li>
							<li><button type="button" class="btn btn-light">낚시</button></li>
							<li><button type="button" class="btn btn-light">기타 구기 스포츠</button></li>
							<li><button type="button" class="btn btn-light">겨울 스포츠</button></li>
							<li><button type="button" class="btn btn-light">농구</button></li>
							<li><button type="button" class="btn btn-light">볼링</button></li>
							<li><button type="button" class="btn btn-light">전동킥보드/전도휠</button></li>
							<li><button type="button" class="btn btn-light">인라인/스케이트보드</button></li>
							<li><button type="button" class="btn btn-light">배드민턴</button></li>
							<li><button type="button" class="btn btn-light">탁구</button></li>
							<li><button type="button" class="btn btn-light">테니스</button></li>
							<li><button type="button" class="btn btn-light">당구</button></li>
							
					
						</ul>
						
						<ul id="prd-ctgl9">
							<li><button type="button" class="btn btn-light">여아의류(3-6세)</button></li>
							<li><button type="button" class="btn btn-light">유아동신발/잡화</button></li>
							<li><button type="button" class="btn btn-light">교육/완구/인형</button></li>
							<li><button type="button" class="btn btn-light">남아의류(3-6세)</button></li>
							<li><button type="button" class="btn btn-light">베이비의류(0-2세)</button></li>
							<li><button type="button" class="btn btn-light">유아동용품</button></li>
							<li><button type="button" class="btn btn-light">여주니어의류(7세~)</button></li>
							<li><button type="button" class="btn btn-light">남주니어의류(7세~)</button></li>
							<li><button type="button" class="btn btn-light">기저귀/수유/이유식</button></li>
							<li><button type="button" class="btn btn-light">출산 임부용품</button></li>
						</ul>
							
						<ul id="prd-ctgl10">
						 	<li><button type="button" class="btn btn-light">타이어/휠</button></li>
						 	<li><button type="button" class="btn btn-light">차량 부품</button></li>
						 	<li><button type="button" class="btn btn-light">오토바이/스쿠터</button></li>
						 	<li><button type="button" class="btn btn-light">차량/튜닝용품</button></li>
						 	<li><button type="button" class="btn btn-light">국산차</button></li>
						 	<li><button type="button" class="btn btn-light">산업용품</button></li>
						 	<li><button type="button" class="btn btn-light">네비게이션/블랙박스</button></li>
						 	<li><button type="button" class="btn btn-light">수입차</button></li>
						 	<li><button type="button" class="btn btn-light">카오디오/영상</button></li>
						</ul>		
						
						<ul id="prd-ctgl11">
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
						<ul id="prd-ctgl00">
							<li><button type="button" class="btn btn-light">롱원피스</button></li>
							<li><button type="button" class="btn btn-light">캐주얼 원피스</button></li>
							<li><button type="button" class="btn btn-light">미니 원피스</button></li>
							<li><button type="button" class="btn btn-light">럭셔리 원피스</button></li>
							<li><button type="button" class="btn btn-light">쉬폰/레이스 원피스</button></li>
							<li><button type="button" class="btn btn-light">기타(원피스)</button></li>
							<li><button type="button" class="btn btn-light">나시/탑 원피스</button></li>
							<li><button type="button" class="btn btn-light">투피스</button></li>
							<li><button type="button" class="btn btn-light">후드/니트 원피스</button></li>
							<li><button type="button" class="btn btn-light">프린트 원피스</button></li>
							<li><button type="button" class="btn btn-light">청 원피스</button></li>
						</ul>
						<ul id="prd-ctgl01">
							<li><button type="button" class="btn btn-light">미니 스커트</button></li>
							<li><button type="button" class="btn btn-light">롱스커트</button></li>
							<li><button type="button" class="btn btn-light">기타(스커트/치마)</button></li>
							<li><button type="button" class="btn btn-light">청 스커트</button></li>
							<li><button type="button" class="btn btn-light">플리츠(주름)스커트</button></li>
							<li><button type="button" class="btn btn-light">플레어스커트</button></li>
							<li><button type="button" class="btn btn-light">모직/니트 스커트</button></li>
							<li><button type="button" class="btn btn-light">쉬폰/레이스 스커트</button></li>
						</ul>
						<ul id="prd-ctgl02">
							<li><button type="button" class="btn btn-light">기타(자켓)</button></li>
							<li><button type="button" class="btn btn-light">기본/테일러드 자켓</button></li>
							<li><button type="button" class="btn btn-light">트위드/체크 자켓</button></li>
							<li><button type="button" class="btn btn-light">가죽/라이더</button></li>
							<li><button type="button" class="btn btn-light">청/데님자켓</button></li>
						</ul>
						<ul id="prd-ctgl03">	
							<li><button type="button" class="btn btn-light">기타(블라우스)</button></li>
							<li><button type="button" class="btn btn-light">쉬폰/시스루 블라우스</button></li>
							<li><button type="button" class="btn btn-light">프릴/셔링 블라우스</button></li>
							<li><button type="button" class="btn btn-light">레이스 블라우스</button></li>
							<li><button type="button" class="btn btn-light">오프숄더 블라우스</button></li>
							<li><button type="button" class="btn btn-light">민소매/홀터넷 블라우스</button></li>
							<li><button type="button" class="btn btn-light">프린트 블라우스</button></li>
						</ul>
						<ul id="prd-ctgl04">	
							<li><button type="button" class="btn btn-light">라운드넥 니트</button></li>
							<li><button type="button" class="btn btn-light">기타(니트/스웨터)</button></li>
							<li><button type="button" class="btn btn-light">브이넥 니트</button></li>
							<li><button type="button" class="btn btn-light">폴라/터틀/하이넥니트</button></li>
							<li><button type="button" class="btn btn-light">루즈핏 니트</button></li>
							<li><button type="button" class="btn btn-light">롱 니트</button></li>
							<li><button type="button" class="btn btn-light">오프숄더 니트</button></li>
						</ul>
						<ul id="prd-ctgl05">	
							<li><button type="button" class="btn btn-light">패딩</button></li>
							<li><button type="button" class="btn btn-light">기타(야상/점퍼/패딩)</button></li>
							<li><button type="button" class="btn btn-light">바람막이</button></li>
							<li><button type="button" class="btn btn-light">야상/사파리</button></li>
							<li><button type="button" class="btn btn-light">야구점퍼/항공점퍼/블루종</button></li>
						</ul>	
						
						<ul id="prd-ctgl06">	
							<li><button type="button" class="btn btn-light">롱 코트</button></li>
							<li><button type="button" class="btn btn-light">반/하프 코드</button></li>
							<li><button type="button" class="btn btn-light">트렌치 코드</button></li>
							<li><button type="button" class="btn btn-light">기타(코트)</button></li>
							<li><button type="button" class="btn btn-light">무스탕</button></li>
							<li><button type="button" class="btn btn-light">모피</button></li>
							<li><button type="button" class="btn btn-light">케이프/망토</button></li>
						</ul>	
						<ul id="prd-ctgl07">	
							<li><button type="button" class="btn btn-light">라운드 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">기타(반팔 티셔츠)</button></li>
							<li><button type="button" class="btn btn-light">민소매/나시 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">카라 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">무지/기본 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">브이넥 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">스트라이프 티셔츠</button></li>
						</ul>	
						<ul id="prd-ctgl08">	
							<li><button type="button" class="btn btn-light">맨투맨 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">후드 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">후드 집업</button></li>
							<li><button type="button" class="btn btn-light">기타(맨투맨/후드티)</button></li>
						</ul>	
						<ul id="prd-ctgl09">	
							<li><button type="button" class="btn btn-light">브이넥 가디건</button></li>
							<li><button type="button" class="btn btn-light">기타(가디건)</button></li>
							<li><button type="button" class="btn btn-light">라운드넥 가디건</button></li>
							<li><button type="button" class="btn btn-light">롱 가디건</button></li>
							<li><button type="button" class="btn btn-light">루즈핏/밧시 가디건</button></li>
							<li><button type="button" class="btn btn-light">후드 가디건</button></li>							
						</ul>	
						<ul id="prd-ctgl010">	
							<li><button type="button" class="btn btn-light">일자 청바지</button></li>
							<li><button type="button" class="btn btn-light">스키니진</button></li>
							<li><button type="button" class="btn btn-light">기타(청바지/스키니)</button></li>
							<li><button type="button" class="btn btn-light">부츠컷 청바지</button></li>
							<li><button type="button" class="btn btn-light">하이웨스트진</button></li>
							<li><button type="button" class="btn btn-light">배기/카고/오버롤</button></li>													
						</ul>	
						<ul id="prd-ctgl011">	
							<li><button type="button" class="btn btn-light">일자바지/슬렉스</button></li>
							<li><button type="button" class="btn btn-light">통/와이드 팬츠</button></li>
							<li><button type="button" class="btn btn-light">기타(면/캐주얼 바지)</button></li>
							<li><button type="button" class="btn btn-light">점프 수트/멜빵 바지</button></li>
							<li><button type="button" class="btn btn-light">배기 팬츠</button></li>
							<li><button type="button" class="btn btn-light">하이웨스트 팬츠</button></li>
							<li><button type="button" class="btn btn-light">가죽/모직 바지</button></li>
						</ul>
						<ul id="prd-ctgl012">	
							<li><button type="button" class="btn btn-light">무지/기본 셔츠</button></li>
							<li><button type="button" class="btn btn-light">체크 셔츠</button></li>
							<li><button type="button" class="btn btn-light">기타(셔츠/남방)</button></li>
							<li><button type="button" class="btn btn-light">스트라이프 셔츠</button></li>
							<li><button type="button" class="btn btn-light">루즈핏/박시 셔츠</button></li>
							<li><button type="button" class="btn btn-light">청/데님 셔츠</button></li>
						</ul>
											
						<ul id="prd-ctgl013">	
							<li><button type="button" class="btn btn-light">트레이닝 하의</button></li>
							<li><button type="button" class="btn btn-light">트레이닝 상의</button></li>
							<li><button type="button" class="btn btn-light">트레이닝 세트</button></li>
							<li><button type="button" class="btn btn-light">기타(트레이닝)</button></li>
						</ul>	
						<ul id="prd-ctgl014">	
							<li><button type="button" class="btn btn-light">기타(긴팔 티셔츠)</button></li>
							<li><button type="button" class="btn btn-light">라운드 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">무지/기본 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">스트라이프 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">폴라 티셔츠</button></li>
							<li><button type="button" class="btn btn-light">브이넥 티셔츠</button></li>
						</ul>
						<ul id="prd-ctgl015">	
							<li><button type="button" class="btn btn-light">청 반바지</button></li>
							<li><button type="button" class="btn btn-light">기타(반바지/핫팬츠)</button></li>
							<li><button type="button" class="btn btn-light">핫 팬츠</button></li>
							<li><button type="button" class="btn btn-light">면 반바지</button></li>
							<li><button type="button" class="btn btn-light">치마 바지/큐롯 팬츠</button></li>
							<li><button type="button" class="btn btn-light">가죽/모직 반바지</button></li>
						</ul>	
						<ul id="prd-ctgl016">	
							<li><button type="button" class="btn btn-light">기타(조끼/베스트)</button></li>
							<li><button type="button" class="btn btn-light">니트 조끼</button></li>
							<li><button type="button" class="btn btn-light">퍼 조끼</button></li>
							<li><button type="button" class="btn btn-light">패딩 조끼</button></li>
							<li><button type="button" class="btn btn-light">청/데님 조끼</button></li>
						</ul>
						<ul id="prd-ctgl017">	
							<li><button type="button" class="btn btn-light"></button></li>
							<li><button type="button" class="btn btn-light"></button></li>
							<li><button type="button" class="btn btn-light"></button></li>
							<li><button type="button" class="btn btn-light"></button></li>
							<li><button type="button" class="btn btn-light"></button></li>
							<li><button type="button" class="btn btn-light"></button></li>
							<li><button type="button" class="btn btn-light"></button></li>
							<li><button type="button" class="btn btn-light"></button></li>
						</ul>	
					</div>
											
			</div>
			<div class="ctgl-type" style="width:100%;  height: 80px;  justify-content: center; display: flex; padding-top: 30px">
				<input type="text" class="ptype3" id ="ptype" name="ptype"
				id="ptype3"  placeholder="카테고리를 선택하세요"  readonly  style="width:600px;" />
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
				<input id="checkbox1" type="checkbox" name="pcondition" value="미개봉" style="margin-top: 10px">미개봉
				<input id="checkbox" type="checkbox" name="pcondition" value="신품급(개봉)" style="margin-top: 10px">신품급(개봉)
				<input id="checkbox" type="checkbox" name="pcondition" value="사용감있음" style="margin-top: 10px">사용감있음
				<input id="checkbox" type="checkbox" name="pcondition" value="손상있음" style="margin-top: 10px">손상있음
				<input id="checkbox" type="checkbox" name="pcondition" value="수리내역있음" style="margin-top: 10px">수리내역있음
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
				<input type="number" name="pprice" style="margin-top: 10px" placeholder="희망 가격을 적어주세요">&nbsp;원
				<br>
				<input type="checkbox" name="ppriceinfo" value="배송비포함" style="margin-top: 10px">&nbsp;배송비포함
				<input type="checkbox" name="ppriceinfo" value="가격협의 가능" style="margin-top: 10px">&nbsp;가격협의 가능
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
			<input type="number" name="pquantity" style="margin-top: 10px" placeholder="수량을 설정해주세요" >&nbsp; 개
		
		</div>
		<input type="hidden" name="pwriter" value="${member.nickname}" />
		
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

var element;
var element2;
var element3;
function getEventTarget(e) {
    e = e || window.event;
    return e.target || e.srcElement; 
}


$("#prd-ctgl-dti-0 li").click(function(){   	
   var index = $("#prd-ctgl-dti-0 li").index(this);
    element = $(this).text();     
     if($('#prd-ctgl'+(index)).css("display") == "none"){
    	  $('.prd-ctgl-dti-1>ul').hide();
    	  $('.prd-ctgl-dti-2>ul').hide();
    	 $('#prd-ctgl'+(index)).show();   	 
    	 }
	 document.getElementById('ptype').value = "";
     document.getElementById('ptype').value = element;
});


$(".prd-ctgl-dti-1 ul li").click(function(){	
	var index1 = $(".prd-ctgl-dti-1 ul li").index(this);
	element2 = $(this).text();	
	if($('#prd-ctgl0'+(index1)).css("display") == "none"){
		 $('.prd-ctgl-dti-2>ul').hide();
		 $('#prd-ctgl0'+(index1)).show();
		  }
	 document.getElementById('ptype').value = element + "";
	  document.getElementById('ptype').value = element  + "  >  " + element2 ;
});

$(".prd-ctgl-dti-2 ul li").click(function(){
	element3 = $(this).text();	
	 document.getElementById('ptype').value = element+"  >  "+element2+"  >  "+element3;
});

("#checkbox1").check(function(){
	
	alert("작동하네?");

	
});


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
			
		}
	}).open({
	popupName: 'post'
	});
	}
		
var productimg = [];

//파일용량을 계산하는 함수
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
		

function setThumbnail(event) {
	var reader = new FileReader(); 
	reader.onload = function(event) { 
		
 		var img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		img.setAttribute("name", "files");
		img.setAttribute("multiple","multiple");
		//document.getElementById("uploadFile").files[0].size;

		// 선택한 파일의 용량계산을 uplsoadFileSizeCheck()에서 가져온다.
		var rtnValue = uploadFileSizeCheck();
		
		// 계산된 파일의 용량을 가지고 제한된 범위내이면 화면에 보여준다.
		if(rtnValue == true) {
			// 선택한 이미지를 화면에 보여주는 부분
					
			
		document.querySelector("li#image_container").appendChild(img);
		}
	}; 
		reader.readAsDataURL(event.target.files[0]); 
}









</script>
</body>
</html>
