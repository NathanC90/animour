<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
				<title>查看認養通知</title>
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
				<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>

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
									<h2>認養通知</h2>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Page Header End -->


				<!-- 表格內容開始 -->
				<section class="section">
					<div id="accordion">
						<div class="container">
							<div class="col-md-12 mb-50 text-center contact-title-text wow fadeIn" data-wow-delay="0.3s">
								<h2>認養請求確認</h2>
							</div>
							<div class="row">
								<table class="table">
									<thead class="thead-light">
										<tr>
											<th scope="col">會員</th>
											<th scope="col">動物名稱</th>
											<th scope="col">時間</th>
											<th scope="col">認養備註</th>
											<th scope="col">確認</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="adoption" items="${adoption}">
											<tr>
												<th scope="row">${adoption.member.account}</th>
												<td>${adoption.animal.name}</td>
												<td>${adoption.requestDate}</td>
												<td>${adoption.requestComment}</td>
												<td>
													<button type="button" id="showdetail_${adoption.id}" class="aaa" data-toggle="collapse" data-target="#detail" aria-expanded="true"
													 aria-controls="detail">
														<i class="fa fa-plus"></i>
														</a> 詳情</button>

													<button type="button" onclick="location.href='/halfway/adoptionHandle?acceptRequest=true&id=${adoption.id}';" class="btn btn-common btn-sm mt-10">接受</button>
													<button type="button" onclick="location.href='/halfway/adoptionHandle?acceptRequest=false&id=${adoption.id}';" class="btn btn-common btn-sm mt-10">拒絕</button>
												</td>
											</tr>

											<tr id="detail" class="collapse">
												<td>
													<!--詳情的內容開始-->


													<button class="btn btn-common btn-lg" type="submit" id="form-submit">
														<i class="fa fa-check"></i> 認養程序完成</button>
													<button class="btn btn-secondary btn-lg" type="submit" id="form-submit">
														<i class="fa fa-envelope"></i> 檢舉</button>

												</td>
												<!--詳情的內容結束-->
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>

						</div>
				</section>

				<!-- 重複的內容結束 -->

				<!-- Footer Section -->
				<!-- (footer.jsp) -->
				<jsp:include page="../footer.jsp"></jsp:include>
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

				<script>
					$(document).ready(function () {
						var adoptionId;


						$('.aaa').click(function () {
							//alert(this.id);
							//alert(this.id);
							var aaa = new String(this.id);
							adoptionId = aaa.substring(aaa.indexOf('_') + 1);
							//alert(adoptionId);
							$.ajax({
								url: '/halfway/adoption/' + adoptionId,
								type: 'GET',
								//data: data,
								//data: json,
								//dataType: 'json',
								//processData: false,
								//contentType: "application/json",
								//contentType: "multipart/form-data",
								//enctype: 'multipart/form-data',
								//contentType: false,
								//processData: false,
							}).done(function (datas) {
								console.log(datas.member.account);
								console.log(datas.animal.id);
								console.log(datas.animal.name);
								var a = datas.animal.name;

								let test123 = `<h1>aaaaa</h1><h1>` + datas.animal.id + `</h1><h1>` + a + `</h1>`;
								//let test123 = `<h1>aaaaa</h1><h1>` + datas.animal.id + `</h1><h1>` + a + `</h1>`;
								console.log(test123)
								//$('#accordion').append(test123);

							});

							var a = `<div class="col-md-3" id="eachdiv1"><div id="eachdiv2" class="card mb-3 box-shadow"><img src="/showAnimalImage?fileName=null" width="100px" alt="10" class="card-img-top"><div id="eachdiv3" class="card-body"><p style="padding: 0px" class="card-text">開放認養</p><ul style="margin:0; padding:0; list-style:none;"><li style="margin: 0px">編號:10</li><li>綽號:YellowBird</li><li>種類:鳥</li><li>發現日期:2017-10-01</li><li>縣市:台北市</li></ul><small class="text-muted">2018/3/10 下午9:00:00</small><div id="eachdiv4" style="max-height: 100px" class="d-flex justify-content-between align-items-center"><div id="eachdiv5" class="btn-group"><button type="button" onclick="location.href='/halfway/detail?id=10'" class="btn btn-common btn-sm mt-10">詳情</button></div></div></div></div></div>`


						});
						//$('#detail').toggle('drop', {direction: 'down'}, 150);


					});

				</script>

			</body>

			</html>