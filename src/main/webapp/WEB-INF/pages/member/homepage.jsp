<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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

<!-- style/css -->
<style>
</style>
<!-- style/css:end -->
</head>

<body>
	<!-- Header area wrapper starts -->
	<header id="header-wrap">
		<!-- Navbar Starts -->
		<jsp:include page="../navbar.jsp"></jsp:include>
		<!-- Navbar ends -->
	</header>

	<!-- Classic Blog Section -->
	<section class="classic-blog-section section">
		<div class="container">
			<div class="row">
				<!-- Blog Sidebar Section -->
				<div class="col-md-3">

					<div class="sidebar-area">
						<!-- Search Bar -->
						<aside class="widget search-bar wow fadeIn" data-wow-delay="0.3s">
							<div>
								<div class="card mb-3 box-shadow" id="eachdiv2">
									<span> <img class="card-img-top"
										src="/memberImage?fileName=" width="100px" alt="${member.id}">
									</span>
									<div class="card-body" style="margin-bottom: 5px">
										<p class="card-text" style="padding: 0px">${member.account}</p>
										<p class="card-text" style="padding: 0px">暱稱：${member.nickname}</p>
										<small class="text-muted"></small>

										<div class="d-flex justify-content-between align-items-center"
											style="max-height: 100px">
											<div class="btn-group" style="margin: 0px">
												<button type="button" onclick=""
													class="btn btn-common btn-sm mt-10">add</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</aside>
						<!-- Text Widgets -->
						<!-- Recent Post Widgets -->

						<!-- Category -->
						<aside class="widget flickr-widget wow fadeIn"
							data-wow-delay="0.3s">
							<h2 class="widget-title">${member.account}</h2>
							<ul></ul>
							<ul class="category-menu">
								<li><a href="#">xxxx</a></li>
								<li><a href="#">我的最愛</a></li>
								<li><a href="/update">修改個人資料</a></li>
								<li><a href="/">通知</a></li>								
<!-- 								<li><a href="/logout">登出</a></li> -->
							</ul>
						</aside>
						<!-- Subscribe Widget -->
						<!-- Tag Cloud -->

					</div>
				</div>
				<!-- End -->

				<!-- BLog Article Section -->
				<div class="col-md-9">
					<!-- Single Blog Post -->
					<!-- 每頁不同的內容從這裡開始 -->

					<h3>${member.account}的個人首頁</h3>

<!-- 					<table id="table1" -->
<!-- 						class="table table-bordered table-striped table-hover"> -->

<!-- 						<tbody> -->
<!-- 							<tr> -->
<!-- 								<td>帳號</td> -->
<%-- 								<td id="acco">${member.account}</td> --%>
<!-- 								<td></td> -->
<!-- 							</tr> -->

<!-- 							<tr> -->
<!-- 								<td></td> -->
<%-- 								<td>${profile.nickname}</td> --%>
<!-- 								<td></td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<td>登入次數</td> -->
<!-- 								<td></td> -->
<!-- 								<td></td> -->
<!-- 							</tr> -->

<!-- 						</tbody> -->
<!-- 					</table> -->
					<h3>已發過的動物資料</h3>
					<div class="row">
					<c:forEach var="animal" items="${animalls}">
					<div class="col-md-3">
						<div class="card mb-3 box-shadow">
							<img class="card-img-top"
								src="/showAnimalImage?fileName=${animal.fileName}" width="100px"
								alt="待領養小貓">
							<div class="card-body" style="margin-bottom: 5px">
								<p class="card-text" style="padding: 0px">狀態：${animal.status}</p>
								<p class="card-text" style="padding: 0px">編號：${animal.id}
									綽號：${animal.name} 種類：${animal.specie} 顏色：${animal.color}
									發現日期：${animal.found} 縣市：${animal.city.name} 鄉鎮市區：${animal.district}
								</p>
								<div class="d-flex justify-content-between align-items-center"
									style="max-height: 100px">
									<div class="btn-group" style="margin: 0px">
										<button type="button"
											onclick="location.href='/halfway/detail?id=${animal.id}';"
											class="btn btn-common btn-sm mt-10">詳情</button>
									</div>
									<small class="text-muted">${animal.upload}</small>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				</div>				
					<!-- 每頁不同的內容到這裡結束 -->
				<h3>發文過的資料</h3>
				<!-- Row Starts -->
			<div class="row">
				<c:forEach var="article" items="${articles}">
				<div class="col-md-5 card mb-5 box-shadow">
<!-- 					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"> -->
						<!-- Blog Item Starts -->
						<div class="blog-item-wrapper" style="height: 405px;">
							<div class="blog-item-img">
								<a href="/forum/findOne?id=${article.id}"> <img style="width:320px;height:220px;padding:10px;" src="${article.images}"
									alt="">
								</a>
							</div>
							<div class="blog-item-text">

								<h3 class="small-title" style="height: 60px;">

									<a href="/forum/findOne?id=${article.id}"><c:out value="${article.subject}"/></a>

								</h3>

								
								<div class="blog-one-footer">
									<a href="/forum/findOne?id=${article.id}">Read More</a> <a
										href="#"> <i class="icon-heart"></i> 0 Likes
									</a> <a href="/forum/findOne?id=${article.id}#comment"> <i
										class="icon-bubbles"></i> ${article.commentLength} Comments
									</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>


				<!-- Blog Item Wrapper Ends-->


			
				
				
				
				</div>
				<!-- Blog Pagination -->
				<!-- 分頁開始 -->
				<div class="blog-pagination clearfix wow fadeIn"
					data-wow-delay="0.3s"></div>
				<!-- 分頁結束 -->
			</div>
			<!-- End -->
		</div>
		</div>
	</section>
	<!-- Classic Blog Section End -->


	<!-- Footer Section -->
	<!-- (footer.jsp) -->
	<jsp:include page="../footer.jsp"></jsp:include>
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


	<script
		src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
	<script src="/js/jquery-3.3.1.min.js"></script>

	<script>
		
	</script>
</body>

</html>