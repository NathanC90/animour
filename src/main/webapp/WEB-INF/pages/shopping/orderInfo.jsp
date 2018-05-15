<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html lang="zh-tw">

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
<title>訂單查詢</title>
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
						<h2>訂單查詢</h2>
					</div>
				</div>
 			</div>
		</div>
	</div>
	<!-- Page Header End -->
	
	<!-- 表格內容開始 -->
<!-- 	<section class="section"> -->
<!-- 		<div class="container"> -->
<!-- 			<h1 class="section-title wow fadeIn" data-wow-delay="0.1s">訂單明細表</h1> -->
<!-- 			<div class="row"> -->
<!-- 				<table class="table"> -->
<!-- 					<thead class="thead-light"> -->
<!-- 						<tr> -->
<!-- 							<th scope="col">訂單編號</th> -->
<!-- 							<th scope="col">訂單日期</th> -->
<!-- 							<th scope="col">商品名稱</th> -->
<!-- 							<th scope="col">商品數量</th> -->
<!-- 							<th scope="col">商品單價</th> -->
<!-- 						</tr> -->
<!-- 					</thead> -->
<!-- 					<tbody> -->
<%-- 					<c:forEach var="orders" items="${memberOrders}"> --%>
<!-- 						<tr> -->
<%-- 							<th scope="row">${orders.id}</th> --%>
<%-- 							<td>${orders.orderDate}</td> --%>
<%-- 								<c:forEach var="ordersItem" items="${orders.ordersItem}"> --%>
<!-- 								<tr> -->
<%-- 									<td>${ordersItem.name}</td> --%>
<%-- 									<td>購買數量：${ordersItem.quantity}</td> --%>
<%-- 									<td>商品價格：${ordersItem.price}</td> --%>
<!-- 								</tr> -->
<%-- 								</c:forEach> --%>
<!-- 						</tr> -->
<%-- 						</c:forEach> --%>
<!-- 					</tbody> -->
<!-- 				</table> -->
<!-- 			</div> -->

<!-- 		</div> -->
<!-- 	</section> -->
	
	<!-- Classic Blog Section -->
	<section class="classic-blog-section section">
		<div class="container">
			<div class="row">
					每頁不同的內容從這裡開始
					<div style="margin-top: 50px; margin: auto"
						class="mainbox col-md-12 col-md-offset-3 col-sm-8 col-sm-offset-2">
						<div class="panel panel-info" style="border: 1px">

							<div style="padding-top: 30px" class="panel-body">
								<div style="display: none" id="login-alert"
									class="alert alert-danger col-sm-12"></div>
									<table class="table">
										<c:forEach var="orders" items="${memberOrders}">
												<tr><td>訂單編號：${orders.id}</td></tr>
												<tr><td>訂單日期：${orders.orderDate}</td></tr>
											<c:forEach var="ordersItem" items="${orders.ordersItem}">
												<tr>
													<td>商品名稱：${ordersItem.name}</td>
													<td>購買數量：${ordersItem.quantity}</td>
													<td>商品價格：${ordersItem.price}</td>
												</tr>
											</c:forEach>
										</c:forEach>
									</table>
							</div>
						</div>
					</div>
					每頁不同的內容到這裡結束
			</div>
		</div>
	</section>
	<!-- Classic Blog Section End -->
	
<!-- Footer Section -->
	<footer>
	<jsp:include page="../footer.jsp"></jsp:include>
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