<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>
<html lang="zh-tw">
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
<script defer
	src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
<script src="/js/jquery-min.js"></script>
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
						<h2>購物清單</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Page Header End -->

	<section class="classic-blog-section section">
		<div class="container">
			<div class="row">
				<form action="/cart/update" method="POST">
					<table class="table" border="1">
						<thead class="thead-dark">
							<tr>
								<td>品名</td>
								<td>價格</td>
								<td>數量
									<input value="update" type="submit">
								</td>
								<td>小計</td>
								<td>Option</td>
							</tr>
						</thead>
						<c:set var="total" value="0"></c:set>
						<c:forEach var="cartItem" items="${sessionScope.cart}"
							varStatus="i">
							<c:set var="total"
								value="${total + cartItem.product.price * cartItem.quantity}"></c:set>
							<tr>
								<td>${cartItem.product.name}</td>
								<td>${cartItem.product.price}</td>
								<td>
									<input type="number" value="${cartItem.quantity}" min="0" 
										max="${cartItem.product.stock}" name="quantity">
								</td>
								<td>${cartItem.product.price * cartItem.quantity}</td>
								<td><a href="/cart/delete/${i.index}">刪除</a></td>
							</tr>
						</c:forEach>
						<tr>
							<td colspan="4"><span>總價</span></td>
							<td>${total}元</td>
						</tr>
					</table>
				</form>
			</div>
			<a href="/product/index" class='btn btn-primary'> <span
							class='glyphicon-info-sigh glyphicon'></span>繼續購物</a>&nbsp;&nbsp;&nbsp;
			<a href="/cart/removeShoppingCart" class='btn btn-primary'> <span
							class='glyphicon-info-sigh glyphicon'></span>清空購物車</a>&nbsp;&nbsp;&nbsp;
			<a href="/cart/confirmBuy" class='btn btn-warning btn-large'> <span
							class='glyphicon-shopping-cart glyphicon'></span>確定購買</a>
		</div>
	</section>
</body>
</html>