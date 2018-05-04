<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
 <title>
      
        後台管理 
      
    </title>

    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic" rel="stylesheet">
    
      <link href="../admin/assets/css/toolkit-light.css" rel="stylesheet">
    
    
    <link href="../admin/assets/css/application.css" rel="stylesheet">

    <style>
      /* note: this is a hack for ios iframe for bootstrap themes shopify page */
      /* this chunk of css is not part of the toolkit :) */
      body {
        width: 1px;
        min-width: 100%;
        *width: 100%;
      }
    </style>
  </head>


<body>
  <div class="container">
    <div class="row">
      <div class="col-md-3 sidebar">
        <nav class="sidebar-nav">
          <div class="sidebar-header">
            <button class="nav-toggler nav-toggler-md sidebar-toggler" type="button" data-toggle="collapse" data-target="#nav-toggleable-md">
              <span class="sr-only">Toggle nav</span>
            </button>
             <a class="navbar-brand" href="/">
                                <img style="position: left" src="/images/logo.png" alt="">
                            </a>
          </div>

          <div class="collapse nav-toggleable-md" id="nav-toggleable-md">
            <form class="sidebar-form">
              <input class="form-control" type="text" placeholder="站內搜尋...">
              <button type="submit" class="btn-link">
                <span class="icon icon-magnifying-glass"></span>
              </button>
            </form>
            <ul class="nav nav-pills nav-stacked flex-column">
<!--               <li class="nav-header">活動管理</li> -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							aria-haspopup="true" aria-expanded="false">會員管理</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">會員管理1</a> <a
									class="dropdown-item" href="#">會員管理2</a> <a
									class="dropdown-item" href="#">會員管理3</a>
							</div>
						</li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							aria-haspopup="true" aria-expanded="false">活動管理</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">活動總覽</a> <a
									class="dropdown-item" href="#">活動紀錄</a> <a
									class="dropdown-item" href="#">活動統計</a>
							</div>
						</li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							aria-haspopup="true" aria-expanded="false">認養管理</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">認養管理1</a> <a
									class="dropdown-item" href="#">認養管理2</a> <a
									class="dropdown-item" href="#">認養管理3</a>
							</div>
						</li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							aria-haspopup="true" aria-expanded="false">市集管理</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">市集管理1</a> <a
									class="dropdown-item" href="#">市集管理2</a> <a
									class="dropdown-item" href="#">市集管理3</a>
							</div>
						</li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							aria-haspopup="true" aria-expanded="false">沙龍管理</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">沙龍管理1</a> <a
									class="dropdown-item" href="#">沙龍管理2</a> <a
									class="dropdown-item" href="#">沙龍管理3</a>
							</div>
						</li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							aria-haspopup="true" aria-expanded="false">部落格管理</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">部落格管理1</a> <a
									class="dropdown-item" href="#">部落格管理2</a> <a
									class="dropdown-item" href="#">部落格管理3</a>
							</div>
						</li>
<!-- 每頁不同的內容從此開始 -->


<!-- 每頁不同內容從此結束 -->


    <script src="../admin/assets/js/jquery.min.js"></script>
    <script src="../admin/assets/js/tether.min.js"></script>
    <script src="../admin/assets/js/chart.js"></script>
    <script src="../admin/assets/js/tablesorter.min.js"></script>
    <script src="../admin/assets/js/toolkit.js"></script>
    <script src="../admin/assets/js/application.js"></script>
    <script>
      // execute/clear BS loaders for docs
      $(function(){while(window.BS&&window.BS.loader&&window.BS.loader.length){(window.BS.loader.pop())()}})
    </script>
  </body>
</html>