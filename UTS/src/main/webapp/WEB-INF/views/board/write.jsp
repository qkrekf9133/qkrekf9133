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

<!-- 	<h1 style="color: blue; font-weight: bold; font-size: 2em;">게시글 작성하기</h1>
<div class="container" style="display:flex;">
	<form class="form-horizontal form-group" style="width: 100%; align-items: center; justify-content: center;">
		<div class="form-group">
			<h4 class="col-sm-2">제목<span>*</span></h4>
			<div class="col-sm-10 " >
				<input class="col-sm-5" type="text" placeholder="상품 제목을 입력해 주세요." style="margin-top: 8px" />
			</div>
		</div>
		
		<div class="form-group board">
			<textarea class="col-sm-8" placeholder="상품 설명을 해주세요" style="height=500px" ></textarea>
		</div>
	</form> -->
<div class="container">
	<h2 style="text-align=center">게시글 작성</h2><hr>
	<form class="form-horizontal" method="post" style="padding:0; align-items: center; justify-content: center;" enctype="multipart/form-data">
		<div class="form-group">
			<label class="control-label col-sm-2">제  목</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="title" maxlength="50" placeholder="Enter Title"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">작성자</label>
			<div class="col-sm-9">
				<input type="text" class="form-control" name="writer" maxlength="50" value="${member.nickname}" readonly/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2">내  용</label>
			<div class="col-sm-9">
				<textarea rows="20" style="width: 100%;" name="content">
				</textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-2"> 사진추가 </label>
				<input type="file" id="files" name="files" style="padding-left: 10px" 
				accept="image/jpg, image/jpeg, image/png"  onchange="readURL(this);" multiple/>
				<img id="blah" src="#" alt="your image" />
		</div>
		<div class="form-group">
			<div class="">
				<button type="reset"  class="btn btn-warning btn-sm">취소</button>
				<button type="submit" class="btn btn-primary btn-sm">작성</button>
			</div>
		</div>
		</form>
	</div>


</body>
<script>

function readURL(input) {
	
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#blah').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
}
/* //파일용량을 계산하는 함수
function uploadFileSizeCheck() {
    if(document.getElementById("files").value != "") {
	    var fileSize = document.getElementById("files").files[0].size;
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
} */
</script>


</html>

</layoutTag:layout>




    