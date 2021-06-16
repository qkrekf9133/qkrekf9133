<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" 	tagdir="/WEB-INF/tags" %>

<layoutTag:layout>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상세 목록 보기</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="//code.jquery.com/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<style>
	body {
	 
	 text-align: center;
	}
	form-group {
		display: flex;
	}
	</style>
</head>
<body>

<div class="container">
	<form class="form-horizontal" method="post">
	<div class="form-group">
			<div style="text-align: center; align-item: center; justify-content: center;">
				<h2>게시글 보기</h2>
			</div>
		</div>	
		
		<div class="form-group">
			<label class="control-label col-sm-2">제  목</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" name="title" maxlength="50" value="${view.title}" readonly="readonly"/>
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-sm-2">글쓴이</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" name="writer" maxlength="30" value="${view.writer}" readonly="readonly"/>
			</div>
		</div>
		
		
		<%-- <div class="form-group">
			<label class="control-label col-sm-2">내  용</label>
			<div class="col-sm-8">
				<textarea rows="10" cols="100" name="content" readonly="readonly">${view.content}</textarea>
			</div>
		</div> --%>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-7">
				<textarea rows="15" cols="110" readonly="readonly">${view.content}</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">작성날짜</label>
			<div class="col-sm-8">
				<input type="text" class="form-control" name="regDate" 
				value="<fmt:formatDate value="${view.regdate}" pattern="yyyy-MM-dd HH시 MM분"/>" readonly="readonly"/>
			</div>
		</div>
		
		<div class="form-group">
			<div>
				<a class="btn btn-primary" href="/board/update?bno=${view.bno}">수정</a>&nbsp;&nbsp;
				<a class="btn btn-danger"  href="/board/delete?bno=${view.bno}">삭제</a>
			</div>
		</div>
	</form>
	
	<!-- 댓글을 입력하는 영역 -->
	<div class="container">
		<label for="comment">댓글</label>
		<form name="commentInsertForm">
			<div class="input-group">
				<input type="hidden" name="bno" value="${view.bno}"/>
				<input type="text" class="form-control" id="content" name="content" placeholder="댓글을 입력하십시오"/>
				<span class="input-group-btn">
					<button class="btn btn-warning" id="btn-comment" type="button" name="commentInsertBtn">등록</button>
				</span>
			</div>
		</form>
	</div>
	
	<!-- 저장된 댓글을 보여주는 영역 -->
	<div class="container">
		<div class="commentList"></div>
	</div>
	
</div>

<!-- 댓글 목록 -->
<%@ include file="commentAction.jsp" %> 

</body>
<script>
$(function() {
	$('#btn-delete').click(function(){
		if(confirm("삭제하시겠습니까?")) {
			self.location.href = "/board/delete?bno=${boardVO.bno}";
		}
	})
})



</script>


</html>

</layoutTag:layout>




    