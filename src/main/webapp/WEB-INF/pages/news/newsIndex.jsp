<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>最新消息</title>
</head>
<body>
	<header id="header-wrap">
		<!-- Navbar Starts -->
	<jsp:include page="../navbar.jsp"></jsp:include>
		<!-- Navbar ends -->
	</header>
				<div class="container">
					<!-- 輪播牆開始 -->
				<div id="carousel-area">
					<div id="carousel-slider" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-slider" data-slide-to="1"></li>
							<li data-target="#carousel-slider" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img class="d-block w-60" src="/images/news/catexpo.jpg" alt="">
								<div class="carousel-caption">
								
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block w-60" src="/images/news/cattrip.jpg" alt="">
								<div class="carousel-caption">
							
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block w-60" src="/images/news/10mustknow.jpg" alt="">
								<div class="carousel-caption">
									
									
									
								</div>
							</div>
							
						</div>
						<a class="carousel-control-prev" href="#carousel-slider" role="button" data-slide="prev">
							<span class="carousel-control carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#carousel-slider" role="button" data-slide="next">
							<span class="carousel-control carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
				<!-- 輪播牆結束-->
					<h1 class="section-title wow fadeIn animated" data-wow-delay=".2s">
						活動一覽</h1>

					<div class="row">
						<c:forEach var="news" items="${allNews}">
							<div class="col-md-4">
								<div class="card mb-4 box-shadow">
								<a href="/">
									<img class="card-img-top" src="/images/news/catexpo.jpg" width="80px" alt="" >
									</a><div class="card-body" style="margin-bottom: 5px">
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					

					<!-- Service-Block-000 Item Ends -->
				</div>
				<!-- Container Ends -->
<!--
<center>
	<h3>查詢一筆活動</h3>
	<form name="selectOneForm" action="<c:url value="/findOneNews"/>" method="GET">
	<input name="seqno" value="${param.seqno}" type="text" size="50" style="text-align: left">
	<input type="submit" value="查詢單筆"> 
	</form>
	<hr>
	
	<h3>查詢所有活動</h3>
	<form name="selectAllForm" action="<c:url value="/findAllNews"/>" method="GET">
	<input type="submit" value="查詢所有">
	</form>
	<hr>
	
	<h3>刪除一筆活動</h3>
	<form name="deleteForm" action="<c:url value="/deleteNews"/>" method="GET">
	<input name="seqno" value="${param.seqno}" type="text" size="50" style="text-align: left">
	<input type="submit" value="送出"> 
	<input type="reset" value="清除"> 
	</form>
	<hr>
	
	<h3>新增活動公告</h3>
		<form name="insertForm" action="<c:url value="/insertNews"/>" method="POST">
			<table border="1">
				<tbody>
					<tr>
						<td width="120" height="40">活動名稱:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="subject" value="${param.subject}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">活動內容:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="content" value="${param.content}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">發布時間:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="publishTime" value="${param.publishTime}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
					<tr>
						<td width="120" height="40">結束時間:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="publishTimeEnd" value="${param.publishTimeEnd}" type="text" size="50"
							style="text-align: left">&nbsp;&nbsp;格式為yyyy-MM-dd</td>
					</tr>
					<tr>
						<td width="120" height="40">發布人:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="createUser" value="${param.createUser}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
					<tr>
						<td width="120" height="40">建立時間:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="createTime" value="${param.createTime}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
				</tbody>
			</table>
			<br>
				<input type="submit" value="確定新增">
				<input type="reset" value="清除">
			<hr>
		</form>
		
		<form name="updateNewsForm" action="/updateNews" method="GET">
			<h3>修改活動訊息</h3>
			<table border="1">
				<tbody>
					<tr>
						<td width="120" height="40">活動編號:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="seqno" value="${param.seqno}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">活動名稱:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="subject" value="${param.subject}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">活動內容:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="content" value="${param.content}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">更新使用者:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="updateUser" value="${param.updateUser}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
					<tr>
						<td width="120" height="40">更新時間:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="updateTime" value="${param.updateTime}" type="text" size="50"
							style="text-align: left">&nbsp;&nbsp;格式為yyyy-MM-dd hh:mm:ss</td>
					</tr>
				
				</tbody>
			</table>
			<br>
			<input type="submit" value="確定修改">
			<input type="reset" value="清除">
		</form>
	</center>  -->
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
						<li><a href="#">最新消息</a></li>
						<li><a href="#">中途專區</a></li>
						<li><a href="#">最新活動專區</a></li>
						<li><a href="#">寵物市集</a></li>
						<li><a href="#">寵物旅店</a></li>
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
	

</body>
</html>