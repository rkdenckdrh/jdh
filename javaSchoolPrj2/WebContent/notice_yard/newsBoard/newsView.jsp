<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
	.table.table-hover>thead>tr>th {
		border-top: 3px solid #989a9e;
	}
</style>
</head>
<body>
<div class="container">
	<h2 class="m-3">게시판</h2>
	<table class="table table-hover" style="border-bottom: 1px solid #DEE2E6">
		<thead class="thead-light">
			<tr>
				<th style="text-align: center">번호</th>
				<th style="text-align: center">제목</th>
				<th style="text-align: center">작성자</th>
				<th style="text-align: center">날짜</th>
				<th style="text-align: center">조회수</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>99</td>
				<td>누가 Bootstrap 공부한다면서요?</td>
				<td>홍길동</td>
				<td>2019.07.02</td>
				<td>1</td>
			</tr>
			<tr>
				<td>100</td>
				<td>꺼진불도 다시보자.gif</td>
				<td>김유신</td>
				<td>2019.07.02</td>
				<td>3</td>
			</tr>
			<tr>
				<td>101</td>
				<td>아 배고픈데...</td>
				<td>걸신</td>
				<td>2019.07.02</td>
				<td>7</td>
			</tr>
		</tbody>
	</table>
</div>
</body>
</html>