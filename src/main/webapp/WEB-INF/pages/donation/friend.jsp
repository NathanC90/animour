<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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

<title>���ڬ����d��</title>

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
	<h3>${donate.name}</h3>
	<!-- �����W��s�� �A�|�\��᭱���r-->
	<header id="header-wrap"> <!-- Navbar Starts --> <jsp:include
		page="../navbar.jsp"></jsp:include> <!-- Navbar ends --> </header>
	<br>
	<div class="container">
		<img class="card-img-top" src="/images/donate/rabbit.png" alt="">
	</div>
	<ul class="nav justify-content-center">
		<li class="nav-item"><h5>
				<a class="nav-link active" href="donate">�|���֧Q</a>
			</h5></li>
		<li class="nav-item"><h5>
				<a class="nav-link" href="project">&nbsp;|&nbsp;���ڶ���</a>
			</h5></li>
		<li class="nav-item"><h5>
				<a class="nav-link" href="explain">&nbsp;|&nbsp;�٧U�覡</a>
			</h5></li>
		<li class="nav-item"><h5>
				<a class="nav-link" href="#">&nbsp;|&nbsp;���ڦW��</a>
			</h5></li>
	</ul>

	<div class="container">
		<h3>�٧U�٦�</h3>
		<h5>�P�±z�̪����</h5>
		<hr>
		<ul>
			<li>
				<h5>�p�۷|��</h5>
				<hr>
			</li>
			<li>
				<h5>�ժ��|��</h5>
				<hr>
			</li>
			<li>
				<h5>�����|��</h5>
				<hr>
			</li>
		</ul>
		<hr>
	</div>

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