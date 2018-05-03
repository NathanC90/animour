<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
				<title>Animal Salon</title>
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
									<h2>寵物沙龍</h2>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Page Header End -->

				<!-- End of call to action section -->

				<!-- Classic Blog Section -->
				<section class="classic-blog-section section">
					<div class="container">
						<div class="row">
							<!-- 				Blog Sidebar Section -->
							<div class="col-md-3">
								表格在這
								<div class="sidebar-area">


									<c:if test="${page != null || page.numberOfElements > 0}">
										<div class="col-md-9">
											<ul class="pagination">
												<li class="page-item active">
													<p class="page-link">服務共有 4 筆</p>
												</li>
											</ul>
											<div>
												<form:form method="POST" enctype="multipart/form-data" modelAttribute="animal">
													<div class="form-row">
														<div class="form-group col-md-6">
															暱稱:
															<form:input type="text" class="form-control" id="name" path="name" />
														</div>
														<div class="form-group col-md-6">
															種類:
															<form:select path="specie" class="form-control">
																<form:option value="-1" label="請選擇種類" />
																<form:options items="${allSpecie}" />
															</form:select>

															<!-- 							<select id="specie" class="form-control" name="specie"> -->
															<!-- 								<option selected>請選擇種類</option> -->
															<!-- 								<option value="DOG">狗</option> -->
															<!-- 								<option value="CAT">貓</option> -->
															<!-- 								<option value="RABBIT">兔</option> -->
															<!-- 								<option value="BIRD">鳥</option> -->
															<!-- 								<option value="OTHER">其他</option> -->
															<!-- 							</select> -->
														</div>
													</div>
													<div class="form-row">
														<div class="form-group col-md-6">
															顏色:
															<!-- 							<input type="text" class="form-control" id="color" -->
															<%-- 								placeholder="" name="color" value="${param.color}"> --%>
																<form:input type="text" class="form-control" id="color" path="color" />

														</div>
														<div class="form-group col-md-6">
															性別:
															<br>
															<div class="form-check form-check-inline">
																<form:radiobutton path="gender" value="male" class="form-check-input" /> 公

																<!-- 								<input class="form-check-input" type="radio" name="gender" -->
																<%-- 									id="male" value="male${param.gender}"> 公 --%>
															</div>
															<div class="form-check form-check-inline">
																<!-- 								<input class="form-check-input" type="radio" name="gender" -->
																<%-- 									id="female" value="female${param.gender}"> 母 --%>
																	<form:radiobutton path="gender" value="female" class="form-check-input" /> 母
															</div>
															<div class="form-check form-check-inline">
																<form:radiobutton path="gender" value="unknown" class="form-check-input" /> 尚未確認
																<!-- 								<input class="form-check-input" type="radio" name="gender" -->
																<!-- 									id="unknown" value="option1"> 尚未確認 -->
															</div>
														</div>
													</div>
													<div class="form-group">
														發現日期:
														<form:input type="date" class="form-control" id="found" path="found" placeholder="ex:yyyy-MM-dd" />
														<span id="p3" class="correct"></span>
														<small id="passwordHelpBlock" class="form-text text-muted">(格式:西元年-月-日&nbsp yyyy-MM-dd)
														</small>
														<div class="st1"></div>
													</div>
													<div class="form-row">
														<div class="form-group col-md-6">
															縣市:
															<form:select path="city" class="form-control">
																<form:option value="-1" label="請選擇縣市" />
																<form:options items="${allCity}" />
															</form:select>
															<!-- 							<select id="city" class="form-control" name="city"> -->
															<!-- 								<option selected>請選擇縣市</option> -->
															<%-- 								<c:forEach var="city" items="${citys}"> --%>
																<%-- 									<option value="${city.id}">${city.name}</option> --%>
																	<%-- 								</c:forEach> --%>
																		<!-- 							</select>  -->
														</div>
														<div class="form-group col-md-6">
															鄉鎮市區:
															<form:input type="text" class="form-control" id="district" path="district" />
														</div>
													</div>
													<div class="form-row align-items-center">
														<div class="form-group col-md-4">
															就醫紀錄(預設為無):
															<br>
															<div class="form-check form-check-inline">
																<form:radiobutton path="hospitalized" value="false" class="form-check-input" /> 無
																<!-- 								<input class="form-check-input" type="radio" id="hospitalized1" -->
																<%-- 									name="hospitalized" value="false${param.hospitalized}">無 --%>
															</div>
															<div class="form-check form-check-inline">
																<form:radiobutton path="hospitalized" value="true" class="form-check-input" /> 有
																<!-- 								<input class="form-check-input" type="radio" id="hospitalized2" -->
																<%-- 									name="hospitalized" value="true${param.hospitalized}"> --%>
																	<!-- 								有 -->
															</div>
														</div>
														<div class="form-group col-md-4">
															結紮(預設為無):
															<br>
															<div class="form-check form-check-inline">
																<form:radiobutton path="neuter" value="false" class="form-check-input" /> 無
																<!-- 								<input class="form-check-input" type="radio" id="neuter1" -->
																<%-- 									name="neuter" value="false${param.neuter}">無 --%>
															</div>
															<div class="form-check form-check-inline">
																<form:radiobutton path="neuter" value="true" class="form-check-input" /> 有
																<!-- 								<input class="form-check-input" type="radio" id="neuter2" -->
																<%-- 									name="neuter" value="true${param.neuter}"> 有 --%>
															</div>
														</div>
														<div class="form-group col-md-4">
															動物晶片號碼(非必填):
															<form:input type="text" class="form-control form-control-sm" id="cardNum" path="cardNum" />
														</div>
													</div>
													<div class="form-group">
														備註:
														<form:textarea class="form-control" id="remark" path="remark" rows="2" />
													</div>
													<div class="form-group">
														請上傳動物照片
														<input type="file" class="form-control-file" id="image" name="file">
													</div>
													<input type="submit" class="btn btn-common" value="送出">
													<input type="reset" class="btn btn-common" value="清除">
													<a href="/halfway" class="btn btn-common"> 回上頁</a>
													<%-- 				</form> --%>
												</form:form>

											</div>
										</div>
										<div class="blog-pagination clearfix wow fadeIn" data-wow-delay="0.3s">
											<nav aria-label="..." class="">
												<ul class="pagination">
													<c:choose>
														<c:when test="${page.number + 1 - 1 le 0}">
															<li class="page-item disabled">
																<a class="page-link" href="?pageNo=${page.number + 1 - 1}" tabindex="-1" aria-label="Previous">
																	<i class="fa fa-angle-left"></i> 上一頁
																	<span class="sr-only">Previous</span>
																</a>
															</li>
														</c:when>
														<c:otherwise>
															<li class="page-item">
																<a class="page-link" href="?pageNo=${page.number + 1 - 1}" tabindex="-1" aria-label="Previous">
																	<i class="fa fa-angle-left"></i> 上一頁
																	<span class="sr-only">Previous</span>
																</a>
															</li>
														</c:otherwise>
													</c:choose>
													<li class="page-item active">
														<a class="page-link" href="#">第 ${page.number + 1}/${page.totalPages} 頁
															<span class="sr-only">(current)</span>
														</a>
													</li>
													<c:choose>
														<c:when test="${page.number+1 ge page.totalPages}">
															<li class="page-item disabled">
																<a class="page-link" href="?pageNo=${page.number + 1 + 1}" aria-label="Next"> 下一頁
																	<i class="fa fa-angle-right"></i>
																	<span class="sr-only">Next</span>
																</a>
															</li>
														</c:when>
														<c:otherwise>
															<li class="page-item">
																<a class="page-link" href="?pageNo=${page.number + 1 + 1}" aria-label="Next"> 下一頁
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
								</c:if>
							</div>
						</div>
				</section>

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
									<li>
										<a href="#">首頁</a>
									</li>
									<li>
										<a href="#">中途專區</a>
									</li>
									<li>
										<a href="#">最新活動專區</a>
									</li>
									<li>
										<a href="#">寵物市集</a>
									</li>
									<li>
										<a href="#">最新空房</a>
									</li>
									<li>
										<a href="#">醫院資訊專區</a>
									</li>
									<li>
										<a href="#">THE BLOG</a>
									</li>
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
									<a href="#" title="Pan Masala">
										<img src="/images/flicker/img1.jpg" alt="">
									</a>
									<a href="#" title="Sports Template for Joomla">
										<img src="/images/flicker/img2.jpg" alt="">
									</a>
									<a href="" title="Apple Keyboard">
										<img src="/images/halfway/halfwayindex.jpg" alt="">
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
										© 2018 Animour All right reserved, Designed by
										<a href="#">iii-ee100</a>
									</p>
								</div>
								<div class="col-md-6 col-sm-6">
									<div class="social-footer text-right">
										<a href="#">
											<i class="fa fa-facebook icon-round"></i>
										</a>
										<a href="#">
											<i class="fa fa-twitter icon-round"></i>
										</a>
										<a href="#">
											<i class="fa fa-linkedin icon-round"></i>
										</a>
										<a href="#">
											<i class="fa fa-google-plus icon-round"></i>
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