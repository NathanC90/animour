<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=BIG5">

<!-- Required meta tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>支持與贊助</title>

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

<!-- Color CSS Styles  -->
<link rel="stylesheet" type="text/css" href="/css/colors/green.css"
	media="screen" />



</head>
<body>
	<!-- 頁面上方連結 ，會蓋住後面的字-->
	<header id="header-wrap">
		<!-- Navbar Starts -->
		<jsp:include page="../navbar.jsp"></jsp:include>
		<!-- Navbar ends -->
	</header>
	<br>
	<div class="container">
		<img class="card-img-top" src="/images/donate/rabbit.png" alt="">
	</div>
	<ul class="nav justify-content-center">
		<li class="nav-item"><h5>
				<a class="nav-link active" href="#">會員福利</a>
			</h5></li>
		<li class="nav-item"><h5>
				<a class="nav-link" href="/project">&nbsp;|&nbsp;捐款項目</a>
			</h5></li>
		<li class="nav-item"><h5>
				<a class="nav-link" href="explain">&nbsp;|&nbsp;贊助方式</a>
			</h5></li>
		<li class="nav-item"><h5>
				<a class="nav-link" href="friend">&nbsp;|&nbsp;捐款名單</a>
			</h5></li>
	</ul>

	<br>
	<div class="container">
		<h3>會員福利</h3>
		<hr>
		<h5>
			會員可經由贊助我們，申請升級會員資格<br>除享與一般會員同級權利與回饋，升級後會員亦可得另享權益如下：
			<p>
		</h5>
		<ol>
			<li><h6>升等禮&nbsp;:&nbsp;符合升等資格之當月可獲得升等禮乙份。</h6></li>
			<li><h6>生日禮&nbsp;:&nbsp;會員生日當月可獲得生日禮乙份，且依生日當月的會員等級回饋指定面額的購物金。</h6></li>
			<li><h6>會員日&nbsp;:&nbsp;每月6號/16號/26號，皆依會員等級回饋指定好禮。</h6></li>
		</ol>
		<hr>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="pricing-table pricing-table-x">
					<div class="table-header">
						<h3>鑽石會員</h3>
					</div>
					<div class="plan">
						<h3 class="price">NT350</h3>
					</div>
					<div class="plan-info">
						<p>
							<i class="fa fa-check"></i> 100元購物金
						</p>
						<p>
							<i class="fa fa-check"></i> 滿2000送200
						</p>
						<div class="button-area">
							<a href="project" class="btn btn-common"> 詳情 </a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="pricing-table pricing-table-x">
					<div class="table-header highlight">
						<h3>白金會員</h3>
					</div>
					<div class="plan">
						<h3 class="price">NT200</h3>
					</div>
					<div class="plan-info">
						<p>
							<i class="fa fa-check"></i>100元購物金
						</p>
						<p>
							<i class="fa fa-check"></i>滿2000送100
						</p>
						<div class="button-area">
							<a href="project" class="btn btn-common">詳情</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-4 wow">
				<div class="pricing-table pricing-table-x">
					<div class="table-header">
						<h3>黃金會員</h3>
					</div>
					<div class="plan">
						<h3 class="price">消費1元以上</h3>
					</div>
					<div class="plan-info">
						<p>
							<i class="fa fa-check"></i> 滿1000再95折
						</p>
						<p>
							<i class="fa fa-check"></i> 紅利點數1點
						</p>
						<div class="button-area">
							<a href="project" class="btn btn-common">詳情</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<!-- footers  -->
	<jsp:include page="../footer.jsp"></jsp:include>
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