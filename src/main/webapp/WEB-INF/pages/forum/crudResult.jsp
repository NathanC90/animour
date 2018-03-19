<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有討論串查詢</title>
</head>
<body>

	<table>
		<tbody>
			<h3>所有討論串</h3>
			<c:forEach var="article" items="${articles}">
				<tr>
				<td>${article.articleId}</td>
				<td>${article.postName}</td>
				<td>${article.articleSubject}</td>
				<td>${article.articleContent}</td>
				<td>${article.postTime}</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<hr>

	<h3>查詢一筆討論串</h3>
	<table>
		<tbody>
			<tr>
				<td>${article.articleId}</td>
				<td>${article.postName}</td>
				<td>${article.articleSubject}</td>
				<td>${article.articleContent}</td>
				<td>${article.postTime}</td>
			</tr>
		</tbody>
	</table>
	<hr>
	<h3>修改一筆討論串</h3>
	<table>
		<tbody>
			<tr>
				<td>${updateArticle.articleId}</td>
				<td>${updateArticle.postName}</td>
				<td>${updateArticle.articleSubject}</td>
				<td>${updateArticle.articleContent}</td>
				<td>${updateArticle.postTime}</td>
			</tr>
		</tbody>
	</table>
	<hr>
	<h3>新增一筆討論串</h3>
	<table>
		<tbody>
			<tr>
				<td>${insertArticle.articleId}</td>
				<td>${insertArticle.postName}</td>
				<td>${insertArticle.articleSubject}</td>
				<td>${insertArticle.articleContent}</td>
				<td>${insertArticle.postTime}</td>
			</tr>
		</tbody>
	</table>
	<hr>
	<h3>刪除一筆討論串</h3>
	<table>
		<tbody>
			<tr>
				<td>刪除編號：${deleteArticle} 一筆資料</td>

			</tr>
		</tbody>
	</table>
	<c:forEach var="err" items="${errors}">
		<p>${err}</p>

	</c:forEach>
</body>
</html>