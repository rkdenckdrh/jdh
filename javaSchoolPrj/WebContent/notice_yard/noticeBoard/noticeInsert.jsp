<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<form action="noticeInsert.notice" method="post" enctype="multipart/form-data" name="boardform" class="container">
	<h2 class="m-3">공지사항 글쓰기</h2>
	<table class="table">
		<tbody>
			<tr style="border-top: 3px solid #989a9e">
				<th style="text-align: center; background-color: #E9ECEF">제목</th>
				<td colspan="3"><input type="text" name="title" style="width: 500px"></td>
			</tr>
			<tr>
				<th style="text-align: center; background-color: #E9ECEF">작성자</th>
				<td colspan="3"><input type="text" name="member_id" style="width: 500px"></td>
			</tr>
			<tr>
				<th style="text-align: center; background-color: #E9ECEF; padding-top: 123px">내용</th>
				<td colspan="3"><textarea rows="10" cols="60" name="content"></textarea></td>
			</tr>
			<tr>
				<th style="text-align: center; background-color: #E9ECEF">첨부파일</th>
				<td colspan="3"><input type="file" name="filename"></td>
			</tr>
			<tr>
				<td colspan=2 align="center">
					<input type="submit" value="등록" class="btn btn-dark" style="width: 60px; height:35px; 
							padding-right: 20px; padding-top: 5px; float: center">
					<input type="button" class="btn btn-dark" value="취소" style="width: 60px; height:35px; 
							padding-right: 20px; padding-top: 5px; float: center" 
							onclick="location.href='noticeList.notice'">
				</td>
			</tr>
		</tbody>
	</table>
</form>
</body>
</html>