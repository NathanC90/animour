<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

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
<title>新增送養動物</title>
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
</head>

<body>
	<div id="loginbox" style="margin-top: 50px; margin:auto"
		class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
		<div class="panel panel-info" style="border: 1px ">
			<div class="panel-heading"
				style="padding: 10px 15px; border-bottom: 1px solid transparent; border-top-right-radius: 3px; border-top-left-radius: 3px; border-bottom: 0; color: #FFFFFF; background-color: #9C3; border-color: #ddd">
				<div class="panel-title">新增動物資料</div>
				<div
					style="float: right; font-size: 80%; position: relative; top: -10px">
					<a href="#">Forgot password?</a>
				</div>
			</div>

			<div style="padding-top: 30px" class="panel-body">
				<div style="display: none" id="login-alert"
					class="alert alert-danger col-sm-12"></div>

				<form name="insertAnimalForm" action="/insertAnimal" method="POST">
					<div class="form-group">
						姓名:<input type="text" class="form-control" id="anname"
							aria-describedby="emailHelp" name="name" value="${param.name}"
							placeholder="">
					</div>
					<div class="form-group">
						種類: <input type="text" class="form-control" id="specie"
							placeholder="" name="specie" value="${param.specie}">
					</div>
					<div class="form-group">
						顏色: <input type="text" class="form-control" id="color"
							placeholder="" name="color" value="${param.color}">
					</div>
					<div class="form-group">
						發現日期: <input type="text" class="form-control" id="found"
							placeholder="" name="found" value="${param.found}">
					</div>
					<div class="row">
						<div class="col">
							縣市: <input type="text" class="form-control" id="city"
								placeholder="" name="city" value="${param.city}">
						</div>
						<div class="col">
							鄉鎮市區: <input type="text" class="form-control" id="district"
								placeholder="" name="district" value="${param.district}">
						</div>
					</div>

					<div class="form-group">
						請上傳動物照片 <input type="file" class="form-control-file" id="image">
					</div>

					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck1">
						<label class="form-check-label" for="exampleCheck1">Check
							me out</label>
					</div>
					<input type="submit" class="btn btn-common" value="送出">

				</form>
			</div>
		</div>
	</div>
</body>
</html>