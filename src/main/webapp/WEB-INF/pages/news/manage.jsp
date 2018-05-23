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
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/bootstrap-table/src/bootstrap-table.css">
    <link rel="stylesheet" href="../assets/examples.css">
    <script src="../assets/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/bootstrap-table/src/bootstrap-table.js"></script>
    <script src="../assets/bootstrap-table/src/extensions/export/bootstrap-table-export.js"></script>
    <script src="//rawgit.com/hhurz/tableExport.jquery.plugin/master/tableExport.js"></script>
    <script src="../ga.js"></script>
<link rel="stylesheet" type="text/css"
	href="/extras/owl/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="/extras/owl/owl.theme.css">
<link rel="stylesheet" type="text/css" href="/extras/animate.css">
<link rel="stylesheet" type="text/css" href="/extras/normalize.css">
 <title>
      
        後台管理 
      
    </title>

    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic" rel="stylesheet">
    
      <link href="../admin/assets/css/toolkit-inverse.css" rel="stylesheet">
    
    
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
<!-- adminNavbar Starts -->
		<jsp:include page="../admin/adminNavbar.jsp"></jsp:include>
<!-- adminNavbar ends -->
 
<!-- Page Content Start 重複的內容開始 -->
	<section class="section">
		<div class="container">
			<div class="row">
			<!-- Insert Test starts-->
				<h3>查詢一筆活動</h3>
					<form name="selectOneForm" action="/findOneNews" method="GET">
						<input name="subjectId" value="${param.subjectId}" type="text" size="50" style="text-align: left">
						<input type="submit" value="查詢單筆"> 
					</form>
					<!-- Show One News starts-->
					<div class="container">
						<div class="row">
							<h2>活動名稱：${oneNews.subject}</h2><br>
							<h4>活動日期：${oneNews.eventDate}</h4><br>
							<h4>活動地點：${oneNews.address}</h4><br>
							<h4>活動簡介：${oneNews.content}</h4><br>
						</div>
					</div>
						<!-- Show One News ends -->
						
						
			</div>
		</div>
	<div class="container">
		<div class="row">	
			<h3>查詢所有活動</h3>
				<form name="selectAllForm" action="/findAllNews" method="GET">
					<input type="submit" value="查詢所有">
				</form>
			<hr>
		</div>
		<!-- Show All News starts -->
						<div class="row">
							<c:forEach var="news" items="${allNews}">
								<h2>活動名稱：${news.subject}</h2>
								<h4>活動日期：${news.eventDate}</h4>
								<h4>活動地點：${news.address}</h4>
								<h4>活動簡介：${news.content}</h4>
							</c:forEach>
						</div>
						
						<!-- Show All News ends -->
	</div>
	<div class="container">
		<div class="row">
			<h3>刪除一筆活動</h3>
				<form name="deleteForm" action="/deleteNews" method="GET">
					<input name="subjectId" value="${param.subjectId}" type="text" size="50" style="text-align: left">
					<input type="submit" value="送出"> 
					<input type="reset" value="清除"> 
				</form>
			<hr>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<h3>新增活動公告</h3>
				<form name="insertForm" action="/insertNews" method="POST">
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
									name="publishDate" value="${param.publishDate}" type="text" size="50"
									style="text-align: left"></td>
							</tr>
							<tr>
								<td width="120" height="40">結束時間:</td>
								<td width="600" height="40" align="left"><input id='num'
									name="publishExpire" value="${param.publishExpire}" type="text" size="50"
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
			</div>
		</div>
		<div class="container">
			<div class="row">
				<form name="updateNewsForm" action="/updateNews" method="GET">
					<h3>修改活動訊息</h3>
					<table border="1">
						<tbody>
							<tr>
								<td width="120" height="40">活動名稱:</td>
								<td width="600" height="40" align="left"><input id='num'
									name="subject" value="${param.subject}" type="text" size="50"
									style="text-align: left">
							</tr>
							<tr>
								<td width="120" height="40">活動簡介:</td>
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
			</div>
		</div>

			<!-- Insert Test ends -->
						
						
				</form:form>
				</div>
			</div>
		</div>
	</section>

	<!-- 重複的內容結束 -->


<script src="../admin/assets/js/jquery.min.js"></script>
<script src="../admin/assets/js/tether.min.js"></script>
<script src="../admin/assets/js/chart.js"></script>
<script src="../admin/assets/js/tablesorter.min.js"></script>
<script src="../admin/assets/js/toolkit.js"></script>
<script src="../admin/assets/js/application.js"></script>
<script src="../admin/assets/js/bootstrap-table-export.js"></script>
<script>
      // execute/clear BS loaders for docs
      $(function(){while(window.BS&&window.BS.loader&&window.BS.loader.length){(window.BS.loader.pop())()}})
</script>
<script src="extensions/export/bootstrap-table-export.js"></script>
</body>
</html>