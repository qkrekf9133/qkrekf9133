<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="layoutTag" 	tagdir="/WEB-INF/tags" %>
<layoutTag:layout>
<head>
	<title>Thymeleaf3</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	
<style>

.ptype{
	font: italic bold 1.5em/1em Georgia, serif ;
	padding : 20px
	
}

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

.dtlinfo-list1{
 padding : 15px;
}

.button-list-btn{
	width : 30%;
 
	padding: 20px
}

.content-box-buttonbox{
    display: flex;
    height: 20px;
  
}
.content-box-button1, .content-box-button2{
	    flex: 1 1 0%;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    display: flex;
    border-top: 1px solid rgb(33, 33, 33);
    border-right: 1px solid rgb(33, 33, 33);
    border-bottom: 1px solid rgb(255, 255, 255);
    background: rgb(255, 255, 255);
    color: rgb(33, 33, 33);
    font-weight: 600;
}

.content-box-content{
	width : 100%;
	
}

.content-box-dtl1, .content-box-dtl2{
    width : 100%;
    font-size: 50px;
     display: block;
	}


.content-box-dtl2{
	 display: none;
	}
	
	
.item{
  text-align: center;
}	
.img-responsive{
	width: 100%;
    height: 100%;
  
    
	}

</style>


</head>
<body>

<div class="container">
	

	
	
	<div class="col-sm-12 ptype" style="padding-top: 100px">
	 ${detail.ptype}
	</div>
	
	<div class="main-info" style="padding-top: 100px">
		<div class="col-sm-5" style="width: 400px; height: 400px; ">
		
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
				<img class="img-responsive center-block" src="/../../../resources/uploadimg/${photodetail.photoname}" style="height: 100%;"/>
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
			<div class="col-sm-offset-3 col-sm-6">${detail.ppriceinfo}</div>
			<hr style="border: solid 1px gray">
		</div>
			<div class="dtlinfo">
			<div>
				<div class="col-sm-2">찜버튼</div>
				<div class="col-sm-2" >조회수 버튼</div>
				<div class="col-sm-2"></div>
				<div class="col-sm-6">4</div>
			</div>	
				<div class="dtlinfo-list" style="padding-top:30px;">
					
					<div class="dtlinfo-list1">
						<div class="col-sm-4">
							제품상태 : 
						</div>
						<div class="col-sm-6">
							${detail.pcondition} 
						</div>
					</div>
					<div class="dtlinfo-list1">
						<div class="col-sm-4">
							교환여부 : 
						</div>
						<div class="col-sm-6">
							${detail.pexchange} 
						</div>
					</div>
					
					<div class="dtlinfo-list1">
						<div class="col-sm-4">
							거래지역 : 
						</div>
						<div class="col-sm-6">
							${detail.plocation} 
						</div>
					</div>
				</div>
			</div>
			<div class="button-list col-sm-12" style="padding-top:20px;" >
			
				<button type="button" class="button-list-btn btn btn-info btn-lg ">찜</button>
				<button type="button" class="button-list-btn btn btn-warning btn-lg">연락하기</button>
				<button type="button" class="button-list-btn btn btn-danger btn-lg">구입하기</button>
			</div>						
		</div> <!-- class="col-sm-7" 끝 -->
		</div><!-- main-info 끝 --> 
		<div class="main-content col-sm-12">
			<div class="content-box">
				<div id="col-sm-12 content-box-buttonbox ">
					<button class="col-sm-4 content-box-button1 ">상품설명</button>
					<button class="col-sm-4 content-box-button2 ">상품문의</button>
				 </div>
				 <div class="col-sm-12 content-box-content ">
					<div class="content-box-dtl1">${detail.pcontent}</div>
					<div class="content-box-dtl2" >여기는 문의 계시판 값을 불러오는 곳입니다.</div>
				</div>	
			</div>
			
					
		</div><!-- main-content 끝 -->
		
				

	
	
	
	</div> <!-- <div class="container"> end  -->
		
	
	
	<script>
	
	function getEventTarget(e) {
	    e = e || window.event;
	    return e.target || e.srcElement; 
	}
	
	$("content-box-buttonbox").click(function(){   	
		  		 
		alert("파일을 등록합니다.");
		     if($('content-box-dtl2').css("display") == "none"){
		    	  $('.content-box-dtl1').hide();
		    	 $('.content-box-dtl2').show();   	 
		    	 }			
		});
	
	
	
	
	
	
	
</script>

</body>
</html>
</layoutTag:layout>