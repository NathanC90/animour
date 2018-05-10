<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
<!-- 				<div class="col-md-9"> -->
					<!-- Single Blog Post -->
					<!-- 每頁不同的內容從這裡開始 -->
					<div id="loginbox" style="margin-top: 50px; margin: auto"
						class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
						<div class="panel panel-info" style="border: 1px">
							<div class="panel-heading"
								style="padding: 10px 15px; border-bottom: 1px solid transparent; border-top-right-radius: 3px; border-top-left-radius: 3px; border-bottom: 0; color: #FFFFFF; background-color: #9C3; border-color: #ddd">
								<div class="panel-title">填寫個人資料</div>
								<div
									style="float: right; font-size: 80%; position: relative; top: -10px">
									<a href="#"></a>
								</div>
							</div>

							<div style="padding-top: 30px" class="panel-body">
								<div style="display: none" id="login-alert"
									class="alert alert-danger col-sm-12"></div>

								<form:form method='POST' modelAttribute="member"
									class='form-horizontal'>
									<div class="form-row">
										<div class="form-group col-md-6">
											帳號:
											<form:input id="account" path="account"	type="hidden" />${member.account}
										</div>
									</div>
<!-- 									<div class="form-row"> -->
<!-- 										<div class="form-group col-md-6"> -->
<!-- 											密碼: -->
<%-- 											<form:input id="password" path="password" type='password' class='form-control' /> --%>
<%-- 											<form:errors path="password" cssClass="help-block" element="div" /> --%>
<!-- 										</div> -->
<!-- 									</div> -->

									<div class="form-row">
										<div class="form-group col-md-6">
											主人姓名:
											<form:input id="name" path="name" type='text' class='form-control' autocomplete=""/>
											<form:errors path="name" cssClass="help-block" element="div" />
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col-md-6">
											暱稱:
											<form:input id="nickname" path="nickname" type='text' class='form-control' />
											<form:errors path="nickname" cssClass="help-block" element="div" />
										</div>
									</div>


									<div class="form-row">
										<div class="form-group col-md-6">
											手機:
											<form:input id="cell" path="cell" type='text' class='form-control' />
											<form:errors path="cell" cssClass="help-block" element="div" />
											
										</div>
										<div class="form-group col-md-6">
											信箱:
											<form:input id="email" path="email" type='text' class='form-control' />
											<form:errors path="email" cssClass="help-blocks" element="div" />
											
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col-md-6">
											地址:
											<form:input id="address" path="address" type='text'
												class='form-control' />
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col-md-6">
											簽名檔:
											<form:textarea id="signature" path="signature" 
												class='form-control' />
										</div>
									</div>
									<input type="submit" class="btn btn-common" value="送出">
									<input type="reset" class="btn btn-common" value="清除">
<!-- 									<a href="/" class="btn btn-common"> 回首頁</a> -->
								</form:form>

							</div>
						</div>
					</div>
					<!-- 每頁不同的內容到這裡結束 -->

<!-- 				</div> -->
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


</body>
</html>