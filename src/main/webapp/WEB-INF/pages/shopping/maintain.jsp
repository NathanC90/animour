<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!doctype html>
<html lang="zh-tw">

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

<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
<script src="/js/jquery-min.js"></script>
<!-- 	<script type="text/javascript"> -->
<!-- 		$(function(){ -->
<!-- 			$("#delete").click(function(){ -->
<!-- 				var label = $(this).next(":hidden").val(); -->
<!-- 				var flag = confirm("確定要刪除 " + label + "此筆資料?"); -->
<!-- 				if(flag){ -->
<!-- 					var url = $(this).attr("href"); -->
					
<!-- 					$("#_form").attr("action", url); -->
<!-- 					$("#_method").val("DELETE"); -->
<!-- 					$("#_form").submit(); -->
<!-- 				} -->
<!-- 				return false; -->
<!-- 			}); -->
<!-- 		}) -->
<!-- 	</script> -->
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
						<h2>商品列表</h2>
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
<%-- 				<form action="" method="post" id="_form"> --%>
<!-- 					<input type="hidden" id="_method" name="_method"> -->
<%-- 				</form> --%>
				
				<c:if test="${page == null || page.numberOfElements == 0}">
					沒有任何商品資料
				</c:if>
				<c:if test="${page != null || page.numberOfElements > 0}">
				<div class="col-md-12">
				<ul class="pagination"><li class="page-item active"><p class="page-link">商品資料共有 ${page.totalElements} 筆</p></li></ul>
					<div class="row">
					<form:form action="${pageContent.request.contextPath}/product/insert" method="POST" modelAttribute="product">
						<table class="table">
							  <thead class="thead-dark">
							   <tr>
								<th>#</th>
								<th>圖片</th>
								<th>產品名稱</th>
								<th>價格</th>
								<th>庫存</th>
								<th>製造日期</th>
								<th>保存期限</th>
								<th>產品類別</th>
								<th>編輯</th>
								<th>刪除</th>
								</tr>
							  </thead>
				
							<c:forEach var="product" items="${page.content}">
								<tr>
									<td >${product.id}</td>
									<td><img src="${product.images}" width="100px" alt="商品列表"></td>
									<td align="left">${product.name}</td>
									<td>${product.price}</td>
									<td>${product.stock}</td>
									<td>${product.makeDate}</td>
									<td>${product.expire}</td>
									<td>${product.classify.name}</td>
									
									<td><a href="<spring:url value='/product/${product.id}' />" id="buttonUpdate" type="button" class="btn btn-info"><i class="fas fa-edit"></i></a></td>
									<td><a href="<spring:url value='/delete/${product.id}' />" id="delete" type="button" class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
									</td>
								</tr>
							</c:forEach>
						</table>
					</form:form>
					</div>
					
						<div class="blog-pagination clearfix wow fadeIn" data-wow-delay="0.3s">
							<nav aria-label="..." class="">
								<ul class="pagination">
								<c:choose>
									<c:when test="${page.number + 1 - 1 le 0}">
										<li class="page-item disabled"><a class="page-link" href="?name=${product.name}&price=${product.price}&pageNo=${page.number + 1 - 1}" 
											tabindex="-1" aria-label="Previous"> <i class="fa fa-angle-left"></i> 上一頁 
										<span class="sr-only">Previous</span></a></li>
									</c:when>
									<c:otherwise>
										<li class="page-item"><a class="page-link" href="?name=${product.name}&price=${product.price}&pageNo=${page.number + 1 - 1}" 
											tabindex="-1" aria-label="Previous"> <i class="fa fa-angle-left"></i> 上一頁 
										<span class="sr-only">Previous</span></a></li>
									</c:otherwise>
									</c:choose>
									<li class="page-item active"><a class="page-link" href="#">第 ${page.number + 1}/${page.totalPages} 頁
											<span class="sr-only">(current)</span></a></li>
									<c:choose>
										<c:when test="${page.number+1 ge page.totalPages}">
											<li class="page-item disabled"><a class="page-link" href="?name=${product.name}&price=${product.price}&pageNo=${page.number + 1 + 1}"
												aria-label="Next"> 下一頁 <i class="fa fa-angle-right"></i>
											<span class="sr-only">Next</span></a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="?name=${product.name}&price=${product.price}&pageNo=${page.number + 1 + 1}"
												aria-label="Next"> 下一頁 <i class="fa fa-angle-right"></i>
											<span class="sr-only">Next</span></a></li>
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
