<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   		uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="layoutTag" 	tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">	
	<title>ID 찾기</title>
</head>
<body>

	<div class = "container">
	<form class="form-horizontal" method="POST" action="/Find/FindId">
	
		<div class="form-group">
			<div class="col-sm-2"></div>
			<div class="col-sm-6">
				<h2 align="center">ID 찾기</h2>
				<h4>아이디는 가입시 입력한 이메일을 통해 찾을 수 있습니다.</h4><hr>
			</div>
		</div>		

	<div class="form-group">
    	<div class="col-sm-2"></div>
        <div class="col-sm-6">
        	<input type="text" class="form-control" id="f_name" name= "Username" placeholder="이름을 입력해 주세요" maxlength="15">
        </div>
   </div>
   
   <div class="form-group">
    	<div class="col-sm-2"></div>
        <div class="col-sm-6">
        	<input type="text" class="form-control" id="f_email" name="Useremail" placeholder="이메일을 입력해 주세요" maxlength="15">
        </div>
   </div>
   
   <div class="row">
   		<div class= "col-sm-2"></div>
   		<div class= "col-lg-6">
   			<button type="submit" class="btn btn-outline-secondary btn col-lg-12" onclick="find_id();" >찾기</button>	
   		</div>
   </div>
   </form> 
   </div>        

    <script type="text/javascript">
	
    </script>

<script src="../../js/jquery-3.6.0.min.js"></script>
<script src="../../bootstrap/js/bootstrap.min.js"></script>	
</body>
</html>