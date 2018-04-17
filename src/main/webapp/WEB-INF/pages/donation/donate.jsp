<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=BIG5">

<!-- Required meta tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>捐款芳名錄</title>

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

</head>
<body>
  
  	<!-- 頁面上方連結 ，會蓋住後面的字-->
	<header id="header-wrap">
		<!-- Navbar Starts -->
		<jsp:include page="../navbar.jsp"></jsp:include>
		<!-- Navbar ends -->
	</header>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h2>=====資料填寫=====</h2>
	<br>
	<hr>
	<br>
	<form name="selectOneDonate" action="/donate/selectOneDonate"
		method="GET">
		
		<input type="submit" value="登入會員">
		
		Email
		<input id='num' name="id" value="" type="text" size="50" style="text-align: left"> 
		<p><Br>
		帳號
		<input id='num' name="id" value="" type="text" size="14" style="text-align: left"> 
		<p><Br>
		密碼
		<input id='num' name="id" value="" type="text" size="14" style="text-align: left"> 
		<p><Br>
		密碼確認
		<input id='num' name="id" value="" type="text" size="14" style="text-align: left"> 
		<p><Br>
		真實姓名
		<input id='num' name="id" value="" type="text" size="14" style="text-align: left"> 
		<p><Br>
		顯示姓名
		<input id='num' name="id" value="" type="text" size="14" style="text-align: left"> 
		<p><Br>		
		連絡電話
		<input id='num' name="id" value="" type="text" size="14" style="text-align: left"> 
		<p><Br>		
		生日
		<input id='num' name="id" value="" type="text" size="14" style="text-align: left"> 
		<p><Br>		
		性別
		<input id='num' name="id" value="" type="text" size="14" style="text-align: left"> 
		<p><Br>
		捐款金額
		<input id='num' name="id" value="" type="text" size="14" style="text-align: left"> 
		<p><Br>
		
		
		
	</form>
	<br>
	<hr>
	<br>
	<h5>目前最新的六筆捐款紀錄</h5>
	<br>
	<br>
</body>

<!-- footers  -->
	<jsp:include page="../footer.jsp"></jsp:include>


</html>