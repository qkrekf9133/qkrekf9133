<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
	<title>Thymeleaf3</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<%@ include file="include/layout.jsp" %>

</head>
<body>

<div class="container">
	
	<%@ include file="include/topmenu.jsp" %>
	<div class="intro">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="myCarousel" data-slide-to="1"></li>
			<li data-target="myCarousel" data-slide-to="2"></li>
		</ol>
		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">  
				<!-- class="img-responsive center-block" => 반응형 이미지를 가운데에 정렬한다. -->
				<img class="img-responsive center-block" src="/../../resources/images/intro1.jpg"/>
				<!-- carousel에 설명을 달아준다. -->
				<div class="carousel-caption">
					
				</div>
			</div>
			<div class="item">
				<!-- class="img-responsive center-block" => 반응형 이미지를 가운데에 정렬한다. -->
				<img class="img-responsive center-block" src="/../../resources/images/intro2.jpg"/>
				<!-- carousel에 설명을 달아준다. -->
				<div class="carousel-caption">
					
				</div>
			</div>
			<div class="item">
				<!-- class="img-responsive center-block" => 반응형 이미지를 가운데에 정렬한다. -->
				<img class="img-responsive center-block" src="/../../resources/images/intro3.jpg"/>
				<!-- carousel에 설명을 달아준다. -->
				<div class="carousel-caption">
					
				</div>
			</div>
		</div>
		
		<!-- 좌측, 우측으로 그림을 움직일 수 있도록 좌, 우 버튼을 설정한다. -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"  aria-hidden="true"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			</a>
		
	</div>
</div>

	<div class="main-item-box">
		<div class="main-prd-list">
		
		
			<div class="main-prd-box" >
				<a class="link-prod" href="#"></a>
					<img src="/../../resources/images/used1.jpg" class="main-prd-item-img" /> <!-- 상품이미지 -->
					<ul class="main-prd-item">
						<li class="prd-item-company">subject</li> <!-- 제조사 -->
						<li class="prd-item-price">가격</li> <!-- 가격 -->
						<li class="prd-item-soldCount">판매량</li> <!-- 판매량 default = 0 -->
					</ul>
			</div>
				
			<div class="main-prd-box" >
				<a class="link-prod" href="#"></a>
					<img src="/../../resources/images/used1.jpg" class="main-prd-item-img" /> <!-- 상품이미지 -->
					<ul class="main-prd-item">
						<li class="prd-item-company">subject</li> <!-- 제조사 -->
						<li class="prd-item-price">가격</li> <!-- 가격 -->
						<li class="prd-item-soldCount">판매량</li> <!-- 판매량 default = 0 -->
					</ul>
			</div>
			
				
			<div class="main-prd-box" >
				<a class="link-prod" href="#"></a>
					<img src="/../../resources/images/used1.jpg" class="main-prd-item-img" /> <!-- 상품이미지 -->
					<ul class="main-prd-item">
						<li class="prd-item-company">subject</li> <!-- 제조사 -->
						<li class="prd-item-price">가격</li> <!-- 가격 -->
						<li class="prd-item-soldCount">판매량</li> <!-- 판매량 default = 0 -->
					</ul>
			</div>
			
				
			<div class="main-prd-box" >
				<a class="link-prod" href="#"></a>
					<img src="/../../resources/images/used1.jpg" class="main-prd-item-img" /> <!-- 상품이미지 -->
					<ul class="main-prd-item">
						<li class="prd-item-company">subject</li> <!-- 제조사 -->
						<li class="prd-item-price">가격</li> <!-- 가격 -->
						<li class="prd-item-soldCount">판매량</li> <!-- 판매량 default = 0 -->
					</ul>
			</div>
			
				
			<div class="main-prd-box" >
				<a class="link-prod" href="#"></a>
					<img src="/../../resources/images/used1.jpg" class="main-prd-item-img" /> <!-- 상품이미지 -->
					<ul class="main-prd-item">
						<li class="prd-item-company">subject</li> <!-- 제조사 -->
						<li class="prd-item-price">가격</li> <!-- 가격 -->
						<li class="prd-item-soldCount">판매량</li> <!-- 판매량 default = 0 -->
					</ul>
			</div>
			
				
			<div class="main-prd-box" >
				<a class="link-prod" href="#"></a>
					<img src="/../../resources/images/used1.jpg" class="main-prd-item-img" /> <!-- 상품이미지 -->
					<ul class="main-prd-item">
						<li class="prd-item-company">subject</li> <!-- 제조사 -->
						<li class="prd-item-price">가격</li> <!-- 가격 -->
						<li class="prd-item-soldCount">판매량</li> <!-- 판매량 default = 0 -->
					</ul>
			</div>
			
				
			<div class="main-prd-box" >
				<a class="link-prod" href="#"></a>
					<img src="/../../resources/images/used1.jpg" class="main-prd-item-img" /> <!-- 상품이미지 -->
					<ul class="main-prd-item">
						<li class="prd-item-company">subject</li> <!-- 제조사 -->
						<li class="prd-item-price">가격</li> <!-- 가격 -->
						<li class="prd-item-soldCount">판매량</li> <!-- 판매량 default = 0 -->
					</ul>
			</div>
			
			

	`	
			
				
		</div> <!-- <div class="main-prd-list"> end -->
			
	</div> <!-- 	<div class="main-item-box"> end  -->
	

	
	</div> <!-- <div class="container"> end  -->
		
	
	<%@ include file="include/footer.jsp" %>
</body>
</html>
