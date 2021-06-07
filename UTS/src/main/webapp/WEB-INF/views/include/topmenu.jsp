<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		
<nav class="navbar navbar-fixed-top navbar-light bg-light mainnavbar">
	
		<div class="navbar-header ">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/">UsedTradingSlave</a>
		</div>
		<div class="navbar-body">
			<div class="form-group collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="dropdown ">
						<a class="dropdown-toggle"> 카테고리 </a>
						<ul class="dropdown-menu">
							<li><a href="/sample/sample1">여성의류</a></li>
							<li><a href="/sample/sample2">남성의류</a></li>
							<li><a href="/sample/sample3">디지털/가전</a></li>
							<li><a href="/sample/sample4">도서/티켓/취미/반려</a></li>
							<li><a href="/sample/sample5">스타굿즈</a></li>
							<li><a href="/sample/sample6">생활/문구/가구/식품</a></li>
							<li><a href="/sample/sample7">스포츠/레저</a></li>
							<li><a href="/sample/sample8">뷰티/미용</a></li>
							<li><a href="/sample/sample9">유아동/출산</a></li>
							<li><a href="/hello/hello1">기타</a></li>
							<li><a href="/hello/hello1">재능</a></li>
						    <li><a href="/hello/hello1">구인구직</a></li>
						  
						</ul>
					</li>
													
					
					
					<li class="dropdown" >
						<a class="dropdown-toggle" > 게시글</a>
						<ul class="dropdown-menu">
							<li><a href="/board/list2">게시글 목록 2</a></li>
							<li><a href="/hello/hello1">커뮤니티</a></li>
						</ul>
					</li>
			
			
					<li class="nav-item navbar-nav" >
						<a class="nav-link disabled" href="/regproduct/regproduct" >장터 등록하기</a>
					</li>	
								
				</ul>
				<form class="navbar-form navbar-right" role="search">
				<div class="input-group">
	              <input type="text" class="form-control" placeholder="Search">
		       		 <span class="input-group-btn">
		          		  <button type="submit" class="btn btn-default ">Submit</button>
		            </span>
		            </div>
		      	 </form>
			<div class="top-btn navbar-right ">
				 <a class="btn btn-success  btn-sm" href="/Logon/Login">로그인</a>
				 <a class="btn btn-primary  btn-sm" href="/Join/Joinarticle">회원가입</a>
			</div>
			</div>
			
		</div>
	
</nav>
