<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<h2 class="m-3">공지사항</h2>
	<table class="table table-hover">
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
			<c:forEach items="${noticeBoardList }" var="noticeBoard">
				<tr onclick="location.href='noticeView.notice?notice_no=${noticeBoard.notice_no }&page=${pageMaker.currPage }'" 
					style="cursor: pointer">
					<td style="text-align: center">${noticeBoard.notice_no }</td>
					<td>${noticeBoard.notice_title }</td>
					<td style="text-align: center">${noticeBoard.notice_id }</td>
					<td style="text-align: center">${noticeBoard.notice_date }</td>
					<td style="text-align: center">${noticeBoard.notice_read_count}</td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="5">
					<input type="button" class="btn btn-dark" value="글쓰기" style="width: 75px; height:35px; 
								padding-right: 20px; padding-top: 5px; float: right" onclick="location.href='noticeInsertForm.notice'">
				</td>
			</tr>
		</tfoot>
	</table>
	<div style="text-align:center">
		<c:if test="${pageMaker.prev }">
			<img src="img/previous.svg" height="16px" width="32px" alt="이전" style="cursor: pointer"
				onclick="location.href='noticeList.notice?page=${pageMaker.startPage-pageMaker.pageSize }'">
		</c:if>
					
		<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="page">
			<c:choose>
				<c:when test="${page==pageMaker.currPage }">${page }</c:when>
					<c:otherwise>
						<span onclick="location.href='noticeList.notice?page=${page }'" style="cursor: pointer">${page }</span>
					</c:otherwise>
			</c:choose>
		</c:forEach>
					
		<c:if test="${pageMaker.next }">
			<img src="img/next.svg" height="16px" width="32px" alt="다음" style="cursor: pointer"
				onclick="location.href='noticeList.notice?page=${pageMaker.endPage + 1 }'">
		</c:if>
	</div>
</div>
</body>
</html>