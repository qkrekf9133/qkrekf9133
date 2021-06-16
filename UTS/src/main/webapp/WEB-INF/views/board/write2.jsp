<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" 	tagdir="/WEB-INF/tags" %>

<layoutTag:layout>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 작성 하기</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="//code.jquery.com/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<style>
	body {
	 padding-top: 125px;
	 text-align: center;
	}
	form-group {
		display: flex;
	}
	</style>
</head>
<body>

<div class="container">
	<h2 style="text-align=center">게시글 작성</h2><hr>
	<form class="form-horizontal" method="post" enctype="multipart/form-data" style="padding:0; align-items: center; justify-content: center;">
		<div class="form-group">
			<label class="control-label col-sm-2">제  목</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="title" maxlength="50" placeholder="Enter Title"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">작성자</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="writer" maxlength="50" placeholder="Enter Writer"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">내  용</label>
			<div class="col-sm-9">
				<textarea rows="20" style="width: 100%;" name="content"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">사진추가</label>
			<div class="col-sm-3">
			<button class="btn-primary btn-sm">사진찾기</button>
			</div>
		</div>
		<div class="form-group">
				<button type="reset"  class="btn btn-warning btn-sm">취소</button>
				<button type="submit" class="btn btn-primary btn-sm">작성</button>
		</div>
	</form>
	</div>


</body>

</html>

</layoutTag:layout>




    