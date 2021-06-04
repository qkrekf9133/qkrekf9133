<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
	<title>Thymeleaf3</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<%@ include file="../include/layout.jsp" %>
<style>

.psubject{
	font-size: 24px;
	margin-bottom: 25px;
    font-weight: 600;
    line-height: 1.4; 
}

.pprice{
    font-size: 40px;
    font-weight: 500;
}

</style>


</head>
<body>

<div class="container">
	
	<%@ include file="../include/topmenu.jsp" %>
	
	<div class="main-info" style="padding-top: 100px">
		<div class="col-sm-5"style="width: 400px; height: 400px; ">
		
		 <div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="myCarousel" data-slide-to="1"></li>
			<li data-target="myCarousel" data-slide-to="2"></li>
		</ol>
		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active" >  
				<!-- class="img-responsive center-block" => 반응형 이미지를 가운데에 정렬한다. -->
				<img class="img-responsive center-block" src="/../../resources/images/dtl1.png"/>
				<!-- carousel에 설명을 달아준다. -->
				<div class="carousel-caption">
					
				</div>
			</div>
			<div class="item">
				<!-- class="img-responsive center-block" => 반응형 이미지를 가운데에 정렬한다. -->
				<img class="img-responsive center-block" src="/../../resources/images/dtl2.jpg"/>
				<!-- carousel에 설명을 달아준다. -->
				<div class="carousel-caption">
					
				</div>
			</div>
			<div class="item">
				<!-- class="img-responsive center-block" => 반응형 이미지를 가운데에 정렬한다. -->
				<img class="img-responsive center-block" src="/../../resources/images/dtl3.png"/>
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
		
		</div><!-- myCarousel 끝 -->
		
		
	</div><!-- col-sm-4 끝 -->
		<div class="col-sm-7">
		<div>
			<div class="psubject">${detail.psubject}</div>
			
			<div class="pprice"><fmt:formatNumber value="${detail.pprice}" type="number" />원</div>
			<hr style="border: solid 1px gray">
		
		</div>
		
		</div>
	</div><!-- main-info -->
	
	
	
	</div> <!-- <div class="container"> end  -->
		
	
	<%@ include file="../include/footer.jsp" %>
	
	<script>

</script>

</body>
</html>
