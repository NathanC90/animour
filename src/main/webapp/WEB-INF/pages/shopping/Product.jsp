<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
<title>Product Detail</title>
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
						<h2>商品詳情</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Page Header End -->

	<!-- Page Content Start 重複的內容開始 -->
	<section class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-5 about2-intro-image">
					<img class="card-img-top"
						src="${product.images}" width="100px" alt="${product.name}">
				</div>
				<div class="col-md-6">
					<h3 class="small-title">品名:&nbsp;&nbsp;&nbsp;${product.name}</h3>
					<div id="default-tab" class="mt-10">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active" href="#productDetail"
								aria-controls="productDetail" role="tab" data-toggle="tab">商品詳細介紹</a></li>
							<li class="nav-item"><a class="nav-link" href="#productSepc"
								aria-controls="productSepc" role="tab" data-toggle="tab">商品規格</a></li>
							<li class="nav-item"><a class="nav-link" href="#precattention"
								aria-controls="precattention" role="tab" data-toggle="tab">注意事項</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="productDetail">
								<p class="card-text" style="padding: 0px">商品名稱：${product.name}</p>
								<p class="card-text" style="padding: 0px">編號：${product.id}</p>
								<p class="card-text" style="padding: 0px">商品名稱：${product.name}</p>
								<p class="card-text" style="padding: 0px">種類：${product.classify.name}</p>
								<p class="card-text" style="padding: 0px">價格：${product.price}</p>
							</div>
							<div role="tabpanel" class="tab-pane" id="productSepc">
								<p>${product.description}</p>
							</div>
							<div role="tabpanel" class="tab-pane" id="precattention">
								<div role="tabpanel" class="tab-pane" id="precattention">
									<p>${product.notice}</p>
								</div>
							</div>
						</div>
					</div>
					<div>
						<a href="<spring:url value='/product/index' />" class='btn btn-primary'> <span
							class='glyphicon-info-sigh glyphicon'></span> 返回
						</a>
						<a href="/cart/buy/${product.id}" class='btn btn-warning btn-large'> <span
									class='glyphicon-shopping-cart glyphicon'></span> 加入購物車
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 重複的內容結束 -->

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
