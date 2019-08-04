<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="css/mainstyle.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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