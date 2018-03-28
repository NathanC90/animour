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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>最新消息</title>
</head>
<body>
	<header id="header-wrap">
		<!-- Navbar Starts -->
	<jsp:include page="../navbar.jsp"></jsp:include>
		<!-- Navbar ends -->
	</header>
	
	<!-- Container Starts -->
				<div class="container">
					<h1 class="section-title wow fadeIn animated" data-wow-delay=".2s">
						最新活動專區</h1>

					<div class="row">
						<c:forEach var="news" items="${allNews}">
							<div class="col-md-4">
								<div class="card mb-4 box-shadow">
									<img class="card-img-top" src="/images/adopt/cats/ad-cat2.jpg" width="80px" alt="">
									<div class="card-body" style="margin-bottom: 5px">
										<p class="card-text" style="padding: 0px">活動編號：${news.seqno}</p>
										<p class="card-text" style="padding: 0px">活動名稱：${news.subject}</p>
										<p class="card-text" style="padding: 0px">活動內文：${news.content}</p>
										<p class="card-text" style="padding: 0px">更新時間：${news.updateTime}</p>
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
	
	<h3>新增商品資料</h3>
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
	</center>

</body>
</html>