<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Insert title here</title>
            </head>

            <body>

                <nav class="navbar navbar-expand-md fixed-top scrolling-navbar nav-bg">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <a class="navbar-brand" href="/">
                                <img style="position: left" src="/images/logo.png" alt="">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false"
                                aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                        </div>
                        <div class="collapse navbar-collapse" id="main-menu">
                            <ul class="navbar-nav mr-auto w-100 justify-content-end">

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="/news/index?pageNo=1" aria-haspopup="true" aria-expanded="false">最新消息</a>
                                    <div class="dropdown-menu">
                                        <!--<a class="dropdown-item" href="/NewsIndex">認養活動</a> <a class="dropdown-item"
							href="">寵物保健</a> <a class="dropdown-item" href="">演講座談</a> -->

                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="/halfway" aria-haspopup="true" aria-expanded="false">中途專區</a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="/halfway">認養搜尋</a>
                                        <a class="dropdown-item" href="/halfway/showAdoption">查詢通知</a>
                                        <a class="dropdown-item" href="/halfway/updateAnimal">資料維護</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="/product/index">寵物市集</a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="/product/index">新品上市</a>
                                        <a class="dropdown-item" href="/product/maintain">商品管理</a>
                                        <!-- 						<a class="dropdown-item" href="l">好康優惠</a> -->
                                        <!-- 						<a class="dropdown-item" href="l">寵物飲食</a> -->
                                        <!-- 						<a class="dropdown-item" href="l">寵物用品</a> -->
                                    </div>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="/reservationDate" aria-haspopup="true" aria-expanded="false">寵物salon</a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="">salon簡介</a>
                                        <a class="dropdown-item" href="/editReservation">訂單編輯</a>
                                        <a class="dropdown-item" href="/appointment/testForm">test</a>
                                        <a class="dropdown-item" href="/appointment/firstPage">reservation</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="/hospital" aria-haspopup="true" aria-expanded="false">寵物醫院</a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="/hospital">各區醫院</a>
                                        <a class="dropdown-item" href="/findorder">預約結果查詢</a>
                                        <!-- 								 <a class="dropdown-item" href="">看診進度查詢</a> -->
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="/forum/findAll" aria-haspopup="true" aria-expanded="false">部落格分享</a>
                                    <div class="dropdown-menu">
                                        <!-- 						<a class="dropdown-item" href="/forum/findAll">本周最新</a> -->
                                        <!-- 								<a class="dropdown-item" href="">熱門文章</a>  -->
                                        <!-- 								<a class="dropdown-item" href="">精選圖文</a> -->
                                    </div>
                                </li>

                                <sec:authorize access="hasRole('Admin')">
                                    <!-- 管理員可讀 -->
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="/user/" aria-haspopup="true" aria-expanded="false">
                                            <sec:authentication property="principal.username" /> 您好</a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="/users">會員資料</a>
                                            <a class="dropdown-item" href="/logout">登出</a>

                                        </div>
                                    </li>
                                </sec:authorize>



                                <sec:authorize access="hasRole('Member')">
                                    <!-- 會員可讀 -->
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="/<sec:authentication property="principal.username"/>" aria-haspopup="true" aria-expanded="false">
                                            <sec:authentication property="principal.username" var="username" />${username} 您好</a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="/${username}">個人首頁</a>
                                            <a class="dropdown-item" href="/update">修改個人資料</a>
                                            <a class="dropdown-item" href="/changepassword">修改密碼</a>
                                            <a class="dropdown-item" href="/logout">登出</a>

                                        </div>
                                    </li>
                                </sec:authorize>
                                <sec:authorize access="isAnonymous()">
                                    <!-- 匿名者 -->
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="/login" aria-haspopup="true" aria-expanded="false">會員登入/註冊</a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="/sign_up">註冊</a>
                                        </div>

                                    </li>
                                </sec:authorize>
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
                                <!-- <ul>
					<li><a href="">認養活動</a></li>
					<li><a href="">寵物保健</a></li>
					<li><a href="">演講座談</a></li>
				</ul>-->
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
                                        <a href="">預約結果查詢</a>
                                    </li>
                                    <li>
                                        <a href=""></a>
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
                        <span class="navbar-brand"><img src="/images/shopping/product/shoppingCart.ico" alt="">
                        	共${sessionScope.cart != null ? sessionScope.cart.size() : 0}筆</span>
                        <a class="navbar-brand" href="/cart/index">
                        <c:set var="total" value="0"></c:set>
                        <c:forEach var="cartItem" items="${sessionScope.cart}">
                        	<c:set var="total" value="${total + cartItem.product.price * cartItem.quantity}"></c:set>
                        </c:forEach>
					  	<span>金額 ：${total}</span>
                      </a>
                </nav>
            </body>

            </html>