<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="container">
	<h2 class="m-3">공지사항</h2>
	<table class="table">
		<tbody>
			<tr style="border-top: 3px solid #989a9e">
				<th style="text-align: center; background-color: #E9ECEF">제목</th>
				<td colspan="3" style="text-align: center">${noticeBoardView.notice_title }</td>
			</tr>
			<tr>
				<th style="text-align: center; background-color: #E9ECEF">작성자</th>
				<td style="text-align: center">${noticeBoardView.notice_id }</td>
				<th style="text-align: center; background-color: #E9ECEF">등록일</th>
				<td style="text-align: center">${noticeBoardView.notice_date }</td>
			</tr>
			<tr>
				<td colspan="4">${noticeBoardView.notice_content }</td>
			</tr>
			<tr>
				<th style="text-align: center; background-color: #E9ECEF">첨부파일</th>
				<td colspan="3">${noticeBoardView.notice_filename }</td>
			</tr>
<%-- 			<c:if test="${not empty noticeBoardView.notice_filename }"> --%>
<!-- 				<tr> -->
<%-- 					<th>파일첨부</th><td><img src="upload/${noticeBoardView.notice_filename }"></td> --%>
<!-- 				</tr> -->
<%-- 			</c:if> --%>
			<%-- <tr>
				<td colspan=2 align="center">
					<input type="button" value="수정" onclick="location.href='noticeList.notice?notice_no=${noticeBoardView.notice_no}&page=${page }'">
					<input type="button" value="삭제" onclick="location.href='noticeList.notice?notice_no=${noticeBoardView.notice_no}&page=${page }'">
				</td>
			</tr> --%>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="5">
					<input type="button" class="btn btn-dark" value="수정" style="width: 60px; height:35px; 
							padding-right: 20px; padding-top: 5px; float: left" 
							onclick="location.href='noticeUpdateForm.notice?bno=${noticeBoardView.notice_no}&page=${page }'">
					<input type="button" class="btn btn-dark" value="목록" style="width: 60px; height:35px; 
							padding-right: 20px; padding-top: 5px; float: right" onclick="location.href='noticeList.notice'">
				</td>
			</tr>
		</tfoot>
	</table>
</div>
</body>
</html>