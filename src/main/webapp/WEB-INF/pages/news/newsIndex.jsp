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
								<img class="d-block w-60" src="/images/news/dogtable.jpg" alt="">
								<div class="carousel-caption">
								
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block w-60" src="/images/news/catillu.jpg" alt="">
								<div class="carousel-caption">
							
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block w-60" src="/images/news/olddogcare.jpg" alt="">
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
						<c:forEach var="news" items="${page.content}">
							<div class="col-md-4">
								<div class="card mb-4 box-shadow">
								<a href="/news/index?pageNo=1">
									<img class="card-img-top" src="/images/news/catexpo.jpg" width="80px" alt="" >
									</a><div class="card-body" style="margin-bottom: 5px">
									 <p class="sup-description">寵物用品博覽會匯集全台各大寵物用品廠商，提供最新寵物用品、飼料零食、保健營養品、服飾配件、美容清潔、住宿醫療等週邊服務</p>
											<a href="/news/event"><button type="button" class="btn btn-common">詳情</button></a>
                 							<a href="/news/enroll"><button type="button" class="btn btn-common">報名</button></a>									
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