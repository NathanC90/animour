<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

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
					class="nav-link dropdown-toggle" href="/newsIndex" 
					aria-haspopup="true" aria-expanded="false">最新消息</a>
					<div class="dropdown-menu">
						<!--<a class="dropdown-item" href="/NewsIndex">認養活動</a> <a class="dropdown-item"
							href="">寵物保健</a> <a class="dropdown-item" href="">演講座談</a> -->

					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="/halfway"
					aria-haspopup="true" aria-expanded="false">中途專區</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="/halfway">認養搜尋</a> 
<!-- 						<a class="dropdown-item" -->
<!-- 							href="">寵物保健</a> <a class="dropdown-item" href="">演講座談</a> -->

					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="/product/index" >寵物市集</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="/product/index">新品上市</a> 
<!-- 						<a class="dropdown-item" href="l">好康優惠</a> -->
<!-- 						<a class="dropdown-item" href="l">寵物飲食</a> -->
<!-- 						<a class="dropdown-item" href="l">寵物用品</a> -->
					</div></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="/salon/getAll" 
					aria-haspopup="true" aria-expanded="false">寵物salon</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="">salon簡介</a> <a class="dropdown-item"
							href="">salon價格</a> <a class="dropdown-item" href="">特色設備</a> <a
							class="dropdown-item" href="/appointment">reservation</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="/hospital"
					aria-haspopup="true" aria-expanded="false">寵物醫院</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="/hospital">各區醫院</a>
						<a class="dropdown-item" href="/findorder">預約結果查詢</a>
						<!-- 								 <a class="dropdown-item" href="">看診進度查詢</a> -->
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="/forum/findAll?pageNo=1"
					aria-haspopup="true" aria-expanded="false">部落格分享</a>
					<div class="dropdown-menu">
<!-- 						<a class="dropdown-item" href="/forum/findAll">本周最新</a> -->
						<!-- 								<a class="dropdown-item" href="">熱門文章</a>  -->
						<!-- 								<a class="dropdown-item" href="">精選圖文</a> -->
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="/sign_in" 
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
				<!-- <ul>
					<li><a href="">認養活動</a></li>
					<li><a href="">寵物保健</a></li>
					<li><a href="">演講座談</a></li>
				</ul>--></li>
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
					<li><a href="">預約結果查詢</a></li>
					<li><a href=""></a></li>
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
</body>
</html>