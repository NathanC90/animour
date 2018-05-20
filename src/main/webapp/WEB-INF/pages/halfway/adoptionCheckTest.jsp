<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
            <!doctype html>
            <html lang="en">

            <head>
                <!--Icon Tags start -->
                <link rel="apple-touch-icon" sizes="57x57" href="/images/icon/apple-icon-57x57.png">
                <link rel="apple-touch-icon" sizes="60x60" href="/images/icon/apple-icon-60x60.png">
                <link rel="apple-touch-icon" sizes="72x72" href="/images/icon/apple-icon-72x72.png">
                <link rel="apple-touch-icon" sizes="76x76" href="/images/icon/apple-icon-76x76.png">
                <link rel="apple-touch-icon" sizes="114x114" href="/images/icon/apple-icon-114x114.png">
                <link rel="apple-touch-icon" sizes="120x120" href="/images/icon/apple-icon-120x120.png">
                <link rel="apple-touch-icon" sizes="144x144" href="/images/icon/apple-icon-144x144.png">
                <link rel="apple-touch-icon" sizes="152x152" href="/images/icon/apple-icon-152x152.png">
                <link rel="apple-touch-icon" sizes="180x180" href="/images/icon/apple-icon-180x180.png">
                <link rel="icon" type="image/png" sizes="192x192" href="/images/icon/android-icon-192x192.png">
                <link rel="icon" type="image/png" sizes="32x32" href="/images/icon/favicon-32x32.png">
                <link rel="icon" type="image/png" sizes="96x96" href="/images/icon/favicon-96x96.png">
                <link rel="icon" type="image/png" sizes="16x16" href="/images/icon/favicon-16x16.png">
                <link rel="manifest" href="/manifest.json">

                <!--Icon Tags end -->
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <!-- Viewport Meta Tag -->
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <title>查看認養通知</title>
                <!-- Bootstrap -->
                <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
                <!-- Main Style -->
                <link rel="stylesheet" type="text/css" href="/css/main.css">
                <!-- Slicknav Css -->
                <link rel="stylesheet" type="text/css" href="/css/slicknav.css">

                <!-- Responsive Style -->
                <link rel="stylesheet" type="text/css" href="/css/responsive.css">
                <!--Fonts-->
                <link rel="stylesheet" media="screen" href="/fonts/font-awesome/font-awesome.min.css">
                <link rel="stylesheet" media="screen" href="/fonts/simple-line-icons.css">

                <!-- Extras -->
                <link rel="stylesheet" type="text/css" href="/extras/owl/owl.carousel.css">
                <link rel="stylesheet" type="text/css" href="/extras/owl/owl.theme.css">
                <link rel="stylesheet" type="text/css" href="/extras/animate.css">
                <link rel="stylesheet" type="text/css" href="/extras/normalize.css">


                <!-- Color CSS Styles  -->
                <link rel="stylesheet" type="text/css" href="/css/colors/green.css" media="screen" />
                <link rel="stylesheet" type="text/css" href="/css/halfway/bootstrap-table-expandable.css" media="screen" />
                <script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>

                <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
                <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
    </script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js">
    </script>
    <![endif]-->
            </head>

            <body>

                <!-- Header area wrapper starts -->
                <header id="header-wrap">
                    <jsp:include page="../navbar.jsp"></jsp:include>
                </header>
                <!-- Header-wrap Section End -->

                <!-- Page Header -->
                <div class="page-header-section">
                    <div class="container">
                        <div class="row">
                            <div class="page-header-area">
                                <div class="page-header-content">
                                    <h2>認養通知</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <!-- Tab Round -->
                <div class="col-md-12 col-sm-12 clearfix" style="margin-top:30px">
                    <div id="round-tab">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#home2" role="tab">認養申請確認</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#profile2" role="tab">認養申請確認</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#messages2" role="tab">Messages</a>
                            </li>

                        </ul>
                        <div class="tab-content">

                            <!-- 認養通知區塊 -->
                            <div class="tab-pane active" id="home2" role="tabpanel">
                                <input type="hidden" id="adoptioncount" value="${adoptioncount}">
                                <div id="accordion">
                                    <div class="container" id="cleantable">
                                        <div class="col-md-12 mb-50 text-center contact-title-text wow fadeIn" data-wow-delay="0.3s">
                                            <h2 style="margin-top:30px">認養申請確認</h2>
                                        </div>
                                        <div class="row">
                                            <table class="table table-hover table-expandable table-striped" style="text-align:center; margin-bottom:60px">
                                                <thead>
                                                    <tr>
                                                        <th>會員帳號</th>
                                                        <th>申請時間</th>
                                                        <th>檢測分數</th>
                                                        <th>動物名稱</th>
                                                        <th>接受申請</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="adoption" items="${adoption}">
                                                        <tr>
                                                            <th scope="row">${adoption.member.account}</th>
                                                            <td>${adoption.requestDate}</td>
                                                            <td>${adoption.score}</td>
                                                            <td>${adoption.animal.name}</td>
                                                            <td>
                                                                <button id="detail" class="btn btn-common" data-toggle="modal">
                                                                    <i class="fa fa-plus-square"></i>
                                                                    <span>詳情</span>
                                                                </button>
                                                            </td>
                                                        </tr>
                                                        <tr style="display: none;">
                                                            <td colspan="5">
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <span>
                                                                            <img class=" img-circle" width="70%" src="${adoption.member.images}" alt="${member.id}">
                                                                        </span>
                                                                    </div>
                                                                    <div class="col-md-6" style="text-align:left; padding-left:0px">
                                                                        <div class="row">
                                                                            <div class="col-md-3">
                                                                                <h4>會員資訊</h4>
                                                                                <ul style="padding-left:0px; margin-left:0px">
                                                                                    <li>
                                                                                        <a href="">${adoption.member.account}</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        ${adoption.member.nickname}
                                                                                    </li>
                                                                                    <li>
                                                                                        ${adoption.member.address}
                                                                                    </li>
                                                                                    <li>
                                                                                        ${adoption.member.email}
                                                                                    </li>
                                                                                    <li>
                                                                                        ${adoption.member.cell}
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <h4>&nbsp;</h4>
                                                                                ${adoption.requestComment}
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <h4>動物資訊</h4>
                                                                                <ul style="padding-left:0px; margin-left:0px">
                                                                                    <li>
                                                                                        <a href="">${adoption.animal.name}</a>
                                                                                    </li>
                                                                                    <li>
                                                                                        ${adoption.animal.specie}
                                                                                    </li>
                                                                                    <li>
                                                                                        ${adoption.animal.gender}
                                                                                    </li>
                                                                                    <li>
                                                                                        ${adoption.animal.size}
                                                                                    </li>
                                                                                    <li>
                                                                                        ${adoption.animal.age}
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <span>
                                                                            <img class=" img-circle" src="/showAnimalImage?fileName=${adoption.animal.fileName}" width="70%" alt="${adoption.animal.id}">
                                                                        </span>
                                                                        <div style="margin-top:20px">
                                                                            <button id="accept" class="btn btn-common send" data-toggle="modal" onclick="location.href='/halfway/adoptionHandle?acceptRequest=true&id=${adoption.id}';">
                                                                                <i class="fa fa-check"></i>
                                                                                <span>確認</span>
                                                                            </button>
                                                                            <button id="reject" class="btn btn-common send" data-toggle="modal" onclick="location.href='/halfway/adoptionHandle?acceptRequest=false&id=${adoption.id}';">
                                                                                <i class="fa fa-times"></i>
                                                                                <span>拒絕</span>
                                                                            </button>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 認養通知區塊結束 -->

                            <!-- 認養程序開始 -->
                            <div class="tab-pane" id="profile2" role="tabpanel">
                                <p>Barton did feebly change man she afford square add. Want eyes by neat so just must. Past
                                    draw tall up face show rent oh mr. Required is debating extended wondered as do. New
                                    get described applauded incommode shameless out extremity but</p>
                                <p>Resembled at perpetual no believing is otherwise sportsman. Is do he dispatched cultivated
                                    travelling astonished.
                                </p>
                            </div>
                            <!-- 認養程序結束 -->


                            <!-- 送養程序開始 -->
                            <div class="tab-pane" id="messages2" role="tabpanel">
                                <p>It sportsman earnestly ye preserved an on. Moment led family sooner cannot her window pulled
                                    any. Or raillery if improved landlord to speaking hastened differed he. Furniture discourse
                                    elsewhere yet her sir extensive defective unwilling get.</p>
                                <p>Why resolution one motionless you him thoroughly. Noise is round to in it quick timed doors.
                                    Written address greatly get attacks inhabit pursuit our but.</p>
                            </div>
                            <!-- 送養程序結束 -->
                        </div>

                    </div>
                </div>



                <!-- Footer Section -->
                <!-- (footer.jsp) -->
                <jsp:include page="../footer.jsp"></jsp:include>
                <!-- Footer Section End-->

                <!-- Go To Top Link -->
                <a href="#" class="back-to-top">
                    <i class="fa fa-angle-up"> </i>
                </a>

                <!-- JavaScript & jQuery Plugins -->
                <script src="/js/jquery-min.js"></script>
                <script src="/js/popper.min.js"></script>
                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/jquery.mixitup.js"></script>
                <script src="/js/smoothscroll.js"></script>
                <script src="/js/wow.js"></script>
                <script src="/js/owl.carousel.js"></script>
                <script src="/js/waypoints.min.js"></script>
                <script src="/js/jquery.counterup.min.js"></script>
                <script src="/js/jquery.slicknav.js"></script>
                <script src="/js/jquery.appear.js"></script>
                <script src="/js/form-validator.min.js"></script>
                <script src="/js/contact-form-script.min.js"></script>
                <script src="/js/main.js"></script>
                <script src="/js/bootstrap-table-expandable.js"></script>
                <script>

                    $(document).ready(function () {
                        var count = $("#adoptioncount").val()
                        //alert(count);
                        var string = ` <div class="col-md-12 mb-50 text-center contact-title-text wow fadeIn" data-wow-delay="0.3s">
                                            <h2 style="margin-top:30px">尚未收到認養申請</h2>
                                        </div>`;
                        if (count == 0) {
                            $("#cleantable").empty()
                            $("#cleantable").append(string)
                        }
                    });
                    $('.btn.btn-common.send').click(function (event) {
                        // event.preventDefault();
                    })
                </script>


            </body>

            </html>