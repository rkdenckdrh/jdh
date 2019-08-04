<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>�ڹ����б�</title>
    <link rel="stylesheet" href="css/mainstyle.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<script>
    $('.carousel').carousel({
        interval: 2000
    })
    $('ul.li.dropdown').hover(function () {
        $(this).find('.dropdown').stop(true, true).delay(200).fadeIn(500);
    }, function () {
        $(this).find('.dropdown').stop(true, true).delay(200).fadeOut(500);
    });
</script>
<body>
	<!-- ��� ���� -->
    <div class="container p-4">
        <a class="navbar-brand" href="#"><img class="logo" src="img/hogwarts-7936.png" alt="�ڹ����б�"></a>
    </div>
    <div class="header">
        <nav class="navbar navbar-expand-md bg-dark navbar-dark px-5">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <!-- ����Ʈ -->
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">�б��Ұ�</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">�λ縻</a>
                            <a class="dropdown-item" href="#">�б�����</a>
                            <a class="dropdown-item" href="#">�������Ұ�</a>
                            <a class="dropdown-item" href="#">���ô±�</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">�˸�����</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="noticeList.notice">��������</a>
                            <a class="dropdown-item" href="newsView.news">������Ź�</a>
                            <a class="dropdown-item" href="mealView.meal">�޽İԽ���</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">�б���Ȱ</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">�б�������</a>
                            <a class="dropdown-item" href="#">���Ƹ�Ȱ��</a>
                            <a class="dropdown-item" href="#">����Ȱ��</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Ŀ�´�Ƽ</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">�����Խ���</a>
                            <a class="dropdown-item" href="#">�͸�Խ���</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <!-- ��� �� -->

    <!-- ī�缿 ���� -->
    <div id="demo" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <!-- �����̵�� -->
            <div class="carousel-item active">
                <img class="d-block w-100" src="img/academy-celebrate-celebration.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/student2.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="img/student-with-file.jpg" alt="Third slide">
            </div>
            <!-- �����̵� �� �� -->
            <!-- �ѱ� ��ư -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <!-- <span>Previous</span> -->
            </a> <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <!-- <span>Next</span> -->
            </a>
            <!-- ��ư �� -->
            <!-- �ε������� : 0���� ���� -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>
            <!-- �ε������� �� -->
        </div>
        <!-- ī�缿 �� -->

        <!-- �Խ��� 1-->
        <div class="container p-4">
            <div class="row">
                <div class="col-lg-5 col-md-10 p-3">
                    <h1 class="display-4 mb-4">JAVA NOTICE</h1>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <a class="nav-item nav-link active" id="nav-notice-tab" data-toggle="tab" href="#nav-notice"
                            role="tab" aria-controls="nav-notice" aria-selected="true">��������</a>
                        <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile"
                            role="tab" aria-controls="nav-profile" aria-selected="false">������Ź�</a>
                        <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
                            role="tab" aria-controls="nav-contact" aria-selected="false">�޽ĸ޴�</a>
                    </div>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-notice" role="tabpanel" aria-labelledby="nav-notice-tab">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Firstname</th>
                                        <th>Lastname</th>
                                        <th>Email</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach items="${mainNoticeList }" var="mainNotice">
	                                    <tr>
	                                        <td colspan="3">��&nbsp;&nbsp;&nbsp;${mainNotice.notice_title }</td>
	                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Firstname</th>
                                        <th>Lastname</th>
                                        <th>Email</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${mainNoticeList }" var="mainNotice">
	                                    <tr>
	                                        <td>${mainNotice.notice_title }</td>
	                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Firstname</th>
                                        <th>Lastname</th>
                                        <th>Email</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>John</td>
                                        <td>Doe</td>
                                        <td>john@example.com</td>
                                    </tr>
                                    <tr>
                                        <td>Mary</td>
                                        <td>Moe</td>
                                        <td>mary@example.com</td>
                                    </tr>
                                    <tr>
                                        <td>July</td>
                                        <td>Dooley</td>
                                        <td>july@example.com</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <!-- �Խ��� 2 -->
                <div class="col-lg-5 col-md-10 p-3">
                    <h1 class="display-4 mb-4">JAVA DATA</h1>
                    <div class="nav nav-tabs" id="nav-data-tab" role="tablist">
                        <a class="nav-item nav-link active" id="nav-gallery-tab" data-toggle="tab" href="#nav-gallery"
                            role="tab" aria-controls="nav-data" aria-selected="true">�б�������</a>
                        <a class="nav-item nav-link" id="nav-activity-tab" data-toggle="tab" href="#nav-activity"
                            role="tab" aria-controls="nav-profile" aria-selected="false">���Ƹ�Ȱ��</a>
                        <a class="nav-item nav-link" id="nav-freeboard-tab" data-toggle="tab" href="#nav-freeboard"
                            role="tab" aria-controls="nav-contact" aria-selected="false">�����Խ���</a>
                    </div>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-gallery" role="tabpanel" aria-labelledby="nav-gallery-tab">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Firstname</th>
                                        <th>Lastname</th>
                                        <th>Email</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>John</td>
                                        <td>Doe</td>
                                        <td>john@example.com</td>
                                    </tr>
                                    <tr>
                                        <td>Mary</td>
                                        <td>Moe</td>
                                        <td>mary@example.com</td>
                                    </tr>
                                    <tr>
                                        <td>July</td>
                                        <td>Dooley</td>
                                        <td>july@example.com</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="nav-activity" role="tabpanel" aria-labelledby="nav-activity-tab">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Firstname</th>
                                        <th>Lastname</th>
                                        <th>Email</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>John</td>
                                        <td>Doe</td>
                                        <td>john@example.com</td>
                                    </tr>
                                    <tr>
                                        <td>Mary</td>
                                        <td>Moe</td>
                                        <td>mary@example.com</td>
                                    </tr>
                                    <tr>
                                        <td>July</td>
                                        <td>Dooley</td>
                                        <td>july@example.com</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="nav-freeboard" role="tabpanel" aria-labelledby="nav-freeboard-tab">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Firstname</th>
                                        <th>Lastname</th>
                                        <th>Email</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>John</td>
                                        <td>Doe</td>
                                        <td>john@example.com</td>
                                    </tr>
                                    <tr>
                                        <td>Mary</td>
                                        <td>Moe</td>
                                        <td>mary@example.com</td>
                                    </tr>
                                    <tr>
                                        <td>July</td>
                                        <td>Dooley</td>
                                        <td>july@example.com</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- today, calender -->
                <div class="col-lg-2 col-md-10 p-3">
                    <table class="table">
                        <tr>
                            <td><h5>Today</h5></td>
                            <td>111</td>
                        </tr>
                        <tr>
                            <td><h5>Total</h5></td>
                            <td>1,000,111</td>
                        </tr>
                    </table>
                </div>

            </div>
        </div>


        <!-- ABOUT JAVA -->
        <section id="about" class="">
            <div class="container-fluid p-5">
                <div class="row">
                    <div class="col text-center">
                        <h1 class="display-4 text-uppercase text-dark mb-4">ABOUT DATA</h1>
                    </div>
                    <div class="row py-3 no-gutters">
                        <div class="col-sm-6 col-md-4 my-12"> <img
                                src="https://images.pexels.com/photos/1350197/pexels-photo-1350197.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
                                alt="" class="img-fluid rounded-circle"> </div>
                        <div class="col-sm-6 col-md-4 my-12"> <img
                                src="https://images.pexels.com/photos/1350197/pexels-photo-1350197.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
                                alt="" class="img-fluid rounded-circle"> </div>
                        <div class="col-sm-6 col-md-4 my-12"> <img
                                src="https://images.pexels.com/photos/1350197/pexels-photo-1350197.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
                                alt="" class="img-fluid rounded-circle"> </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- ���� -->
    <section id="movie" class="">
        <div class="container-fluid px-5 py-5 bg-light">
            <div class="row">
                <div></div>
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/L40f5mgQGfY" frameborder="0"
                        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </section>

    <!-- Ǫ�� -->
    <section id="footer" class="">
        <div class="container-fluid p-5 bg-secondary">
            <div class="row">
                (��) �λ걤���� ���� ������
                ������ : 051-000-0000
                ������ : 051-000-0000
                ALL RIGHTS RESERVED.
            </div>
        </div>
    </section>

    <!-- ��Ʈ��Ʈ�� -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>