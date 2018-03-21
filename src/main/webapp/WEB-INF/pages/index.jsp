<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

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
  <link rel="stylesheet" media="screen" href="/fonts/font-awesome/font-awesome.min.css">
  <link rel="stylesheet" media="screen" href="/fonts/simple-line-icons.css">

  <!-- Extras -->
  <link rel="stylesheet" type="text/css" href="/extras/owl/owl.carousel.css">
  <link rel="stylesheet" type="text/css" href="/extras/owl/owl.theme.css">
  <link rel="stylesheet" type="text/css" href="/extras/animate.css">
  <link rel="stylesheet" type="text/css" href="/extras/normalize.css">
<!-- Color CSS Styles  -->
  <link rel="stylesheet" type="text/css" href="/css/colors/green.css" media="screen" />
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
    <!-- Navbar Starts -->
    <nav class="navbar navbar-expand-md fixed-top scrolling-navbar nav-bg">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <a class="navbar-brand" href="/">
            <img style="position:left" src="/images/logo.png" alt="">
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
        </div>
        <div class="collapse navbar-collapse" id="main-menu">
          <ul class="navbar-nav mr-auto w-100 justify-content-end">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle active" href="index.jsp" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                首頁
              </a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">最新消息</a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="">認養活動</a>
                <a class="dropdown-item" href="">寵物保健</a>
                <a class="dropdown-item" href="">演講座談</a>

              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">寵物市集</a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="">新品上市</a>
                <a class="dropdown-item" href="l">好康優惠</a>
                <a class="dropdown-item" href="l">寵物飲食</a>
                <a class="dropdown-item" href="">寵物用品</a>
              </div>
            </li>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">寵物旅店</a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="">旅店簡介</a>
                <a class="dropdown-item" href="">房型價格</a>
                <a class="dropdown-item" href="">特色設備</a>
                <a class="dropdown-item" href="">線上訂房</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">寵物醫院</a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="">各區醫院</a>
                <a class="dropdown-item" href="">線上掛號</a>
                <a class="dropdown-item" href="">看診進度查詢</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">部落格分享</a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="">本周最新</a>
                <a class="dropdown-item" href="">熱門文章</a>
                <a class="dropdown-item" href="">精選圖文</a>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">會員登入/註冊</a>
            </li>
          </ul>
          <form class="form-inline">
            <div class="top_search_con">
              <input class=" mr-sm-2" type="text" placeholder="站內搜尋 ...">
              <span class="top_search_icon">
                <i class="icon-magnifier"></i>
              </span>
            </div>
          </form>
        </div>

        <!-- Mobile Menu Start -->
        <ul class="wpb-mobile-menu">
          <li>
            <a class="active" href="index.jsp">首頁</a>
          </li>
          <li>
            <a href="#">最新消息</a>
            <ul>
              <li>
                <a href="">認養活動</a>
              </li>
              <li>
                <a href="">寵物保健</a>
              </li>
              <li>
                <a href="">演講座談</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="#">寵物市集</a>
            <ul>
              <li>
                <a href="">新品上市</a>
              </li>
              <li>
                <a href="">好康優惠</a>
              </li>
              <li>
                <a href="">寵物飲食</a>
              </li>
              <li>
                <a href="">寵物用品</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="#">寵物旅店</a>
            <ul>
              <li>
                <a href="">旅店簡介</a>
              </li>
              <li>
                <a href="">房型價格</a>
              </li>
              <li>
                <a href="">特色設備</a>
              </li>
              <li>
                <a href="">線上訂房</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="#">寵物醫院</a>
            <ul>
              <li>
                <a href="">各區醫院</a>
              </li>
              <li>
                <a href="">線上掛號</a>
              </li>
              <li>
                <a href="">看診進度查詢</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="#">部落格分享</a>
            <ul>
              <li>
                <a href="">本周最新</a>
              </li>
              <li>
                <a href="">熱門文章</a>
              </li>
              <li>
                <a href="">精選圖文</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="#">會員登入/註冊</a>
          </li>
        </ul>
        <!-- Mobile Menu End -->
      </div>
    </nav>
    <!-- Navbar ends -->


    <!-- 輪播牆開始 -->
    <div id="carousel-area">
      <div id="carousel-slider" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-slider" data-slide-to="1"></li>
          <li data-target="#carousel-slider" data-slide-to="2"></li>
          <li data-target="#carousel-slider" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="/images/slider/bg-dog1-gray.jpg" alt="">
            <div class="carousel-caption">
              <h2 class="fadeInUp wow" data-sppb-wow-delay="0.8s">
                請用領養代替購買
              </h2>
              <h3 class="fadeInUp wow" data-sppb-wow-delay="1.2s">愛護動物，從你我開始</h3>
              <a class="btn btn-lg btn-common fadeInUp wow" data-sppb-wow-delay="1.4s" href="#">
                <i class="fa fa-download">
                </i>
                點擊認養
              </a>
            </div>
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="/images/slider/bg-cat1-gray.jpg" alt="">
            <div class="carousel-caption">
              <h2 class="fadeInUp wow" data-sppb-wow-delay="0.8s">
                中途見面會活動
              </h2>
              <h3 class="fadeInUp wow" data-sppb-wow-delay="1.2s">
                2018/06/01 上午9:00 台北市復興南路一段
              </h3>
              <a class="btn btn-lg btn-common fadeInUp wow" data-sppb-wow-delay="1.4s" href="#">
                <i class="fa fa-coffee">
                </i>
                詳細資訊
              </a>
            </div>
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="/images/slider/bg-dog2-gray.jpg" alt="">
            <div class="carousel-caption">
              <h2 class="fadeInUp wow" data-sppb-wow-delay="0.8s">
                New Arrival
              </h2>
              <h3 class="fadeInUp wow" data-sppb-wow-delay="1.2s">
               	最新商品上架
              </h3>
              <a class="btn btn-lg btn-common fadeInUp wow" data-sppb-wow-delay="1.4s" href="#">
                <i class="fa fa-download">
                </i>
                看這裡
              </a>
            </div>
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="/images/slider/bg-rabbit1-gray.jpg" alt="">
            <div class="carousel-caption">
              <h2 class="fadeInUp wow" data-sppb-wow-delay="0.8s">
                LaLa醫生門診時間異動
              </h2>
              <h3 class="fadeInUp wow" data-sppb-wow-delay="1.2s">
               已掛號會員請更改看診時間
              </h3>
              <a class="btn btn-lg btn-common fadeInUp wow" data-sppb-wow-delay="1.4s" href="#">
                <i class="fa fa-download">
                </i>
                點此更改
              </a>
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
  </header>
  <!-- Header-wrap Section End -->

  <!-- 中途之家頁面 -->
  <section id="service-block-main" class="section">
    <!-- 重複的內容開始 -->
    <div class="container">
      <h1 class="section-title wow fadeIn animated" data-wow-delay=".2s">
        中途專區
      </h1>
      <div class="row">
      <c:forEach var="animal" items="${animals}">
      
        <div class="col-md-4">
          <div class="card mb-4 box-shadow" >
            <img class="card-img-top" src="/images/adopt/cats/ad-cat2.jpg" width="100px" alt="待領養小貓">
            <div class="card-body" style="margin-bottom:5px">
              <p class="card-text" style="padding:0px">
            編號：${animal.animalId}
			綽號：${animal.name}
			種類：${animal.specie}
			顏色：${animal.color}
			發現日期：${animal.found}
			縣市：${animal.city}
			鄉鎮市區：${animal.district}
			</p>
              <div class="d-flex justify-content-between align-items-center" style="max-height:100px">
                <div class="btn-group" style="margin:0px">
                  <button type="button" class="btn btn-common btn-sm mt-10">預覽</button>
                  <button type="button" class="btn btn-common btn-sm mt-10">認養</button>
                </div>
                <small class="text-muted">${animal.upload}</small>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
      </div>
    </div>
    <!-- 重複的內容結束 -->
  </section>
  <!-- 中途之家結束 -->
  <!-- 最新消息開始 -->
  <section>
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
            <img class="d-block w-80" src="/images/slider/bg-dog1-gray.jpg" alt="">
            <div class="carousel-caption">
              <h2 class="fadeInUp wow" data-sppb-wow-delay="0.8s">
                活動主題1
              </h2>
              <h3 class="fadeInUp wow" data-sppb-wow-delay="1.2s">活動主題1</h3>
              <a class="btn btn-lg btn-common fadeInUp wow" data-sppb-wow-delay="1.4s" href="#">
                <i class="fa fa-download">
                </i>
                
              </a>
            </div>
          </div>
          <div class="carousel-item">
            <img class="d-block w-80" src="/images/slider/bg-cat1-gray.jpg" alt="">
            <div class="carousel-caption">
              <h2 class="fadeInUp wow" data-sppb-wow-delay="0.8s">
                活動主題2
              </h2>
              <h3 class="fadeInUp wow" data-sppb-wow-delay="1.2s">
                 活動主題2
              </h3>
              <a class="btn btn-lg btn-common fadeInUp wow" data-sppb-wow-delay="1.4s" href="#">
                <i class="fa fa-coffee">
                </i>
                
              </a>
            </div>
          </div>
          <div class="carousel-item">
            <img class="d-block w-80" src="/images/slider/bg-dog2-gray.jpg" alt="">
            <div class="carousel-caption">
              <h2 class="fadeInUp wow" data-sppb-wow-delay="0.8s">
                 活動主題3
              </h2>
              <h3 class="fadeInUp wow" data-sppb-wow-delay="1.2s">
               	 活動主題3
              </h3>
              <a class="btn btn-lg btn-common fadeInUp wow" data-sppb-wow-delay="1.4s" href="#">
                <i class="fa fa-download">
                </i>
                
              </a>
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
    <!-- Container Starts -->
    <div class="container">
      <h1 class="section-title wow fadeIn animated" data-wow-delay=".2s">
        最新活動專區
      </h1>
      
      <div class="row">
      <c:forEach var="news" items="${allNews}">
        <div class="col-md-4">
          <div class="card mb-4 box-shadow">
            <img class="card-img-top" src="/images/adopt/cats/ad-cat2.jpg" width="80px" alt="醫院">
            <div class="card-body" style="margin-bottom:5px">
              <p class="card-text" style="padding:0px">活動編號：${news.seqno}</p>
              <p class="card-text" style="padding:0px">活動名稱：${news.subject}</p>
              <p class="card-text" style="padding:0px">活動內文：${news.content}</p>
              <p class="card-text" style="padding:0px">更新時間：${news.updateTime}</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-common btn-sm mt-20">詳情</button>
                  <button type="button" class="btn btn-common btn-sm mt-20">報名</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
        </div>

        <!-- Service-Block-000 Item Ends -->
      </div>
    <!-- Container Ends -->
    
    
  </section>
  
  <!-- 最新消息結束 -->
  <!-- 寵物市集頁面 -->
  <!-- Portfolio Section -->
  <section id="portfolios" class="section">
    <!-- Container Starts -->
    <div class="container">
      <h1 class="section-title wow fadeInUpQuick" data-wow-delay=".3s">
        寵物市集
      </h1>
            <p class="section-subcontent wow fadeInUpQuick" data-wow-delay=".4s">全館商品九折優惠中！！
        <br> blanditiis praesentium</p>
      <div class="row">
        <div class="col-md-12">
          <!-- Portfolio Controller/Buttons -->
          <div class="controls text-center">
            <a class="filter active btn btn-common" data-filter="all">
              全項商品
            </a>
            <a class="filter btn btn-common" data-filter=".branding">
              狗
            </a>
            <a class="filter btn btn-common" data-filter=".marketing">
              貓
            </a>
            <a class="filter btn btn-common" data-filter=".planning">
              鼠
            </a>
            <a class="filter btn btn-common" data-filter=".research">
              兔
            </a>
            <a class="filter btn btn-common" data-filter=".research">
              其他 
            </a>
          </div>
          <!-- Portfolio Controller/Buttons Ends-->
        </div>
      </div>
    </div>
  <section id="service-block-main" class="section">
    <!-- 重複的內容開始 -->
    <div class="container">
      <div class="row">
      <c:forEach var="productBeans" items="${productBeans}">
        <div class="col-md-4">
          <div class="card mb-4 box-shadow" >
            <img class="card-img-top" src="/images/adopt/cats/ad-cat2.jpg" width="100px" alt="待領養小貓">
            <div class="card-body" style="margin-bottom:5px">
              <p class="card-text" style="padding:0px">商品編號：${productBeans.id}商品名稱：${productBeans.name}</p>
              <p class="card-text" style="padding:0px">價格：${productBeans.price}數量：${productBeans.quantity}</p>
              <p class="card-text" style="padding:0px">製造日期：${productBeans.make}</p>
			  <p class="card-text" style="padding:0px">保存期限：${productBeans.expire}</p>
              <div class="d-flex justify-content-between align-items-center" style="max-height:100px">
                <div class="btn-group" style="margin:0px">
                  <button type="button" class="btn btn-common btn-sm mt-10">預覽</button>
                  <button type="button" class="btn btn-common btn-sm mt-10">購買</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
      </div>
    </div>
  </section>
    <!-- 重複的內容結束 -->
  </section>
  <!-- 寵物市集結束 -->
  

  <!-- 醫院開始 -->
  <section id="service-block-main" class="section">
    <!-- Container Starts -->
    <div class="container">
      <h1 class="section-title wow fadeIn animated" data-wow-delay=".2s">
        醫院資訊專區
      </h1>
      
      <div class="row">
      <c:forEach var="hosp" items="${hospitals}">
        <div class="col-md-4">
          <div class="card mb-4 box-shadow">
            <img class="card-img-top" src="/images/adopt/cats/ad-cat2.jpg" width="80px" alt="醫院">
            <div class="card-body" style="margin-bottom:5px">
              <p class="card-text" style="padding:0px">醫院ID　　:　${hosp.veterinaryHospId}</p>
              <p class="card-text" style="padding:0px">醫院名稱　:　${hosp.veterinaryHospName}</p>
              <p class="card-text" style="padding:0px">醫院電話　:　${hosp.veterinaryHospTel}</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-common btn-sm mt-20">詳情</button>
                  <button type="button" class="btn btn-common btn-sm mt-20">預約</button>
                </div>
                <small class="text-muted">bye</small>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
        </div>

        <!-- Service-Block-000 Item Ends -->
      </div>
    <!-- Container Ends -->
  </section>
  <!-- 醫院結束 -->
  
	<!-- 討論區 -->
  <section id="service-block-main" class="section">
    <!-- 重複的內容開始 -->
    <div class="container">
      <h1 class="section-title wow fadeIn animated" data-wow-delay=".2s">
        討論區
      </h1>
      <c:forEach var="article" items="${articles}">
      <div class="row">
      
      
        <div class="row">
        <div class="col-md-4">
          <div class="card mb-4 box-shadow">
            <img class="card-img-top" src="xxx" width="60px" alt="討論區">
            <div class="card-body" style="margin-bottom:5px">
              <p class="card-text" style="padding:0px">最新文章　　:　${article.articleSubject}</p>
              <p class="card-text" style="padding:0px">發文者　:　${article.postName}</p>
              <p class="card-text" style="padding:0px">預覽　:　${article.articleContent}</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-common btn-sm mt-20">詳細</button>
                  <button type="button" class="btn btn-common btn-sm mt-20">收藏</button>
                </div>
                <small class="text-muted">${article.postTime}</small>
              </div>
            </div>
          </div>
        </div>
        </div>
        
      </div>
      </c:forEach>
    </div>
    
    <!-- 重複的內容結束 -->
  </section>
  <!-- 討論區結束 -->

  <!-- About Us Section Start -->
  <section class="split section">
    <!-- Container Starts -->
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-sm-6 col-xs-12">
          <div class="images">
            <img src="/images/about/plain-why-choose-us-2.png" alt="">
          </div>
        </div>
        <div class="col-md-8 col-sm-6 col-xs-12">
          <div class="content-inner">
            <h2 class="title">Built-With Bootstrap4, A New Exprience</h2>
            <p class="lead">We Crafted an awesome design library that is robust and intuitive to use. No matter you're building a business
              presentation websit or a complex web application our design blocks can easily be adapted for your needs.</p>
            <div class="details-list">
              <div class="row">
                <div class="col-sm-6 col-xs-12">
                  <h3>Minimal Coding</h3>
                  <p>The design blocks come with ready to use HTML colde which makes the design kit suitable for developers
                    and designers of all skill levels.</p>
                </div>
                <div class="col-sm-6 col-xs-12">
                  <h3>Responsive</h3>
                  <p>Your website will look good on any device. Each design block has been individually tested on desktop. tablets
                    and smartphones.
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Container Ends -->
  </section>
  <!-- About Us Section Ends -->

  <!-- Other Services Section -->
  <section id="other-services" class="section">
    <div class="container">
      <h1 class="section-title wow fadeInUpQuick">
        Our Services
      </h1>
      <p class="section-subcontent">At vero eos et accusamus et iusto odio dignissimos ducimus qui
        <br> blanditiis praesentium</p>
      <div class="row">
        <!-- Other Service Item Wrapper Starts -->
        <div class="col-sm-6 col-md-6">
          <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
              <a class="nav-link active" data-toggle="tab" href="#home" role="tab" aria-controls="home">
                <i class="icon-screen-desktop"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="tab" href="#profile" role="tab" aria-controls="profile">
                <i class="icon-settings"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="tab" href="#messages" role="tab" aria-controls="messages">
                <i class="icon-heart"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="tab" href="#settings" role="tab" aria-controls="settings">
                <i class="icon-layers"></i>
              </a>
            </li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="home" role="tabpanel">
              <div class="service-content">
                <h3>Responsive Design</h3>
                <p class="lead">At vero eos et accusamus et
                  <a href="#">iusto</a> odio digniss-
                  <br> imos
                  <b>ducimus</b> qui blanditiis praesentium voluptatum deleniti</p>
                <p>quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa
                  qui officia deserunt mollitia animi, id est laborum et dolorum fuga. </p>
              </div>
            </div>
            <div class="tab-pane" id="profile" role="tabpanel">
              <div class="service-content">
                <h3>Very useful custom widget </h3>
                <p class="lead">At vero eos et accusamus et
                  <a href="#">iusto</a> odio digniss-
                  <br> imos
                  <b>ducimus</b> qui blanditiis praesentium voluptatum deleniti</p>
                <p>quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa
                  qui officia deserunt mollitia animi, id est laborum et dolorum fuga. </p>
              </div>
            </div>
            <div class="tab-pane" id="messages" role="tabpanel">
              <div class="service-content">
                <h3>Graphic Design</h3>
                <p class="lead">At vero eos et accusamus et
                  <a href="#">iusto</a> odio digniss-
                  <br> imos
                  <b>ducimus</b> qui blanditiis praesentium voluptatum deleniti</p>
                <p>quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa
                  qui officia deserunt mollitia animi, id est laborum et dolorum fuga. </p>
              </div>
            </div>
            <div class="tab-pane" id="settings" role="tabpanel">
              <div class="service-content">
                <h3>Parallax Background</h3>
                <p class="lead">At vero eos et accusamus et
                  <a href="#">iusto</a> odio digniss-
                  <br> imos
                  <b>ducimus</b> qui blanditiis praesentium voluptatum deleniti</p>
                <p>quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa
                  qui officia deserunt mollitia animi, id est laborum et dolorum fuga. </p>
              </div>
            </div>
          </div>
        </div>
        <!-- Other Service Item Wrapper Ends -->

        <!-- Porgress Strts -->
        <div class="col-sm-6 com-md-6">
          <div class="skill-shortcode">
            <div class="skill">
              <p>
                Web Design 91%
              </p>
              <div class="progress">
                <div class="progress-bar" role="progressbar" data-percentage="91">
                  <span class="sr-only">
                    91% Complete
                  </span>
                </div>
              </div>
            </div>
            <div class="skill">
              <p>
                HTML/CSS 86%
              </p>
              <div class="progress">
                <div class="progress-bar" role="progressbar" data-percentage="86">
                  <span class="sr-only">
                    86% Complete
                  </span>
                </div>
              </div>
            </div>
            <div class="skill">
              <p>
                Graphic Design 78%
              </p>
              <div class="progress">
                <div class="progress-bar" role="progressbar" data-percentage="78">
                  <span class="sr-only">
                    60% Complete
                  </span>
                </div>
              </div>
            </div>
            <div class="skill">
              <p>
                WordPress 65%
              </p>
              <div class="progress">
                <div class="progress-bar" role="progressbar" data-percentage="65">
                  <span class="sr-only">
                    60% Complete
                  </span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Other Service Image Ends-->
      </div>
    </div>
    <!-- Container Ends -->
  </section>
  <!-- Other Services Section End -->

 
  <!-- Featured Section Starts -->
  <section id="featured" class="section">
    <!-- Container Starts -->
    <div class="container">
      <h1 class="section-title wow fadeInUpQuick">
        Core Features
      </h1>
      <p class="section-subcontent">At vero eos et accusamus et iusto odio dignissimos ducimus qui
        <br> blanditiis praesentium</p>
      <div class="row">
        <!-- Start Service Icon 1 -->
        <div class="col-md-4 col-sm-6 wow fadeInUpQuick" data-wow-delay=".2s" data-animation="fadeIn" data-animation-delay="01">
          <div class="featured-box">
            <div class="featured-icon">
              <i class="icon-present">
              </i>
            </div>
            <div class="featured-content">
              <h4>
                Tons of shortcodes
              </h4>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et magna aliqua.
              </p>
            </div>
          </div>
        </div>
        <!-- End featured Icon 1 -->
        <!-- Start featured Icon 1 -->
        <div class="col-md-4 col-sm-6 wow fadeInUpQuick" data-wow-delay=".4s" data-animation="fadeIn" data-animation-delay="01">
          <div class="featured-box">
            <div class="featured-icon">
              <i class="icon-rocket">
              </i>
            </div>
            <div class="featured-content">
              <h4>
                Endless posibilites
              </h4>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et magna aliqua.
              </p>
            </div>
          </div>
        </div>
        <!-- End featured Icon 1 -->
        <!-- Start featured Icon 1 -->
        <div class="col-md-4 col-sm-6 wow fadeInUpQuick" data-wow-delay=".6s" data-animation="fadeIn" data-animation-delay="01">
          <div class="featured-box">
            <div class="featured-icon">
              <i class="icon-pencil">
              </i>
            </div>
            <div class="featured-content">
              <h4>
                24/7 Support
              </h4>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et magna aliqua.
              </p>
            </div>
          </div>
        </div>
        <!-- End featured Icon 1 -->
        <!-- Start featured Icon 1 -->
        <div class="col-md-4 col-sm-6 wow fadeInUpQuick" data-wow-delay=".8s" data-animation="fadeIn" data-animation-delay="01">
          <div class="featured-box">
            <div class="featured-icon">
              <i class="icon-diamond icon-large icon-effect">
              </i>
            </div>
            <div class="featured-content">
              <h4>
                Great Ideas
              </h4>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et magna aliqua.
              </p>
            </div>
          </div>
        </div>
        <!-- End featured Icon 1 -->
        <!-- Start featured Icon 1 -->
        <div class="col-md-4 col-sm-6 wow fadeInUpQuick" data-wow-delay="1s" data-animation="fadeIn" data-animation-delay="01">
          <div class="featured-box">
            <div class="featured-icon">
              <i class="icon-settings">
              </i>
            </div>
            <div class="featured-content">
              <h4>
                Perfect Coding
              </h4>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et magna aliqua.
              </p>
            </div>
          </div>
        </div>
        <!-- End featured Icon 1 -->
        <!-- Start featured Icon 1 -->
        <div class="col-md-4 col-sm-6 wow fadeInUpQuick" data-wow-delay="1.2s" data-animation="fadeIn" data-animation-delay="01">
          <div class="featured-box">
            <div class="featured-icon">
              <i class="icon-star">
              </i>
            </div>
            <div class="featured-content">
              <h4>
                Unique Design
              </h4>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et magna aliqua.
              </p>
            </div>
          </div>
        </div>
        <!-- End featured Icon 1 -->
      </div>
    </div>
    <!-- Container Ends -->
  </section>
  <!-- Featured Section Ends -->

  <!-- Pricing Table Section -->
  <section id="pricing" class="section">
    <div class="container">
      <h1 class="section-title wow fadeInUpQuick" data-wow-delay=".2s">
        Our Pricing
      </h1>
      <p class="section-subcontent wow fadeInUpQuick" data-wow-delay=".3s">At vero eos et accusamus et iusto odio dignissimos ducimus qui
        <br> blanditiis praesentium</p>
      <div class="row">
        <div class="col-md-4">
          <div class="pricing-table pricing-table-x">
            <div class="table-header">
              <h3>
                Single Website
              </h3>
            </div>
            <div class="plan">
              <h3 class="price">
                $49
              </h3>
            </div>
            <div class="plan-info">
              <p>
                <i class="fa fa-check"></i>
                1 domains
              </p>
              <p>
                <i class="fa fa-check"></i>
                1 developer
              </p>
              <p>
                <i class="fa fa-check"></i>
                Minified source code
              </p>
              <p>
                <i class="fa fa-check"></i>
                Free updates forever
              </p>
              <div class="button-area">
                <a href="#" class="btn btn-common">
                  Get Started
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-md-4">
          <div class="pricing-table pricing-table-x">
            <div class="table-header highlight">
              <h3>
                Developer
              </h3>
            </div>
            <div class="plan">
              <h3 class="price">
                $79
              </h3>
            </div>
            <div class="plan-info">
              <p>
                <i class="fa fa-check"></i>
                Unlimited domains
              </p>
              <p>
                <i class="fa fa-check"></i>
                1 developer
              </p>
              <p>
                <i class="fa fa-check"></i>
                Unlimited source code
              </p>
              <p>
                <i class="fa fa-check"></i>
                Free updates forever
              </p>
              <div class="button-area">
                <a href="#" class="btn btn-common">
                  Buy Now
                </a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-md-4 wow">
          <div class="pricing-table pricing-table-x">
            <div class="table-header">
              <h3>
                Business
              </h3>
            </div>
            <div class="plan">
              <h3 class="price">
                $159
              </h3>
            </div>
            <div class="plan-info">
              <p>
                <i class="fa fa-check"></i>
                Unlimited domains
              </p>
              <p>
                <i class="fa fa-check"></i>
                Unlimited developer
              </p>
              <p>
                <i class="fa fa-check"></i>
                Unlimited source code
              </p>
              <p>
                <i class="fa fa-check"></i>
                Free updates forever
              </p>
              <div class="button-area">
                <a href="#" class="btn btn-common">
                  Buy Now
                </a>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
  </section>
  <!-- Pricing Table  End -->

  <!-- Team Section -->
  <section id="team" class="section">
    <!-- Container Starts -->
    <div class="container">
      <h1 class="section-title wow fadeInUpQuick">
        Meet Our Team
      </h1>
      <p class="section-subcontent">At vero eos et accusamus et iusto odio dignissimos ducimus qui
        <br> blanditiis praesentium</p>
      <!-- Row Starts -->
      <div class="row">
        <div class="col-sm-6 col-md-3">
          <!-- Team Item Starts -->
          <div class="team-item wow fadeInUpQuick" data-wow-delay="1s">
            <figure class="team-profile">
              <img src="/images/team/team-01.jpg" alt="">
              <figcaption class="our-team">
                <div class="details">
                  <p class="content-white">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                  <div class="orange-line"></div>
                  <div class="social">
                    <a class="facebook" href="http://www.facebook.com">
                      <i class="fa fa-facebook"></i>
                    </a>
                    <a class="twitter" href="http://www.twitter.com">
                      <i class="fa fa-twitter"></i>
                    </a>
                    <a class="google-plus" href="http://plus.google.com">
                      <i class="fa fa-google-plus"></i>
                    </a>
                  </div>
                </div>
              </figcaption>
            </figure>
            <div class="info">
              <h2>
                Sara smith
              </h2>
              <div class="orange-line"></div>
              <p>
                Founder And ceo
              </p>
            </div>
          </div>
          <!-- Team Item Ends -->
        </div>

        <div class="col-sm-6 col-md-3">
          <!-- Team Item Starts -->
          <div class="team-item wow fadeInUpQuick" data-wow-delay="1.4s">
            <figure class="team-profile">
              <img src="/images/team/team-02.jpg" alt="">
              <figcaption class="our-team">
                <div class="details">
                  <p class="content-white">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                  <div class="orange-line"></div>
                  <div class="social">
                    <a class="facebook" href="http://www.facebook.com">
                      <i class="fa fa-facebook"></i>
                    </a>
                    <a class="twitter" href="http://www.twitter.com">
                      <i class="fa fa-twitter"></i>
                    </a>
                    <a class="google-plus" href="http://plus.google.com">
                      <i class="fa fa-google-plus"></i>
                    </a>
                  </div>
                </div>
              </figcaption>
            </figure>
            <div class="info">
              <h2>
                Sommer Christian
              </h2>
              <div class="orange-line"></div>
              <p>
                creative studio head
              </p>
            </div>
          </div>
          <!-- Team Item Starts -->
        </div>

        <div class="col-sm-6 col-md-3">
          <!-- Team Item Starts -->
          <div class="team-item wow fadeInUpQuick" data-wow-delay="1.8s">
            <figure class="team-profile">
              <img src="/images/team/team-03.jpg" alt="">
              <figcaption class="our-team">
                <div class="details">
                  <p class="content-white">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                  <div class="orange-line"></div>
                  <div class="social">
                    <a class="facebook" href="http://www.facebook.com">
                      <i class="fa fa-facebook"></i>
                    </a>
                    <a class="twitter" href="http://www.twitter.com">
                      <i class="fa fa-twitter"></i>
                    </a>
                    <a class="google-plus" href="http://plus.google.com">
                      <i class="fa fa-google-plus"></i>
                    </a>
                  </div>
                </div>
              </figcaption>
            </figure>
            <div class="info">
              <h2>
                Jane lupkin
              </h2>
              <div class="orange-line"></div>
              <p>
                magento developer
              </p>
            </div>
          </div>
          <!-- Team Item Ends -->
        </div>

        <div class="col-sm-6 col-md-3">
          <!-- Team Item Starts -->
          <div class="team-item wow fadeInUpQuick" data-wow-delay="2.2s">
            <figure class="team-profile">
              <img src="/images/team/team-04.jpg" alt="">
              <figcaption class="our-team">
                <div class="details">
                  <p class="content-white">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                  <div class="orange-line"></div>
                  <div class="social">
                    <a class="facebook" href="http://www.facebook.com">
                      <i class="fa fa-facebook"></i>
                    </a>
                    <a class="twitter" href="http://www.twitter.com">
                      <i class="fa fa-twitter"></i>
                    </a>
                    <a class="google-plus" href="http://plus.google.com">
                      <i class="fa fa-google-plus"></i>
                    </a>
                  </div>
                </div>
              </figcaption>
            </figure>
            <div class="info">
              <h2>
                Sebastian roll
              </h2>
              <div class="orange-line"></div>
              <p>
                Logo / branding designer
              </p>
            </div>
          </div>
          <!-- Team Item Ends -->
        </div>
      </div>
      <!-- Row Ends -->
    </div>
    <!-- Container Ends -->
  </section>
  <!-- Team Section End -->

  <!-- Cool Facts Section -->
  <section id="cool-facts" class="section">
    <!-- Container Starts -->
    <div class="container">
      <!-- Row Starts -->
      <div class="row">
        <div class="col-sm-6 col-md-3 col-lg-3">
          <!-- Fact Block Starts -->
          <div class="fact-block clearfix wow fadeInUp" data-wow-delay="0.3s">
            <div class="facts-item">
              <i class="icon-trophy"></i>
              <div class="fact-count">
                <h3>
                  <span class="counter">40</span>+</h3>
                <h4>Awards won</h4>
              </div>
            </div>
          </div>
          <!-- Fact Block Ends -->
        </div>
        <div class="col-sm-6 col-md-3 col-lg-3">
          <!-- Fact Block Starts -->
          <div class="fact-block clearfix wow fadeInUp" data-wow-delay="0.6s">
            <div class="facts-item">
              <i class="icon-heart"></i>
              <div class="fact-count">
                <h3>
                  <span class="counter">300</span>+</h3>
                <h4>Happy clients</h4>
              </div>
            </div>
          </div>
          <!-- Fact Block Ends -->
        </div>
        <div class="col-sm-6 col-md-3 col-lg-3">
          <!-- Fact Block Starts -->
          <div class="fact-block clearfix wow fadeInUp" data-wow-delay="0.9s">
            <div class="facts-item">
              <i class="icon-ghost"></i>
              <div class="fact-count">
                <h3>
                  <span class="counter">200</span>+</h3>
                <h4>Fun Facts</h4>
              </div>
            </div>
          </div>
          <!-- Fact Block Ends -->
        </div>
        <div class="col-sm-6 col-md-3 col-lg-3">
          <!-- Fact Block Starts -->
          <div class="fact-block clearfix wow fadeInUp" data-wow-delay="1.2s">
            <div class="facts-item">
              <i class="icon-picture"></i>
              <div class="fact-count">
                <h3>
                  <span class="counter">1700</span>+</h3>
                <h4>Exhibitions</h4>
              </div>
            </div>
          </div>
          <!-- Fact Block Ends -->
        </div>
      </div>
      <!-- Row Ends -->
    </div>
    <!-- Container Ends -->
  </section>
  <!-- Cool Facts Section End -->

  <!-- Testimonial Section -->
  <section id="testimonial" class="section">
    <!-- Container Starts -->
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div id="testimonial-item" class="owl-carousel">
            <div class="item">
              <div class="testimonial-inner">
                <div class="testimonial-images">
                  <img class="img-circle" src="/images/testimonial/img1.jpg" alt="">
                  <h4>
                    Steve Austin
                    <span>
                      <a href="#">envato.com </a>
                    </span>
                  </h4>
                </div>
                <div class="rating-star">
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <p>
                  Quisque mollis lacus augue, a hendrerit leo tristique vitae. Mauris non ipsum molestie sagittis elit ac vulputate odio.
                </p>
              </div>
            </div>
            <div class="item">
              <div class="testimonial-inner">
                <div class="testimonial-images">
                  <img class="img-circle" src="/images/testimonial/img2.jpg" alt="">
                  <h4>
                    Chelsey Siltanen
                    <span>
                      <a href="#">Microsoft</a>
                    </span>
                  </h4>
                </div>
                <div class="rating-star">
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <p>
                  Quisque mollis lacus augue, a hendrerit leo tristique vitae. Mauris non ipsum molestie sagittis elit ac vulputate odio.
                </p>
              </div>
            </div>
            <div class="item">
              <div class="testimonial-inner">
                <div class="testimonial-images">
                  <img class="img-circle" src="/images/testimonial/img3.jpg" alt="">
                  <h4>
                    Pamela Fox
                    <span>
                      <a href="#">Khan Academy</a>
                    </span>
                  </h4>
                </div>
                <div class="rating-star">
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <p>
                  Quisque mollis lacus augue, a hendrerit leo tristique vitae. Mauris non ipsum molestie sagittis elit ac vulputate odio.
                </p>
              </div>
            </div>
            <div class="item">
              <div class="testimonial-inner">
                <div class="testimonial-images">
                  <img class="img-circle" src="/images/testimonial/img4.jpg" alt="">
                  <h4>
                    janna Hagan
                    <span>
                      <a href="#">Google</a>
                    </span>
                  </h4>
                </div>
                <div class="rating-star">
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <p>
                  Quisque mollis lacus augue, a hendrerit leo tristique vitae. Mauris non ipsum molestie sagittis elit ac vulputate odio.
                </p>
              </div>
            </div>
            <div class="item">
              <div class="testimonial-inner">
                <div class="testimonial-images">
                  <img class="img-circle" src="/images/testimonial/img5.jpg" alt="">
                  <h4>
                    Paul Tweedy
                    <span>
                      <a href="#">BBC</a>
                    </span>
                  </h4>
                </div>
                <div class="rating-star">
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star-o"></i>
                  <i class="fa fa-star-o"></i>
                </div>
                <p>
                  Quisque mollis lacus augue, a hendrerit leo tristique vitae. Mauris non ipsum molestie sagittis elit ac vulputate odio.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Container Ends -->
  </section>
  <!-- Testimonial Section End -->

  <!-- Blog Section -->
  <section id="blog" class="section">
    <!-- Container Starts -->
    <div class="container">
      <h1 class="section-title wow fadeInUpQuick">
        The Blog
      </h1>
      <p class="section-subcontent">At vero eos et accusamus et iusto odio dignissimos ducimus qui
        <br> blanditiis praesentium</p>
      <!-- Row Starts -->
      <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
          <!-- Blog Item Starts -->
          <div class="blog-item-wrapper">
            <div class="blog-item-img">
              <a href="#">
                <img src="/images/blog/home-items/img1.jpg" alt="">
              </a>
            </div>
            <div class="blog-item-text">
              <h3 class="small-title">
                <a href="#">Amazing Blog Post One</a>
              </h3>
              <p>
                Lorem ipsum dolor sit amet, adipisicing elit. Eos rerum dolorum, est voluptatem modi accusantium perspiciatis ...
              </p>
              <div class="blog-one-footer">
                <a href="#">Read More</a>
                <a href="#">
                  <i class="icon-heart"></i> 59 Likes</a>
                <a href="#">
                  <i class="icon-bubbles"></i> 120 Comments</a>
              </div>
            </div>
          </div>
          <!-- Blog Item Wrapper Ends-->
        </div>

        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
          <!-- Blog Item Wrapper Start-->
          <div class="blog-item-wrapper">
            <div class="blog-item-img">
              <a href="#">
                <img src="/images/blog/home-items/img2.jpg" alt="">
              </a>
            </div>
            <div class="blog-item-text">
              <h3 class="small-title">
                <a href="#">Amazing Blog Post One</a>
              </h3>
              <p>
                Lorem ipsum dolor sit amet, adipisicing elit. Eos rerum dolorum, est voluptatem modi accusantium perspiciatis ...
              </p>

              <div class="blog-one-footer">
                <a href="#">Read More</a>
                <a href="#">
                  <i class="icon-heart"></i> 59 Likes</a>
                <a href="#">
                  <i class="icon-bubbles"></i> 120 Comments</a>
              </div>
            </div>
          </div>
          <!-- Blog Item Wrapper Ends-->
        </div>

        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
          <!-- Blog Item Wrapper Starts-->
          <div class="blog-item-wrapper">
            <div class="blog-item-img">
              <a href="#">
                <img src="/images/blog/home-items/img3.jpg" alt="">
              </a>
            </div>
            <div class="blog-item-text">
              <h3 class="small-title">
                <a href="#">Amazing Blog Post One</a>
              </h3>
              <p>
                Lorem ipsum dolor sit amet, adipisicing elit. Eos rerum dolorum, est voluptatem modi accusantium perspiciatis ...
              </p>
              <div class="blog-one-footer">
                <a href="#">Read More</a>
                <a href="#">
                  <i class="icon-heart"></i> 59 Likes</a>
                <a href="#">
                  <i class="icon-bubbles"></i> 120 Comments</a>
              </div>
            </div>
          </div>
          <!-- Blog Item Wrapper Ends-->
        </div>
      </div>
      <!-- Row Ends -->
    </div>
    <!-- Container Ends -->
  </section>
  <!-- blog Section End -->

  <!-- Clients Section -->
  <section id="clients" class="section">
    <!-- Container Ends -->
    <div class="container">
      <h1 class="section-title wow fadeInUpQuick" data-wow-delay=".5s">
        Clients
      </h1>
      <p class="section-subcontent">At vero eos et accusamus et iusto odio dignissimos ducimus qui
        <br> blanditiis praesentium</p>
      <div class="wow fadeInUpQuick" data-wow-delay="0.3s">
        <!-- Row and Scroller Wrapper Starts -->
        <div class="row" id="clients-scroller">
          <div class="client-item-wrapper">
            <img src="/images/clients/img1.png" alt="">
          </div>
          <div class="client-item-wrapper">
            <img src="/images/clients/img2.png" alt="">
          </div>
          <div class="client-item-wrapper">
            <img src="/images/clients/img3.png" alt="">
          </div>
          <div class="client-item-wrapper">
            <img src="/images/clients/img4.png" alt="">
          </div>
          <div class="client-item-wrapper">
            <img src="/images/clients/img5.png" alt="">
          </div>
          <div class="client-item-wrapper">
            <img src="/images/clients/img6.png" alt="">
          </div>
        </div>
        <!-- Row and Scroller Wrapper Starts -->
      </div>
    </div>
    <!-- Container Ends -->
  </section>
  <!-- Client Section End -->

  <!-- Footer Section -->
  <footer>
    <!-- Container Starts -->
    <div class="container">
      <!-- Row Starts -->
      <div class="row section">
        <!-- Footer Widget Starts -->
        <div class="footer-widget col-md-6 col-lg-3 col-xs-12">
          <h3 class="small-title">
            About Us
          </h3>
          <p>
            Etiam ornare condimentum massa et scelerisque. Mauris nibh ipsum, laoreet at venenatis ac,
          </p>
          <ul class="mb-3">
            <li>
              <i class="fa fa-map-marke"></i> Nash Street , Dearborn, Michigan</li>
            <li>
              <i class="fa fa-phone"></i> +68 313-240-405</li>
            <li>
              <i class="fa fa-phone"></i> +68 32-543-876</li>
          </ul>
        </div>
        <!-- Footer Widget Ends -->

        <!-- Footer Widget Starts -->
        <div class="footer-widget col-md-6 col-lg-3 col-xs-12">
          <h3 class="small-title">
            Quick Links
          </h3>
          <ul class="menu">
            <li>
              <a href="#">About Us</a>
            </li>
            <li>
              <a href="#">Team</a>
            </li>
            <li>
              <a href="#">Terms of Service</a>
            </li>
            <li>
              <a href="#">Sitemap</a>
            </li>
            <li>
              <a href="#">FAQ</a>
            </li>
            <li>
              <a href="#">Events</a>
            </li>
            <li>
              <a href="#">Contact</a>
            </li>
            <li>
              <a href="#">Blog</a>
            </li>
            <li>
              <a href="#">Branches</a>
            </li>
            <li>
              <a href="#">Press Kits</a>
            </li>
          </ul>
        </div>
        <!-- Footer Widget Ends -->

        <!-- Footer Widget Starts -->
        <div class="footer-widget col-md-6 col-lg-3 col-xs-12">
          <h3 class="small-title">
            Popular Posts
          </h3>
          <ul class="image-list">
            <li>
              <figure class="overlay">
                <img class="img-fluid" src="/images/art/a1.jpg" alt="">
              </figure>
              <div class="post-content">
                <h6 class="post-title">
                  <a href="blog-single.html">Business Management Tutorials</a>
                </h6>
                <div class="meta">
                  <span class="date">5 Comments</span>
                </div>
              </div>
            </li>
            <li>
              <figure class="overlay">
                <img class="img-fluid" src="/images/art/a2.jpg" alt="">
              </figure>
              <div class="post-content">
                <h6 class="post-title">
                  <a href="blog-single.html">Top 10 Business Apps and Web Tools</a>
                </h6>
                <div class="meta">
                  <span class="date">2 Comments</span>
                </div>
              </div>
            </li>
          </ul>
        </div>
        <!-- Footer Widget Ends -->

        <!-- Footer Widget Starts -->
        <div class="footer-widget col-md-6 col-lg-3 col-xs-12">
          <h3 class="small-title">
            Newsletter
          </h3>
          <form>
            <input type="text" placeholder="Email here">
            <button type="submit">
              <i class="fa fa-paper-plane-o"></i>
            </button>
          </form>
          <div class="flicker-gallery">
            <h3 class="small-title">
              Instagram
            </h3>
            <a href="#" title="Pan Masala">
              <img src="/images/flicker/img1.jpg" alt="">
            </a>
            <a href="#" title="Sports Template for Joomla">
              <img src="/images/flicker/img2.jpg" alt="">
            </a>
            <a href="" title="Apple Keyboard">
              <img src="/images/flicker/img3.jpg" alt="">
            </a>
          </div>
        </div>
        <!-- Footer Widget Ends -->
      </div>
      <!-- Row Ends -->
    </div>
    <!-- Container Ends -->

    <!-- Copyright -->
    <div id="copyright">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-sm-6">
            <p class="copyright-text">
              © 2018 Engage All right reserved, Designed by
              <a href="#">GrayGrids</a>
            </p>
          </div>
          <div class="col-md-6 col-sm-6">
            <div class="social-footer text-right">
              <a href="#">
                <i class="fa fa-facebook icon-round"></i>
              </a>
              <a href="#">
                <i class="fa fa-twitter icon-round"></i>
              </a>
              <a href="#">
                <i class="fa fa-linkedin icon-round"></i>
              </a>
              <a href="#">
                <i class="fa fa-google-plus icon-round"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Copyright  End-->

  </footer>
  <!-- Footer Section End-->

  <!-- Go To Top Link -->
  <a href="#" class="back-to-top">
    <i class="fa fa-angle-up">
    </i>
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
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script>window.jQuery || document.write('<script src="/js/jquery-slim.min.js"><\/script>')</script>
  <script src="/js/popper.min.js"></script>
  <script src="/js/bootstrap.min.js"></script>
  <script src="/js/vendor/holder.min.js"></script>

</body>
</html>