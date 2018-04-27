<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
<title>Process Product Form</title>
</head>
<body>
<h1>Spring Boot - Upload Status</h1>
<div th:if="${message}">
    <h2 th:text="${message}" ></h2>
</div>
<p>${message}</p>


	<c:if test="${page == null || page.numberOfElements == 0}">
		沒有任何商品資料
	</c:if>
	<c:if test="${page != null || page.numberOfElements > 0}">
		<table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>PRICE</th>
				<th>QUANTITY</th>
				<th>MAKE_DATE</th>
				<th>EXPIRE</th>
				<th>CLASSIFY</th>
				<th>編輯</th>
				<th>刪除</th>
			</tr>
				<c:forEach var="products" items="${page.content}">
					<tr>
						<td>${products.id}</td>
						<td>${products.name}</td>
						<td>${products.price}</td>
						<td>${products.quantity}</td>
						<td>${products.makeDate}</td>
						<td>${products.expire}</td>
						<td>${products.classify.name}</td>
						<td><a href="">編輯</a></td>
						<td><a href="">刪除</a></td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="9">
						共 ${page.totalElements}記錄
						共${page.totalPages}頁
						目前第${page.number + 1}頁
						<a href="?pageNo=${page.number + 1 - 1}">上一頁</a>
						<a href="?pageNo=${page.number + 1 + 1}">下一頁</a>
					</td>
				</tr>
		</table>
	</c:if>
	
</body>
</html>