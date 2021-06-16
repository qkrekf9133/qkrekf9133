<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<title>거래 현황</title>
</head>
<body>

	<!-- buylist 참고하기 -->
	
	<div class = "container">
	
		<div class="form-group">
			<div class="col-sm-2"></div>
			<div class="col-sm-6">
				<h2 align="center">거래 현황</h2><br><br>
			</div>
		</div>
				
		<div class = "row">
			<table class = "table" style="text-align : center; border : 1px solid #dddddd">
				<thead>
					<tr>
						<th width="100" style="background-color : #eeeeee; text-align: center;">거래번호</th>
						<th width="100" style="background-color : #eeeeee; text-align: center;">구매자</th>
						<th width="100" style="background-color : #eeeeee; text-align: center;">제품정보</th>
						<th width="80" style="background-color : #eeeeee; text-align: center;">제품가격</th>
						<th width="80" style="background-color : #eeeeee; text-align: center;">거래상태</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<!-- 거래번호 -->
						<td align=center></td>
						<!-- 구매자 -->
						<td align=center></td>
						<!-- 제품정보 -->
						<td align=center>
							<img src="../" width=60 height=60 align=middle/>	
						</td>
						<!-- 제품가격 -->	
						<td align=center></td>
						<!-- 거래상태 -->
						<td align=center></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
<script src="../../js/jquery-3.6.0.min.js"></script>
<script src="../../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>