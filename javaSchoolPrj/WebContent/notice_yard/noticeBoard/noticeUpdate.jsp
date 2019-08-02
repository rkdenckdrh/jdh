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
<form action="noticeUpdate.notice?notice_no=${noticeBoardUpdate.notice_no }&page=${page }" 
		method="post" enctype="multipart/form-data" name="boardform" class="container">
	<h2 class="m-3">공지사항 수정</h2>
	<input type="hidden" name="bno" value="${noticeBoardUpdate.notice_no }">
	<input type="hidden" name="page" value="${page }">
	<input type="hidden" name="nonMakeImg" value="${noticeBoardUpdate.notice_filename }">
	<table class="table">
		<tbody>
			<tr style="border-top: 3px solid #989a9e">
				<th style="text-align: center; background-color: #E9ECEF">제목</th>
				<td colspan="3"><input type="text" name="title" style="width: 500px" value="${noticeBoardUpdate.notice_title }"></td>
			</tr>
			<tr>
				<th style="text-align: center; background-color: #E9ECEF">작성자</th>
				<td colspan="3"><input type="text" name="member_id" style="width: 500px" value="${noticeBoardUpdate.notice_id }"></td>
			</tr>
			<tr>
				<th style="text-align: center; background-color: #E9ECEF; padding-top: 123px">내용</th>
				<td colspan="3"><textarea rows="10" cols="60" name="content">${noticeBoardUpdate.notice_content }</textarea></td>
			</tr>
			<tr>
				<th style="text-align: center; background-color: #E9ECEF">첨부파일</th>
				<td colspan="3"><input type="file" name="nonMakeImg" value="${noticeBoardUpdate.notice_filename }"></td>
			</tr>
			<tr>
				<td colspan=2 align="center">
					<input type="submit" value="등록" class="btn btn-dark" style="width: 60px; height:35px; 
							padding-right: 20px; padding-top: 5px; float: center">
					<input type="button" value="삭제" class="btn btn-dark" style="width: 60px; height:35px; 
							padding-right: 20px; padding-top: 5px; float: center" 
							onclick="location.href='noticeDelete.notice?notice_no=${noticeBoardUpdate.notice_no }&page=${page }'">
					<input type="button" class="btn btn-dark" value="취소" style="width: 60px; height:35px; 
							padding-right: 20px; padding-top: 5px; float: center" 
							onclick="location.href='noticeView.notice?notice_no=${noticeBoardUpdate.notice_no }&page=${page }'">
				</td>
			</tr>
		</tbody>
	</table>
</form>
</body>
</html>