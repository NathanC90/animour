<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<!doctype html>
		<html lang="en">

		<head>
			<!--Icon Tags start -->
			<link rel="apple-touch-icon" sizes="57x57" href="/images/icon/apple-icon-57x57.png">
			<link rel="apple-touch-icon" sizes="60x60" href="/images/icon/apple-icon-60x60.png">
			<link rel="apple-touch-icon" sizes="72x72" href="/images/icon/apple-icon-72x72.png">
			<link rel="apple-touch-icon" sizes="76x76" href="/images/icon/apple-icon-76x76.png">
			<link rel="apple-touch-icon" sizes="114x114" href="/images/icon/apple-icon-114x114.png">
			<link rel="apple-touch-icon" sizes="120x120" href="/images/icon/apple-icon-120x120.png">
			<link rel="apple-touch-icon" sizes="144x144" href="/images/icon/apple-icon-144x144.png">
			<link rel="apple-touch-icon" sizes="152x152" href="/images/icon/apple-icon-152x152.png">
			<link rel="apple-touch-icon" sizes="180x180" href="/images/icon/apple-icon-180x180.png">
			<link rel="icon" type="image/png" sizes="192x192" href="/images/icon/android-icon-192x192.png">
			<link rel="icon" type="image/png" sizes="32x32" href="/images/icon/favicon-32x32.png">
			<link rel="icon" type="image/png" sizes="96x96" href="/images/icon/favicon-96x96.png">
			<link rel="icon" type="image/png" sizes="16x16" href="/images/icon/favicon-16x16.png">
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
			<link rel="stylesheet" media="screen" href="/fonts/font-awesome/font-awesome.min.css">
			<link rel="stylesheet" media="screen" href="/fonts/simple-line-icons.css">

			<!-- Extras -->
			<link rel="stylesheet" type="text/css" href="/extras/owl/owl.carousel.css">
			<link rel="stylesheet" type="text/css" href="/extras/owl/owl.theme.css">
			<link rel="stylesheet" type="text/css" href="/extras/animate.css">
			<link rel="stylesheet" type="text/css" href="/extras/normalize.css">


			<!-- Color CSS Styles  -->
			<link rel="stylesheet" type="text/css" href="/css/colors/green.css" media="screen" />

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
								<h2>中途專區 ${mapsize}</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Page Header End -->

			<!-- Call to action section -->
			<section class="cta-section section" style="background: url(/images/halfway/halfwayindex.jpg) scroll center center; width: 100%; height: 100%; position: relative;">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="cta-area">
								<div class="cta-content text-center">
									<h2>幫助浪浪找到他們的家</h2>
									<p>也別讓他們成為浪浪TT</p>
									<a href="/insertAnimal" class="btn btn-common">
										<i class="fa fa-envelope"></i> 我要送養</a>
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
									<form action="/queryContaining">
										<input type="text" placeholder="Search" class="form-control" name="name">
										<button type="submit">
											<i class="fa fa-search"></i>
										</button>
									</form>
								</aside>
								<!-- Text Widgets -->
								<aside class="widget text-widgets wow fadeIn" data-wow-delay="0.3s">
									<h2 class="widget-title">Text Widget</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur dolorem fuga ad corrupti, ullam, eos natus, repellat
										officiis sit labore a aspernatur quisquam. In, unde.</p>
								</aside>

								<!--Start of Category -->
								<aside class="widget flickr-widget wow fadeIn" data-wow-delay="0.3s">
									<h2 class="widget-title">Category</h2>
									<ul class="category-menu">
										<li>
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="狗" id="defaultCheck1" name="speciecheck">
												<label class="form-check-label" for="defaultCheck1"> 狗 (31) </label>
											</div>
										</li>
										<li>
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="貓" id="defaultCheck2" name="speciecheck">
												<label class="form-check-label" for="defaultCheck1"> 貓 (16) </label>
											</div>
										</li>
										<li>
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="兔" id="defaultCheck3" name="speciecheck">
												<label class="form-check-label" for="defaultCheck1"> 兔 (2) </label>
											</div>
										</li>
										<li>
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="鼠" id="defaultCheck4" name="speciecheck">
												<label class="form-check-label" for="defaultCheck1"> 鼠 (7) </label>
											</div>
										</li>
										<li>
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="鳥" id="defaultCheck5" name="speciecheck">
												<label class="form-check-label" for="defaultCheck1"> 鳥 (7) </label>
											</div>
										</li>
										<li>
											<div class="form-check">
												<input class="form-check-input" type="checkbox" value="其他" id="defaultCheck6" name="speciecheck">
												<label class="form-check-label" for="defaultCheck1"> 其他 (7) </label>
											</div>
										</li>
									</ul>
								</aside>
								<!--End of Category -->

								<!--Start of Region -->
								<aside class="widget flickr-widget wow fadeIn" data-wow-delay="0.3s">
									<h2 class="widget-title">縣市</h2>
									<form name="/queryByCity" action="/queryByCity" method="GET">
										<ul class="category-menu">
											<c:forEach var="citys" items="${citys}">
												<li>
													<div class="form-check">
														<input class="form-check-input" type="checkbox" value="${citys.id}" id="defaultCheck1" name="citycheck">
														<label class="form-check-label" for="defaultCheck1">${citys.name} (${citys.animalCount}) </label>
													</div>
												</li>
											</c:forEach>
										</ul>
										<input type="submit" class="btn btn-common" value="搜尋">
									</form>
								</aside>
								<!--End of Region -->
							</div>
						</div>
						<!-- End -->

						<!-- BLog Article Section -->
						<div class="col-md-9">
							<!-- Single Blog Post -->
							<div class="row" id="each">
								<c:forEach var="animal" items="${animalpage.content}">

									<div class="col-md-3" id="eachdiv1">
										<div class="card mb-3 box-shadow" id="eachdiv2">
											<!-- 									<img class="card-img-top" src="/images/adopt/cats/ad-cat2.jpg" -->
											<!-- 										width="100px" alt="待領養小貓"> -->
											<img class="card-img-top" src="/showAnimalImage?fileName=${animal.fileName}" width="100px" alt="${animal.id}">
											<div class="card-body" style="margin-bottom: 5px">
												<p class="card-text" style="padding: 0px">狀態：${animal.status}</p>
												<p class="card-text" style="padding: 0px">編號：${animal.id} 綽號：${animal.name} 種類：${animal.specie} 顏色：${animal.color} 發現日期：${animal.found} 縣市：${animal.city.name}
													鄉鎮市區：${animal.district}
												</p>
												<small class="text-muted">${animal.upload}</small>
												<ul>
													<li>
														縣市：${animal.city.name}
													</li>
													<li>
														綽號：${animal.name}
													</li>
													<li>
														發現日期：${animal.found}
													</li>
													<li>
														鄉鎮市區：${animal.district}
													</li>
													<li>
														縣市：${animal.city.name}
													</li>
													<li>
														縣市：${animal.city.name}
													</li>
												</ul>
												<div class="d-flex justify-content-between align-items-center" style="max-height: 100px">
													<div class="btn-group" style="margin: 0px">
														<button type="button" onclick="location.href='/halfway/detail?id=${animal.id}';" class="btn btn-common btn-sm mt-10">詳情</button>
														<c:if test="${animal.member.id eq currentMember.id}">
															<button type="button" onclick="location.href='/halfway/updateAnimal?id=${animal.id}';" class="btn btn-common btn-sm mt-10">更新</button>
														</c:if>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
							<!-- Slider Post -->

							<!-- Blog Pagination -->
							<c:choose>
								<c:when test="${animalpage.totalPages <=3}">
									<c:set var="begin" value="1" />
									<c:set var="end" value="${animalpage.totalPages}" />
								</c:when>
								<c:otherwise>
									<c:set var="begin" value="${animalpage.number+1-1}" />
									<c:set var="end" value="${animalpage.number+1+2}" />
									<c:if test="${begin < 2 }">
										<c:set var="begin" value="1" />
										<c:set var="end" value="3" />
									</c:if>
									<c:if test="${end > animalpage.totalPages}">
										<c:set var="begin" value="${animalpage.totalPages-2 }" />
										<c:set var="end" value="${animalpage.totalPages}" />
									</c:if>
								</c:otherwise>
							</c:choose>

							<div class="blog-pagination clearfix wow fadeIn" data-wow-delay="0.3s">
								<nav aria-label="..." class="">
									<ul class="pagination">
										<!-- 		如果現在在首頁，隱藏上一頁 -->
										<c:choose>
											<%-- first 回傳布林值 --%>
												<c:when test="${animalpage.first}">
													<%-- 結果為true代表現在在第一頁，隱藏上一頁 --%>
												</c:when>
												<c:otherwise>
													<li class="page-item">
														<a class="page-link" href="/halfway/pageQueryAll?page=${animalpage.number}" tabindex="-1" aria-label="Previous">
															<i class="fa fa-angle-left"></i> Prev
															<span class="sr-only">Previous</span>
														</a>
													</li>
												</c:otherwise>
										</c:choose>
										<!-- 	顯示第一頁的頁碼 -->
										<c:if test="${begin >=2}">
											<li class="page-item">
												<a class="page-link" href="#">1</a>
											</li>
										</c:if>

										<c:forEach begin="${begin}" end="${end}" var="i">
											<c:choose>
												<c:when test="${i eq animalpage.number+1}">
													<li class="page-item active">
														<a class="page-link" href="/halfway/pageQueryAll?page=${animalpage.number}">${i}
															<span class="sr-only">(current)</span>
														</a>
													</li>
												</c:when>
												<c:otherwise>
													<li class="page-item">
														<a class="page-link" href="/halfway/pageQueryAll?page=${i}">${i}</a>
													</li>
												</c:otherwise>
											</c:choose>
										</c:forEach>
										<%-- 顯示最後一頁數字 --%>
											<c:if test="${end < animalpage.totalPages}">
												<li class="page-item">
													<a class="page-link" href="/halfway/pageQueryAll?page=${animalpage.totalPages}">${animalpage.totalPages}</a>
												</li>
											</c:if>
											<%--現在是最後一頁隱藏下一頁--%>
												<c:choose>
													<c:when test="${animalpage.number+1 eq animalpage.totalPages}">
													</c:when>
													<c:otherwise>
														<li class="page-item">
															<a class="page-link" href="/halfway/pageQueryAll?page=${animalpage.number+2}" aria-label="Next"> Next
																<i class="fa fa-angle-right"></i>
																<span class="sr-only">Next</span>
															</a>
														</li>
													</c:otherwise>
												</c:choose>
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
					<jsp:include page="../footer.jsp"></jsp:include>
				  </footer>
				<!-- Footer Section End-->

			<!-- Go To Top Link -->
			<a href="#" class="back-to-top">
				<i class="fa fa-angle-up"> </i>
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