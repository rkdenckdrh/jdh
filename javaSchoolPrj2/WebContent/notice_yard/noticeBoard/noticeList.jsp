<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="css/mainstyle.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
	.table.table-hover>thead>tr>th {
		border-top: 3px solid #989a9e;
	}
</style>
</head>

<script>
    $('ul.li.dropdown').hover(function () {
        $(this).find('.dropdown').stop(true, true).delay(200).fadeIn(500);
    }, function () {
        $(this).find('.dropdown').stop(true, true).delay(200).fadeOut(500);
    });
</script>

<body>
	<!-- 헤더 시작 -->
    <div class="container p-4">
        <a class="navbar-brand" href="#"><img class="logo" src="img/hogwarts-7936.png" alt="자바중학교"></a>
    </div>
    <div class="header">
        <nav class="navbar navbar-expand-md bg-dark navbar-dark px-5">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <!-- 리스트 -->
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">학교소개</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">인사말</a>
                            <a class="dropdown-item" href="#">학교연혁</a>
                            <a class="dropdown-item" href="#">교직원소개</a>
                            <a class="dropdown-item" href="#">오시는길</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">알림마당</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="noticeList.notice">공지사항</a>
                            <a class="dropdown-item" href="newsView.news">가정통신문</a>
                            <a class="dropdown-item" href="mealView.meal">급식게시판</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">학교생활</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">학교갤러리</a>
                            <a class="dropdown-item" href="#">동아리활동</a>
                            <a class="dropdown-item" href="#">봉사활동</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">커뮤니티</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">자유게시판</a>
                            <a class="dropdown-item" href="#">익명게시판</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <!-- 헤더 끝 -->
    
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