<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<!doctype html>
		<html lang="en">

		<head>
			<!-- Required meta tags -->
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

			<!-- Bootstrap CSS -->
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
			 crossorigin="anonymous">

			<title>Animour</title>
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
				<jsp:include page="navbar.jsp"></jsp:include>

				<!-- Navbar ends -->


				<!-- 輪播牆開始 -->
				<div id="carousel-area">
					<div id="carousel-slider" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-slider" data-slide-to="1"></li>
							<li data-target="#carousel-slider" data-slide-to="2"></li>
							<li data-target="#carousel-slider" data-slide-to="3"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img class="d-block w-100" src="/images/slider/bg-dog1-gray.jpg" alt="">
								<div class="carousel-caption">
									<h2 class="fadeInUp wow" data-sppb-wow-delay="0.8s">
										請用領養代替購買</h2>
									<h3 class="fadeInUp wow" data-sppb-wow-delay="1.2s">愛護動物，從你我開始</h3>
									<a class="btn btn-lg btn-common fadeInUp wow" data-sppb-wow-delay="1.4s" href="#">
										<i class="fa fa-download"> </i> 點擊認養
									</a>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block w-100" src="/images/slider/bg-cat1-gray.jpg" alt="">
								<div class="carousel-caption">
									<h2 class="fadeInUp wow" data-sppb-wow-delay="0.8s">中途見面會活動
									</h2>
									<h3 class="fadeInUp wow" data-sppb-wow-delay="1.2s">
										2018/06/01 上午9:00 台北市復興南路一段</h3>
									<a class="btn btn-lg btn-common fadeInUp wow" data-sppb-wow-delay="1.4s" href="#">
										<i class="fa fa-coffee">
										</i> 詳細資訊
									</a>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block w-100" src="/images/slider/bg-dog2-gray.jpg" alt="">
								<div class="carousel-caption">
									<h2 class="fadeInUp wow" data-sppb-wow-delay="0.8s">New Arrival
									</h2>
									<h3 class="fadeInUp wow" data-sppb-wow-delay="1.2s">最新商品上架</h3>
									<a class="btn btn-lg btn-common fadeInUp wow" data-sppb-wow-delay="1.4s" href="#">
										<i class="fa fa-download"> </i> 看這裡
									</a>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block w-100" src="/images/slider/bg-rabbit1-gray.jpg" alt="">
								<div class="carousel-caption">
									<h2 class="fadeInUp wow" data-sppb-wow-delay="0.8s">
										醫生門診時間異動</h2>
									<h3 class="fadeInUp wow" data-sppb-wow-delay="1.2s">
										已掛號會員請更改看診時間</h3>
									<a class="btn btn-lg btn-common fadeInUp wow" data-sppb-wow-delay="1.4s" href="#">
										<i class="fa fa-download"> </i> 點此更改
									</a>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carousel-slider" role="button" data-slide="prev">
							<span class="carousel-control carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#carousel-slider" role="button" data-slide="next">
							<span class="carousel-control carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
				<!-- 輪播牆結束-->


			<!-- Footer Section -->
			<!-- (footer.jsp) -->
			<jsp:include page="footer.jsp"></jsp:include>

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
			<!-- Placed at the end of the document so the pages load faster -->
			<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
			 crossorigin="anonymous"></script>
			<script>
				window.jQuery
					|| document
						.write('<script src="/js/jquery-slim.min.js"><\/script>')
			</script>
			<script src="/js/popper.min.js"></script>
			<script src="/js/bootstrap.min.js"></script>
			<script src="/js/vendor/holder.min.js"></script>

		</body>

		</html>