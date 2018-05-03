<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
				<title>RESERVATION</title>
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
					<!-- Navbar Starts -->
					<jsp:include page="../navbar.jsp"></jsp:include>
					<!-- Navbar ends -->
				</header>
				<!-- Header-wrap Section End -->
				<!-- Page Header -->
				<div class="page-header-section">
					<div class="container">
						<div class="row">
							<div class="page-header-area">
								<div class="page-header-content">
									<h2>RESERVATION</h2>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Page Header End -->
				<!-- Classic Blog Section -->
				<section class="classic-blog-section section">
					<div class="container">
						<div class="row">
							<!-- End -->

							<div id="loginbox" style="margin-top: 50px; margin: auto" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
								<div class="panel panel-info" style="border: 1px">
									<div class="panel-heading" style="padding: 10px 15px; border-bottom: 1px solid transparent; border-top-right-radius: 3px; border-top-left-radius: 3px; border-bottom: 0; color: #FFFFFF; background-color: #9C3; border-color: #ddd">
										<div class="panel-title">新增預約</div>
										<div style="float: right; font-size: 80%; position: relative; top: -10px">
											<a href="#"></a>
										</div>
									</div>

									<div style="padding-top: 30px" class="panel-body">
										<div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

										<form:form action="/reservation" method="Post" modelAttribute="reservation" enctype="multipart/form-data">
											<div class="form-row">
											</div>
											<div class="form-row">

												<!--		<div class="form-group col-md-6">
													日期:
													<form:select id="reservationDate" class="form-control" path="reservationDate">
														<form:option value="reservationDate" label="請選擇類別" />
														<form:options items="${allDate}" />
													</form:select>
												</div>
-->
												<div class="form-group col-md-6">
													類別:
													<form:select id="content" class="form-control" path="content">
														<form:option value="content" label="請選擇類別" />
														<form:options items="${allContent}" />
													</form:select>
												</div>
												<div class="form-group col-md-6">
													美容師:
													<form:select id="Designer" class="form-control" path="Designer">
														<form:option value="Designer" label="請選擇美容師" />
														<form:options items="${allDesigner}" />
													</form:select>
												</div>




											</div>
											<input type="submit" class="btn btn-common" value="預約">
											<input type="reset" class="btn btn-common" value="清除">
										</form:form>
									</div>
								</div>

							</div>
						</div>
					</div>
				</section>
				<!-- Footer Section -->
				<footer>
					<!-- Container Starts -->
					<div class="container">
						<!-- Row Starts -->
						<div class="row section">
							<!-- Footer Widget Starts -->
							<div class="footer-widget col-md-6 col-lg-3 col-xs-12">
								<h3 class="small-title">About Us</h3>
								<p></p>
								<ul class="mb-3">
									<!-- 						<li><i class="fa fa-map-marke"></i></li> -->
									<!-- 						<li><i class="fa fa-phone"></i></li> -->
									<!-- 						<li><i class="fa fa-phone"></i></li> -->
								</ul>
							</div>
							<!-- Footer Widget Ends -->

							<!-- Footer Widget Starts -->
							<div class="footer-widget col-md-6 col-lg-3 col-xs-12">
								<h3 class="small-title">Quick Links</h3>
								<ul class="menu">
									<li>
										<a href="#">首頁</a>
									</li>
									<li>
										<a href="#">中途專區</a>
									</li>
									<li>
										<a href="#">最新活動專區</a>
									</li>
									<li>
										<a href="#">寵物市集</a>
									</li>
									<li>
										<a href="#">最新空房</a>
									</li>
									<li>
										<a href="#">醫院資訊專區</a>
									</li>
									<li>
										<a href="#">THE BLOG</a>
									</li>
								</ul>
							</div>
							<!-- Footer Widget Ends -->

							<!-- Footer Widget Starts -->
							<div class="footer-widget col-md-6 col-lg-3 col-xs-12">
								<h3 class="small-title">Popular Posts</h3>
								<ul class="image-list">
									<li>
										<figure class="overlay">
											<img class="img-fluid" src="" alt="">
										</figure>
										<div class="post-content">
											<h6 class="post-title">
												<a href="blog-single.html"></a>
											</h6>
											<div class="meta">
												<span class="date"></span>
											</div>
										</div>
									</li>
									<li>
										<figure class="overlay">
											<img class="img-fluid" src="" alt="">
										</figure>
										<div class="post-content">
											<h6 class="post-title">
												<a href="blog-single.html"></a>
											</h6>
											<div class="meta">
												<span class="date"></span>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<!-- Footer Widget Ends -->

							<!-- Footer Widget Starts -->
							<div class="footer-widget col-md-6 col-lg-3 col-xs-12">
								<h3 class="small-title">EMail Us</h3>
								<form>
									<input type="text" placeholder="Email here">
									<button type="submit">
										<i class="fa fa-paper-plane-o"></i>
									</button>
								</form>
								<div class="flicker-gallery">
									<h3 class="small-title">Social Media Link</h3>
									<a href="#" title="Pan Masala">
										<img src="/images/flicker/img1.jpg" alt="">
									</a>
									<a href="#" title="Sports Template for Joomla">
										<img src="/images/flicker/img2.jpg" alt="">
									</a>
									<a href="" title="Apple Keyboard">
										<img src="/images/halfway/halfwayindex.jpg" alt="">
									</a>
								</div>
							</div>
							<!-- Footer Widget Ends -->
						</div>
						<!-- Row Ends -->
					</div>
					<!-- Container Ends -->

					<!-- Copyright -->
					<div id="copyright">
						<div class="container">
							<div class="row">
								<div class="col-md-6 col-sm-6">
									<p class="copyright-text">
										© 2018 Animour All right reserved, Designed by
										<a href="#">iii-ee100</a>
									</p>
								</div>
								<div class="col-md-6 col-sm-6">
									<div class="social-footer text-right">
										<a href="#">
											<i class="fa fa-facebook icon-round"></i>
										</a>
										<a href="#">
											<i class="fa fa-twitter icon-round"></i>
										</a>
										<a href="#">
											<i class="fa fa-linkedin icon-round"></i>
										</a>
										<a href="#">
											<i class="fa fa-google-plus icon-round"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Copyright  End-->

				</footer>
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
			</body>

			</html>