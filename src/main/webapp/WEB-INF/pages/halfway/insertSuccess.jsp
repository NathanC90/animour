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

	<!-- 	<table> -->
	<!-- 		<h3>所有動物資料</h3> -->
	<%-- 		<c:forEach var="animal" items="${animals}"> --%>
	<%-- 			<td>${animal.id}</td> --%>
	<%-- 			<td>${animal.name}</td> --%>
	<%-- 			<td>${animal.specie}</td> --%>
	<%-- 			<td>${animal.color}</td> --%>
	<%-- 			<td>${animal.found}</td> --%>
	<%-- 			<td>${animal.upload}</td> --%>
	<%-- 			<td>${animal.city}</td> --%>
	<%-- 			<td>${animal.district}</td> --%>
	<!-- 			</tbody> -->
	<%-- 		</c:forEach> --%>
	<!-- 	</table> -->
	<!-- 	<hr> -->

	<!-- 	<h3>查詢一筆動物資料</h3> -->
	<!-- 	<table> -->
	<!-- 		<tbody> -->
	<!-- 			<tr> -->
	<%-- 				<td>${animal.id}</td> --%>
	<%-- 				<td>${animal.name}</td> --%>
	<%-- 				<td>${animal.specie}</td> --%>
	<%-- 				<td>${animal.color}</td> --%>
	<%-- 				<td>${animal.found}</td> --%>
	<%-- 				<td>${animal.upload}</td> --%>
	<%-- 				<td>${animal.city}</td> --%>
	<%-- 				<td>${animal.district}</td> --%>
	<!-- 			</tr> -->
	<!-- 		</tbody> -->
	<!-- 	</table> -->
	<!-- 	<hr> -->
	<!-- 	<h3>修改一筆動物資料</h3> -->
	<!-- 	<table> -->
	<!-- 		<tbody> -->
	<!-- 			<tr> -->
	<%-- 				<td>${upanimal.id}</td> --%>
	<%-- 				<td>${upanimal.name}</td> --%>
	<%-- 				<td>${upanimal.specie}</td> --%>
	<%-- 				<td>${upanimal.color}</td> --%>
	<%-- 				<td>${upanimal.found}</td> --%>
	<%-- 				<td>${upanimal.upload}</td> --%>
	<%-- 				<td>${upanimal.city}</td> --%>
	<%-- 				<td>${upanimal.district}</td> --%>
	<!-- 			</tr> -->
	<!-- 		</tbody> -->
	<!-- 	</table> -->
	<!-- 	<hr> -->
	<div style="margin:auto">
		<h3>新增一筆動物資料成功</h3>
		<table>
			<tbody>
				<tr>
					<td>${inanimal.id}</td>
					<td>${inanimal.status}</td>
					<td>${inanimal.name}</td>
					<td>${inanimal.specie}</td>
					<td>${inanimal.color}</td>
					<td>${inanimal.gender}</td>
					<td>${inanimal.found}</td>
					<td>${inanimal.upload}</td>
					<td>${inanimal.city}</td>
					<td>${inanimal.district}</td>
				</tr>
			</tbody>
		</table>
		<a href="/halfway" class="btn btn-common"> 完成</a>
	</div>
</body>
</html>