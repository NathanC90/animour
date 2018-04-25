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
		�S������ӫ~���
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
				<th>�s��</th>
				<th>�R��</th>
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
						<td><a href="">�s��</a></td>
						<td><a href="">�R��</a></td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="9">
						�@ ${page.totalElements}�O��
						�@${page.totalPages}��
						�ثe��${page.number + 1}��
						<a href="?pageNo=${page.number + 1 - 1}">�W�@��</a>
						<a href="?pageNo=${page.number + 1 + 1}">�U�@��</a>
					</td>
				</tr>
		</table>
	</c:if>
	
</body>
</html>