<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Process Product Form</title>
</head>
<body>
<h1>Spring Boot - Upload Status</h1>
<div th:if="${message}">
    <h2 th:text="${message}" ></h2>
</div>
<p>${message}</p>

	<h3>�d�ߤ@���ӫ~���</h3>
	<div>
		<p>�ӫ~�s���G${productOne.id}<br>�ӫ~�W�١G${productOne.name}</p>
		<p>����G${productOne.price}<br>�ƶq�G${productOne.quantity}</p>
		<p>�s�y����G${productOne.makeDate}<br>�O�s�����G${productOne.expire}</p>
	</div>
	<hr>

	<h3>�d�ߩҦ��ӫ~���</h3>
	<table>
		<c:forEach var="product" items="${productAll}">
			<p>�ӫ~�s���G${product.id}<br>���ӫ~�W�١G${product.name}</p>
			<p>����G${product.price}<br>�ƶq�G${product.quantity}</p>
			<p>�s�y��G${product.makeDate}<br>�O�s�����G${product.expire}</p>
			<hr>
		</c:forEach>
	</table>
	<hr>
	
	<h3>�HKeyWord�d�߰ӫ~���</h3>
	<table>
		<c:forEach var="productByNameKeyWord" items="${productByNameKeyWord}">
			<p>�ӫ~�s���G${productByNameKeyWord.id}<br>���ӫ~�W�١G${productByNameKeyWord.name}</p>
			<p>����G${productByNameKeyWord.price}<br>�ƶq�G${productByNameKeyWord.quantity}</p>
			<p>�s�y��G${productByNameKeyWord.makeDate}<br>�O�s�����G${productByNameKeyWord.expire}</p>
			<hr>
		</c:forEach>
	</table>
	<hr>
	
	<h3>�R���@���ӫ~���</h3>
		<p>�R���s���G${deleteId} �@�����</p>
	<hr>

	<h3>�s�W�@���ӫ~���</h3>
	<div>
		<p>�ӫ~�s���G${insertMember.id}<br>���ӫ~�W�١G${insertMember.name}</p>
		<p>����G${insertMember.price}<br>�ƶq�G${insertMember.quantity}</p>
		<p>�s�y��G${insertMember.makeDate}<br>�O�s�����G${insertMember.expire}</p>
	</div>
	<hr>

	<h3>�ק�@���ӫ~���</h3>
	<div>
		<p>�ӫ~�s���G${updateMember.id}<br>���ӫ~�W�١G${updateMember.name}</p>
		<p>����G${updateMember.price}<br>�ƶq�G${updateMember.quantity}</p>
		<p>�s�y��G${updateMember.makeDate}<br>�O�s�����G${updateMember.expire}</p>
	</div>
	
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
						<td>${products.classify.classifyName}</td>
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