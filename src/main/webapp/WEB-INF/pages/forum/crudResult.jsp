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
				<td>${article.id}</td>
				<td>${article.postName}</td>
				<td>${article.subject}</td>
				<td>${article.content}</td>
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
				<td>${findOneArticle.id}</td>
				<td>${findOneArticle.postName}</td>
				<td>${findOneArticle.subject}</td>
				<td>${findOneArticle.content}</td>
				<td>${findOneArticle.postTime}</td>
			</tr>
		</tbody>
	</table>
	<hr>
	<h3>修改一筆討論串</h3>
	<table>
		<tbody>
			<tr>
				<td>${updateArticle.id}</td>
				<td>${updateArticle.postName}</td>
				<td>${updateArticle.subject}</td>
				<td>${updateArticle.content}</td>
				<td>${updateArticle.postTime}</td>
			</tr>
		</tbody>
	</table>
	<hr>
	<h3>新增一筆討論串</h3>
	<table>
		<tbody>
			<tr>
				<td>${insertArticle.id}</td>
				<td>${insertArticle.postName}</td>
				<td>${insertArticle.subject}</td>
				<td>${insertArticle.content}</td>
				<td>${insertArticle.postTime}</td>
			</tr>
		</tbody>
	</table>
	<hr>
	<h3>刪除一筆討論串</h3>
	<table>
		<tbody>
			<tr>
				<td>刪除編號：${deleteArticle.id} 一筆資料</td>

			</tr>
		</tbody>
	</table>
<%-- 	<c:forEach var="err" items="${errors}"> --%>
<%-- 		<p>${err}</p> --%>

<%-- 	</c:forEach> --%>
</body>
</html>