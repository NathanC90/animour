<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<!--Icon Tags start -->
<link rel="apple-touch-icon" sizes="57x57"
	href="/images/icon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="/images/icon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/images/icon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="/images/icon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/images/icon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="/images/icon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="/images/icon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="/images/icon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="/images/icon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="/images/icon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="/images/icon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="/images/icon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="/images/icon/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">

<!--Icon Tags end -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Viewport Meta Tag -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Animal Shelter</title>
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
		<jsp:include page="../navbar.jsp"></jsp:include>
	</header>
	<!-- Header-wrap Section End -->

	<!-- Page Header -->
	<div class="page-header-section">
		<div class="container">
			<div class="row">
				<div class="page-header-area">
					<div class="page-header-content">
						<h2>中途專區</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Page Header End -->

	<!-- Call to action section -->
	<section class="cta-section section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="cta-area">
						<div class="cta-content text-center">
							<h2>幫助浪浪找到他們的家</h2>
							<p>也別讓他們成為浪浪TT</p>
							<a href="/insertAnimalForm" class="btn btn-common"><i class="fa fa-envelope"></i>
								我要送養</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End of call to action section -->

	<!-- Classic Blog Section -->
	<section class="classic-blog-section section">
		<div class="container">
			<div class="row">
				<!-- Blog Sidebar Section -->
				<div class="col-md-3">
					<div class="sidebar-area">
						<!-- Search Bar -->
						<aside class="widget search-bar wow fadeIn" data-wow-delay="0.3s">
							<form>
								<input type="text" placeholder="Search" class="form-control">
								<button type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</aside>
						<!-- Text Widgets -->
						<aside class="widget text-widgets wow fadeIn"
							data-wow-delay="0.3s">
							<h2 class="widget-title">Text Widget</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Pariatur dolorem fuga ad corrupti, ullam, eos natus, repellat
								officiis sit labore a aspernatur quisquam. In, unde.</p>
						</aside>

						<!--Start of Category -->
						<aside class="widget flickr-widget wow fadeIn"
							data-wow-delay="0.3s">
							<h2 class="widget-title">Category</h2>
							<ul class="category-menu">
								<li><div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="defaultCheck1"> <label class="form-check-label"
											for="defaultCheck1"> Dog (31) </label>
									</div></li>
								<li><div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="defaultCheck1"> <label class="form-check-label"
											for="defaultCheck1"> Cat (16) </label>
									</div></li>
								<li><div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="defaultCheck1"> <label class="form-check-label"
											for="defaultCheck1"> Bird (2) </label>
									</div></li>
								<li><div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="defaultCheck1"> <label class="form-check-label"
											for="defaultCheck1"> Rabbit (7) </label>
									</div></li>
							</ul>
						</aside>
						<!--End of Category -->

						<!--Start of Region -->
						<aside class="widget flickr-widget wow fadeIn"
							data-wow-delay="0.3s">
							<h2 class="widget-title">Category</h2>
							<ul class="category-menu">
								<li><div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="defaultCheck1"> <label class="form-check-label"
											for="defaultCheck1"> Taipei City (64) </label>
									</div></li>
								<li><div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="defaultCheck1"> <label class="form-check-label"
											for="defaultCheck1"> Taichung City (39) </label>
									</div></li>
								<li><div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="defaultCheck1"> <label class="form-check-label"
											for="defaultCheck1"> Taoyuan City (23) </label>
									</div></li>
								<li><div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="defaultCheck1"> <label class="form-check-label"
											for="defaultCheck1"> New Taipei City (71) </label>
									</div></li>
							</ul>
						</aside>
						<!--End of Region -->
					</div>
				</div>
				<!-- End -->

				<!-- BLog Article Section -->
				<div class="col-md-9">
					<!-- Single Blog Post -->
					<div class="row">
						<c:forEach var="animal" items="${animals}">

							<div class="col-md-3">
								<div class="card mb-3 box-shadow">
									<img class="card-img-top" src="/images/adopt/cats/ad-cat2.jpg"
										width="100px" alt="待領養小貓">
									<div class="card-body" style="margin-bottom: 5px">
										<p class="card-text" style="padding: 0px">編號：${animal.id}
											綽號：${animal.name} 種類：${animal.specie} 顏色：${animal.color}
											發現日期：${animal.found} 縣市：${animal.city}
											鄉鎮市區：${animal.district}</p>
										<div class="d-flex justify-content-between align-items-center"
											style="max-height: 100px">
											<div class="btn-group" style="margin: 0px">
												<button type="button" class="btn btn-common btn-sm mt-10">預覽</button>
												<button type="button" class="btn btn-common btn-sm mt-10">認養</button>
											</div>
											<small class="text-muted">${animal.upload}</small>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<!-- Slider Post -->

					<!-- Blog Pagination -->
					<div class="blog-pagination clearfix wow fadeIn"
						data-wow-delay="0.3s">
						<nav aria-label="..." class="">
							<ul class="pagination">
								<li class="page-item disabled"><a class="page-link"
									href="#" tabindex="-1" aria-label="Previous"> <i
										class="fa fa-angle-left"></i> Prev <span class="sr-only">Previous</span>
								</a></li>
								<li class="page-item active"><a class="page-link" href="#">1
										<span class="sr-only">(current)</span>
								</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item"><a class="page-link" href="#"
									aria-label="Next"> Next <i class="fa fa-angle-right"></i> <span
										class="sr-only">Next</span>
								</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<!-- End -->
			</div>
		</div>
	</section>
	<!-- Classic Blog Section End -->

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

</body>

</html>
