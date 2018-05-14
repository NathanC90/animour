<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
</head>

<body>
	<h1>自我檢測問卷</h1>
	<div>
	<input type="button" id="submitquiz" class="btn btn-common" value="作答完畢，送出問卷">
	</div>
	<script>
					document.addEventListener("DOMContentLoaded", function () {
						document.getElementById("submit").addEventListener("click", add);

						$(document).ready(function () {

						});
					});

					function add() {
						alert("有被呼叫")
						var data = new FormData(document.getElementById("addAnimal"));
						// data.append("sss", "qqq");
						console.log(data);

						//https://stackoverflow.com/questions/17066875/how-to-inspect-formdata
						for (var pair of data.entries()) {
							console.log(pair[0] + ', ' + pair[1]);
						}

						//var json = toJson(data);

						$.ajax({
							url: '/halfway/animal',
							type: 'POST',
							data: data,
							//data: json,
							//dataType: 'json',
							//processData: false,
							//contentType: "application/json",
							//contentType: "multipart/form-data",
							//enctype: 'multipart/form-data',
							contentType: false,
							processData: false,
							success: function (data) {
								window.location.href = "http://localhost:8080/halfway";
							}
						});

					}

					function toJson(formData) {
						var object = {};
						formData.forEach(function (value, key) {
							if (key == 'city') {
								var object1 = {};
								object1['id'] = value;
								object[key] = object1;
							} else {
								object[key] = value;
							}
						});
						var json = JSON.stringify(object, null);
						console.log(json);
						return json;
					};
				</script>
</body>

</html>