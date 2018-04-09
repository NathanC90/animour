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

<title>Register</title>
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
	<br>
	<!-- Classic Blog Section -->
	<section class="classic-blog-section section">
		<div class="container">
			<div class="row">
				<!-- Blog Sidebar Section -->
				<!-- 左邊列 -->
				<!-- End -->

				<!-- BLog Article Section -->
				<div class="col-md-9">
					<!-- Single Blog Post -->
					<!-- 每頁不同的內容從這裡開始 -->
					<div class="panel-heading">
						<h4 class="panel-title">註冊</h4>
					</div>
					<div>
						<form name="insertdateForm" action="/login?" method="POST">
							<table>
								<tbody>
									<tr>
										<td width="120" height="40">帳號</td>
										<td width="600" height="40" align="left"><input id='num'
											name="account" value="${param.account}" type="text" size="14"
											style="text-align: left">
									</tr>
									<tr>
										<td width="120" height="40">密碼</td>
										<td width="600" height="40" align="left"><input id='num'
											name="password" value="" type="password" size="14"
											style="text-align: left">
									</tr>

									<tr>
										<td width="120" height="40">姓名</td>
										<td width="600" height="40" align="left"><input id='num'
											name="name" value="" type="text" size="14"
											style="text-align: left">
									</tr>
									<tr>
										<td width="120" height="40">暱稱</td>
										<td width="600" height="40" align="left"><input id='num'
											name="nick" value="" type="text" size="14"
											style="text-align: left">
									</tr>
									<tr>
										<td width="120" height="40">手機</td>
										<td width="600" height="40" align="left"><input id='num'
											name="cell" value="" type="text" size="14"
											style="text-align: left">
									</tr>
									<tr>
										<td width="120" height="40">信箱</td>
										<td width="600" height="40" align="left"><input id='num'
											name="email" value="" type="text" size="14"
											style="text-align: left">
									</tr>

									<tr>
										<td width="120" height="40">地址</td>
										<td width="600" height="40" align="left"><input id='num'
											name="address" value="" type="text" size="14"
											style="text-align: left">
									</tr>



								</tbody>
							</table>
							<input type="submit" value="送出"> 
							<input type="reset"  value="清除"> <br>
							<hr>
							<br>
						</form>
						<!-- 每頁不同的內容到這裡結束 -->

					</div>
					<!-- Blog Pagination -->
					<!-- 頁碼 -->
				</div>
				<!-- End -->
			</div>
		</div>
	</section>
	<!-- Classic Blog Section End -->


	<!-- Footer Section -->
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
	<script src="/js/vendor/holder.min.js"></script>

</body>
</html>