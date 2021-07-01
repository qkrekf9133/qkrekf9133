<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" 	tagdir="/WEB-INF/tags" %>

<layoutTag:layout>

<!DOCTYPE html>
<html>
<head>
	
	<title>게시글 목록</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	
</head>
<body>

<div class="container" style="padding-top:90px">
	<div align="center" >
		<h2>게시글 목록</h2>
	</div>
	<br>
	<table class="table table-bordered table-striped table-hover">
		<thead>
			<tr>
				<th style="display: none;">번호</th>
				<th style="width: 60%">제  목</th>
				<th style="width: 15%">작성자</th>
				<th style="width: 25%">작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">
				<tr>
					<td style="display: none;">${list.bno}</td>
					<td><a href="/board/ViewNComment?bno=${list.bno}">${list.title }</a></td>
					<td>${list.writer}</td>
					<td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd HH시MM분"/></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<button type="button" class="btn btn-primary btn-sm" onclick="location.href='/board/write'">글작성</button>
	<div class="col-sm-offset-4">
		<ul class="btn-group pagination">
		<c:if test="${pageMaker.prev}">
			<li><a href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
		</c:if>

		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
			<li><a href="list${pageMaker.makeSearch(idx)}">${idx}</a></li>
		</c:forEach>

		<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
			<li><a href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
		</c:if>
	</ul>
	</div>
	
	<%-- <div class="col-sm-offset-4">
		<ul class="btn-group pagination">
		    <c:if test="${pageMaker.prev }">
		    <li>
		        <a href='<c:url value="/board/list?page=${pageMaker.startPage-1 }"/>'><span class="glyphicon glyphicon-chevron-left"></span></a>
		    </li>
		    </c:if>
		    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
		    <li>
		        <a href='<c:url value="/board/list?page=${pageNum }"/>'><i class="fa">${pageNum }</i></a>
		    </li>
		    </c:forEach>
		    <c:if test="${pageMaker.next && pageMaker.endPage >0 }">
		    <li>
		        <a href='<c:url value="/board/list?page=${pageMaker.endPage+1 }"/>'><span class="glyphicon glyphicon-chevron-right"></span></a>
		    </li>
		    </c:if>
		</ul>
	</div> --%>
	<div class="col-sm-offset-3">
		<h3><a class="label label-info">검색조건</a></h3>
	
		<select id='searchType'>
			<option>검색종류</option>
				<option value="t" <c:if test="${pageVO.type} == 't'">selected</c:if>>제목</option>
				<option value="c" <c:if test="${pageVO.type} == 'c'">selected</c:if>>내용</option>
				<option value="w" <c:if test="${pageVO.type} == 'w'">selected</c:if>>글쓴이</option>
		</select>
	  <input type='text' id='searchKeyword' value="${pageVO.keyword}">
	  <button id='searchBtn'>Search</button> 
	</div>
</div>

<form id="formList" action="/board/list" method="get">
	<input type='hidden' name='page'	value="${result.currentPageNum}">
	<input type='hidden' name='size'	value="${result.currentPage.pageSize}">
	<input type='hidden' name='searchType' 	value="${pageVO.type}">
	<input type='hidden' name='keyword' value="${pageVO.keyword}">
</form>

</body>
<script>
$(document).ready(function() {
	
	var formObj = $("#formList");
	
	// 검색 버튼을 눌렀을 경우
	$("#searchBtn").click(function(e){
		
		var typeStr = $("#searchType").find(":selected").val();
		var keywordStr = $("#searchKeyword").val();
		
		console.log(typeStr, "" , keywordStr);
		
		alert("검색 타입" + typeStr);
		alert("검색 키워드" + keywordStr);
		
		//formObj.find("[name='type']").val(typeStr);
		formObj.find("[name='searchType']").val(typeStr);
		formObj.find("[name='keyword']").val(keywordStr);
		formObj.find("[name='page']").val("1");
		formObj.submit();
		alert("검색 타입" + typeStr);
		alert("검색 키워드" + keywordStr);
	});

});
</script>



</html>

</layoutTag:layout>




    