<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>最新消息</title>
</head>
<body>
<h3>查詢一筆活動資料</h3>
	<div>
		<p>活動編號：${oneNews.seqno}<br>活動名稱：${oneNews.subject}</p>
		<p>活動內文：${oneNews.content}<br>更新時間：${oneNews.updateTime}</p>
	</div>
	<hr>

	<h3>查詢所有活動資料</h3>
	<table>
		<c:forEach var="news" items="${allNews}">
		<p>活動編號：${news.seqno}<br>活動名稱：${news.subject}</p>
		<p>活動內文：${news.content}<br>更新時間：${news.updateTime}</p>
		<hr>
		</c:forEach>
	</table>
	<hr>
	
<!-- 	<h3>刪除一筆活動資料</h3> -->
<%-- 		<p>刪除編號：${delete} 一筆資料</p> --%>
<!-- 	<hr> -->

	<h3>新增一筆活動資料</h3>
	<div>
		<p>活動編號：${insertNews.seqno}<br>活動名稱：${insertNews.subject}</p>
		<p>活動內容：${insertNews.content}<br>發布時間：${insertNews.publishTime}</p>
		<p>結束時間：${insertNews.publishTimeEnd}<br>發布人：${insertNews.createUser}</p>
	</div>
	<hr>

	<h3>修改一筆活動資料</h3>
	<div>
		<p>活動編號：${updateNews.seqno}<br>活動名稱：${updateNews.subject}</p>
		<p>活動內容：${updateNews.content}<br>更新使用者：${updateNews.updateUser}</p>
		<p>更新時間：${updateNews.updateTime}</p>
		
	</div>

</body>
</html>