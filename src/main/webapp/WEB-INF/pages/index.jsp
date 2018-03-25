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
		<nav class="navbar navbar-expand-md fixed-top scrolling-navbar nav-bg">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<a class="navbar-brand" href="/"> <img style="position: left"
						src="/images/logo.png" alt="">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#main-menu" aria-controls="main-menu"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="main-menu">
					<ul class="navbar-nav mr-auto w-100 justify-content-end">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle active" href="index.jsp"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								首頁 </a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">最新消息</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="">認養活動</a> <a
									class="dropdown-item" href="">寵物保健</a> <a class="dropdown-item"
									href="">演講座談</a>

							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">寵物市集</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="">新品上市</a> <a
									class="dropdown-item" href="l">好康優惠</a> <a
									class="dropdown-item" href="l">寵物飲食</a> <a
									class="dropdown-item" href="">寵物用品</a>
							</div></li>
						</li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">寵物旅店</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="">旅店簡介</a> <a
									class="dropdown-item" href="">房型價格</a> <a class="dropdown-item"
									href="">特色設備</a> <a class="dropdown-item" href="">線上訂房</a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">寵物醫院</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="">各區醫院</a> <a
									class="dropdown-item" href="">線上掛號</a> <a class="dropdown-item"
									href="">看診進度查詢</a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">部落格分享</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="">本周最新</a> <a
									class="dropdown-item" href="">熱門文章</a> <a class="dropdown-item"
									href="">精選圖文</a>
							</div></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">會員登入/註冊</a></li>
					</ul>
					<form class="form-inline">
						<div class="top_search_con">
							<input class=" mr-sm-2" type="text" placeholder="站內搜尋 ...">
							<span class="top_search_icon"> <i class="icon-magnifier"></i>
							</span>
						</div>
					</form>
				</div>

				<!-- Mobile Menu Start -->
				<ul class="wpb-mobile-menu">
					<li><a class="active" href="index.jsp">首頁</a></li>
					<li><a href="#">最新消息</a>
						<ul>
							<li><a href="">認養活動</a></li>
							<li><a href="">寵物保健</a></li>
							<li><a href="">演講座談</a></li>
						</ul></li>
					<li><a href="#">寵物市集</a>
						<ul>
							<li><a href="">新品上市</a></li>
							<li><a href="">好康優惠</a></li>
							<li><a href="">寵物飲食</a></li>
							<li><a href="">寵物用品</a></li>
						</ul></li>
					<li><a href="#">寵物旅店</a>
						<ul>
							<li><a href="">旅店簡介</a></li>
							<li><a href="">房型價格</a></li>
							<li><a href="">特色設備</a></li>
							<li><a href="">線上訂房</a></li>
						</ul></li>
					<li><a href="#">寵物醫院</a>
						<ul>
							<li><a href="">各區醫院</a></li>
							<li><a href="">線上掛號</a></li>
							<li><a href="">看診進度查詢</a></li>
						</ul></li>
					<li><a href="#">部落格分享</a>
						<ul>
							<li><a href="">本周最新</a></li>
							<li><a href="">熱門文章</a></li>
							<li><a href="">精選圖文</a></li>
						</ul></li>
					<li><a href="#">會員登入/註冊</a></li>
				</ul>
				<!-- Mobile Menu End -->
			</div>
		</nav>
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
	<!-- Header-wrap Section End -->

	<!-- 中途之家頁面 -->
	<section id="service-block-main" class="section">
		<!-- 重複的內容開始 -->
		<div class="container">
			<h1 class="section-title wow fadeIn animated" data-wow-delay=".2s">
				中途專區</h1>
			<div class="row">
				<c:forEach var="animal" items="${animals}">

					<div class="col-md-4">
						<div class="card mb-4 box-shadow">
							<img class="card-img-top" src="/images/adopt/cats/ad-cat2.jpg"
								width="100px" alt="待領養小貓">
							<div class="card-body" style="margin-bottom: 5px">
								<p class="card-text" style="padding: 0px">
									編號：${animal.id} 綽號：${animal.name} 種類：${animal.specie}
									顏色：${animal.color} 發現日期：${animal.found} 縣市：${animal.city}
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
		</div>
		<!-- 重複的內容結束 -->
	</section>
	<!-- 中途之家結束 -->
	<!-- 最新消息開始 -->
	<section>
		
		<!-- Container Starts -->
		<div class="container">
			<h1 class="section-title wow fadeIn animated" data-wow-delay=".2s">
				最新活動專區</h1>

			<div class="row">
				<c:forEach var="news" items="${allNews}">
					<div class="col-md-4">
						<div class="card mb-4 box-shadow">
							<img class="card-img-top" src="/images/adopt/cats/ad-cat2.jpg"
								width="80px" alt="醫院">
							<div class="card-body" style="margin-bottom: 5px">
								<p class="card-text" style="padding: 0px">活動編號：${news.seqno}</p>
								<p class="card-text" style="padding: 0px">活動名稱：${news.subject}</p>
								<p class="card-text" style="padding: 0px">活動內文：${news.content}</p>
								<p class="card-text" style="padding: 0px">更新時間：${news.updateTime}</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-common btn-sm mt-20">詳情</button>
										<button type="button" class="btn btn-common btn-sm mt-20">報名</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

			<!-- Service-Block-000 Item Ends -->
		</div>
		<!-- Container Ends -->


	</section>

	<!-- 最新消息結束 -->
	<!-- 寵物市集頁面 -->
	<!-- Portfolio Section -->
	<section id="portfolios" class="section">
		<!-- Container Starts -->
		<div class="container">
			<h1 class="section-title wow fadeInUpQuick" data-wow-delay=".3s">
				寵物市集</h1>
			<p class="section-subcontent wow fadeInUpQuick" data-wow-delay=".4s">
				全館商品九折優惠中！！ <br> blanditiis praesentium
			</p>
			<div class="row">
				<div class="col-md-12">
					<!-- Portfolio Controller/Buttons -->
					<div class="controls text-center">
						<a class="filter active btn btn-common" data-filter="all">
							全項商品 </a> <a class="filter btn btn-common" data-filter=".branding">
							狗 </a> <a class="filter btn btn-common" data-filter=".marketing">
							貓 </a> <a class="filter btn btn-common" data-filter=".planning">
							鼠 </a> <a class="filter btn btn-common" data-filter=".research">
							兔 </a> <a class="filter btn btn-common" data-filter=".research">
							其他 </a>
					</div>
					<!-- Portfolio Controller/Buttons Ends-->
				</div>
			</div>
		</div>
		<section id="service-block-main" class="section">
			<!-- 重複的內容開始 -->
			<div class="container">
				<div class="row">
					<c:forEach var="productBeans" items="${productBeans}">
						<div class="col-md-4">
							<div class="card mb-4 box-shadow">
								<img class="card-img-top" src="/images/adopt/cats/ad-cat2.jpg"
									width="100px" alt="待領養小貓">
								<div class="card-body" style="margin-bottom: 5px">
									<p class="card-text" style="padding: 0px">商品編號：${productBeans.id}商品名稱：${productBeans.name}</p>
									<p class="card-text" style="padding: 0px">價格：${productBeans.price}數量：${productBeans.quantity}</p>
									<p class="card-text" style="padding: 0px">製造日期：${productBeans.make}</p>
									<p class="card-text" style="padding: 0px">保存期限：${productBeans.expire}</p>
									<div class="d-flex justify-content-between align-items-center"
										style="max-height: 100px">
										<div class="btn-group" style="margin: 0px">
											<button type="button" class="btn btn-common btn-sm mt-10">預覽</button>
											<button type="button" class="btn btn-common btn-sm mt-10">購買</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
		<!-- 重複的內容結束 -->
	</section>
	<!-- 寵物市集結束 -->
	<!-- 寵物旅館開始 -->
	<section id="service-block-main" class="section">
		<!-- 重複的內容開始 -->
		<div class="container">
			<h1 class="section-title wow fadeIn animated" data-wow-delay=".2s">
				最新空房</h1>
			<div class="row">
				<c:forEach var="avar" items="${hotelBean}">

					<div class="col-md-4">
						<div class="card mb-4 box-shadow">
							<img class="card-img-top" src="/images/adopt/cats/英短毛專題用圖.jpeg"
								width="100px" alt="待領養小貓">
							<div class="card-body" style="margin-bottom: 5px">
								<p class="card-text" style="padding: 0px">
									房號：${avar.hotelId} 房型：${avar.type}</p>
								<div class="d-flex justify-content-between align-items-center"
									style="max-height: 100px">
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

	<!-- 寵物旅館結束 -->


	<!-- 醫院開始 -->
	<section id="service-block-main" class="section">
		<!-- Container Starts -->
		<div class="container">
			<h1 class="section-title wow fadeIn animated" data-wow-delay=".2s">
				醫院資訊專區</h1>

			<div class="row">
				<c:forEach var="hosp" items="${hospitals}">
					<div class="col-md-4">
						<div class="card mb-4 box-shadow">
							<img class="card-img-top" src="/images/adopt/cats/ad-cat2.jpg"
								width="80px" alt="醫院">
							<div class="card-body" style="margin-bottom: 5px">
								<p class="card-text" style="padding: 0px">醫院ID :
									${hosp.id}</p>
								<p class="card-text" style="padding: 0px">醫院名稱 :
									${hosp.name}</p>
								<p class="card-text" style="padding: 0px">醫院電話 :
									${hosp.tel}</p>
								<div class="d-flex justify-content-between align-items-center">
									<div class="btn-group">
										<button type="button" class="btn btn-common btn-sm mt-20">詳情</button>
										<button type="button" class="btn btn-common btn-sm mt-20">預約</button>
									</div>
									<small class="text-muted">bye</small>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

			<!-- Service-Block-000 Item Ends -->
		</div>
		<!-- Container Ends -->
	</section>
	<!-- 醫院結束 -->


	<!-- Blog Section -->
	<section id="blog" class="section">
		<!-- Container Starts -->
		<div class="container">
			<h1 class="section-title wow fadeInUpQuick">The Blog</h1>
			<p class="section-subcontent">
				At vero eos et accusamus et iusto odio dignissimos ducimus qui <br>
				blanditiis praesentium
			</p>
			<!-- Row Starts -->
			<div class="row">
				<c:forEach var="article" items="${articles}">
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<!-- Blog Item Starts -->
						<div class="blog-item-wrapper" style="height: 405px;">
							<div class="blog-item-img">
								<a href="#"> <img src="/images/adopt/cats/ad-cat1.jpg"
									alt="">
								</a>
							</div>
							<div class="blog-item-text">

								<h3 class="small-title" style="height: 60px;">

									<a href="#">${article.subject}</a>

								</h3>

								<p
									style="text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">
									${article.content}</p>
								<div class="blog-one-footer">
									<a href="#">Read More</a> <a href="#"> <i
										class="icon-heart"></i> 59 Likes
									</a> <a href="#"> <i class="icon-bubbles"></i> 120 Comments
									</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>


				<!-- Blog Item Wrapper Ends-->


			</div>


		</div>
		<!-- Container Ends -->
	</section>
	<!-- blog Section End -->


	<!-- Pricing Table Section -->
	<section id="pricing" class="section">
		<div class="container">
			<h1 class="section-title wow fadeInUpQuick" data-wow-delay=".2s">
				Our Pricing</h1>
			<p class="section-subcontent wow fadeInUpQuick" data-wow-delay=".3s">
				At vero eos et accusamus et iusto odio dignissimos ducimus qui <br>
				blanditiis praesentium
			</p>
			<div class="row">
				<div class="col-md-4">
					<div class="pricing-table pricing-table-x">
						<div class="table-header">
							<h3>贊助我們</h3>
						</div>
						<div class="plan">
							<h3 class="price">NT49</h3>
						</div>
						<div class="plan-info">
							<p>
								<i class="fa fa-check"></i> 100點紅利積點
							</p>
							<p>
								<i class="fa fa-check"></i> 最新商品8折優惠
							</p>
							<div class="button-area">
								<a href="#" class="btn btn-common"> 贊助 </a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="pricing-table pricing-table-x">
						<div class="table-header highlight">
							<h3>贊助我們</h3>
						</div>
						<div class="plan">
							<h3 class="price">NT259</h3>
						</div>
						<div class="plan-info">
							<p>
								<i class="fa fa-check"></i>每月新增上限50隻
							</p>
							<p>
								<i class="fa fa-check"></i>300點紅利積點
							</p>
														<div class="button-area">
								<a href="#" class="btn btn-common">贊助</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4 wow">
					<div class="pricing-table pricing-table-x">
						<div class="table-header">
							<h3>成為VIP</h3>
						</div>
						<div class="plan">
							<h3 class="price">每月NT199</h3>
						</div>
						<div class="plan-info">
							<p>
								<i class="fa fa-check"></i> 不限次數使用本站功能
							</p>
							<p>
								<i class="fa fa-check"></i> 600點紅利積點
							</p>
														<div class="button-area">
								<a href="#" class="btn btn-common">贊助</a>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!-- Pricing Table  End -->


	F
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