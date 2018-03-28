<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
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
<link rel="stylesheet" media="screen"
	href="/fonts/font-awesome/font-awesome.min.css">
<link rel="stylesheet" media="screen"
	href="/fonts/simple-line-icons.css">

<!-- Extras -->
<link rel="stylesheet" type="text/css"
	href="/extras/owl/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="/extras/owl/owl.theme.css">
<link rel="stylesheet" type="text/css" href="/extras/animate.css">
<link rel="stylesheet" type="text/css" href="/extras/normalize.css">
<!-- Color CSS Styles  -->
<link rel="stylesheet" type="text/css" href="/css/colors/green.css"
	media="screen" />
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
						<img class="d-block w-100" src="/images/slider/bg-dog1-gray.jpg"
							alt="">
						<div class="carousel-caption">
							<h2 class="fadeInUp wow" data-sppb-wow-delay="0.8s">
								請用領養代替購買</h2>
							<h3 class="fadeInUp wow" data-sppb-wow-delay="1.2s">愛護動物，從你我開始</h3>
							<a class="btn btn-lg btn-common fadeInUp wow"
								data-sppb-wow-delay="1.4s" href="#"> <i
								class="fa fa-download"> </i> 點擊認養
							</a>
						</div>
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="/images/slider/bg-cat1-gray.jpg"
							alt="">
						<div class="carousel-caption">
							<h2 class="fadeInUp wow" data-sppb-wow-delay="0.8s">中途見面會活動
							</h2>
							<h3 class="fadeInUp wow" data-sppb-wow-delay="1.2s">
								2018/06/01 上午9:00 台北市復興南路一段</h3>
							<a class="btn btn-lg btn-common fadeInUp wow"
								data-sppb-wow-delay="1.4s" href="#"> <i class="fa fa-coffee">
							</i> 詳細資訊
							</a>
						</div>
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="/images/slider/bg-dog2-gray.jpg"
							alt="">
						<div class="carousel-caption">
							<h2 class="fadeInUp wow" data-sppb-wow-delay="0.8s">New
								Arrival</h2>
							<h3 class="fadeInUp wow" data-sppb-wow-delay="1.2s">最新商品上架</h3>
							<a class="btn btn-lg btn-common fadeInUp wow"
								data-sppb-wow-delay="1.4s" href="#"> <i
								class="fa fa-download"> </i> 看這裡
							</a>
						</div>
					</div>
					<div class="carousel-item">
						<img class="d-block w-100"
							src="/images/slider/bg-rabbit1-gray.jpg" alt="">
						<div class="carousel-caption">
							<h2 class="fadeInUp wow" data-sppb-wow-delay="0.8s">
								LaLa醫生門診時間異動</h2>
							<h3 class="fadeInUp wow" data-sppb-wow-delay="1.2s">
								已掛號會員請更改看診時間</h3>
							<a class="btn btn-lg btn-common fadeInUp wow"
								data-sppb-wow-delay="1.4s" href="#"> <i
								class="fa fa-download"> </i> 點此更改
							</a>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#carousel-slider"
					role="button" data-slide="prev"> <span
					class="carousel-control carousel-control-prev-icon"
					aria-hidden="true"></span> <span class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carousel-slider"
					role="button" data-slide="next"> <span
					class="carousel-control carousel-control-next-icon"
					aria-hidden="true"></span> <span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<!-- 輪播牆結束-->
	</header>
	<div>
			<h3>查詢動物房間資料</h3>
			<form name="/hotel/selectType" action="/hotel/selectType"
				method="GET">
				<input id='num' name="hotelId" value="${selectType.hotelId}"
					type="text" size="14" style="text-align: left"> <input
					type="submit" value="送出">

			</form>
		</div>
	<!-- Header-wrap Section End -->
			<section id="service-block-main" class="section">
				<!-- 重複的內容開始 -->
				<div class="container">
					<h1 class="section-title wow fadeIn animated" data-wow-delay=".2s">
						最新空房</h1>
					<div class="row">
						<c:forEach var="avar" items="${hotelBean}">

							<div class="col-md-4">
								<div class="card mb-4 box-shadow">
									<img class="card-img-top" src="/images/adopt/cats/英短毛專題用圖.jpeg" width="100px" alt="待領養小貓">
									<div class="card-body" style="margin-bottom: 5px">
										<p class="card-text" style="padding: 0px">
											房號：${avar.hotelId} 房型：${avar.type}</p>
										<div class="d-flex justify-content-between align-items-center" style="max-height: 100px">
											<div class="btn-group" style="margin: 0px">
												<button type="button" class="btn btn-common btn-sm mt-10">預覽</button>
												<button type="button" class="btn btn-common btn-sm mt-10">認養</button>
											</div>
											<small class="text-muted">${avar.checkIn}</small>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<!-- 重複的內容結束 -->
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
						<li><a href="#">首頁</a></li>
						<li><a href="#">中途專區</a></li>
						<li><a href="#">最新活動專區</a></li>
						<li><a href="#">寵物市集</a></li>
						<li><a href="#">最新空房</a></li>
						<li><a href="#">醫院資訊專區</a></li>
						<li><a href="#">THE BLOG</a></li>
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
						<a href="#" title="Pan Masala"> <img
							src="/images/flicker/img1.jpg" alt="">
						</a> <a href="#" title="Sports Template for Joomla"> <img
							src="/images/flicker/img2.jpg" alt="">
						</a> <a href="" title="Apple Keyboard"> <img
							src="/images/flicker/img3.jpg" alt="">
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
							© 2018 Animour All right reserved, Designed by <a href="#">iii-ee100</a>
						</p>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="social-footer text-right">
							<a href="#"> <i class="fa fa-facebook icon-round"></i>
							</a> <a href="#"> <i class="fa fa-twitter icon-round"></i>
							</a> <a href="#"> <i class="fa fa-linkedin icon-round"></i>
							</a> <a href="#"> <i class="fa fa-google-plus icon-round"></i>
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
	<a href="#" class="back-to-top"> <i class="fa fa-angle-up"> </i>
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
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
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