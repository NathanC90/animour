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

	<h3>查詢一筆商品資料</h3>
	<div>
		<p>商品編號：${productOne.id}<br>商品名稱：${productOne.name}</p>
		<p>價格：${productOne.price}<br>數量：${productOne.quantity}</p>
		<p>製造日期：${productOne.makeDate}<br>保存期限：${productOne.expire}</p>
	</div>
	<hr>

	<h3>查詢所有商品資料</h3>
	<table>
		<c:forEach var="product" items="${productAll}">
			<p>商品編號：${product.id}<br>產商品名稱：${product.name}</p>
			<p>價格：${product.price}<br>數量：${product.quantity}</p>
			<p>製造日：${product.makeDate}<br>保存期限：${product.expire}</p>
			<hr>
		</c:forEach>
	</table>
	<hr>
	
	<h3>以KeyWord查詢商品資料</h3>
	<table>
		<c:forEach var="productByNameKeyWord" items="${productByNameKeyWord}">
			<p>商品編號：${productByNameKeyWord.id}<br>產商品名稱：${productByNameKeyWord.name}</p>
			<p>價格：${productByNameKeyWord.price}<br>數量：${productByNameKeyWord.quantity}</p>
			<p>製造日：${productByNameKeyWord.makeDate}<br>保存期限：${productByNameKeyWord.expire}</p>
			<hr>
		</c:forEach>
	</table>
	<hr>
	
	<h3>刪除一筆商品資料</h3>
		<p>刪除編號：${deleteId} 一筆資料</p>
	<hr>

	<h3>新增一筆商品資料</h3>
	<div>
		<p>商品編號：${insertMember.id}<br>產商品名稱：${insertMember.name}</p>
		<p>價格：${insertMember.price}<br>數量：${insertMember.quantity}</p>
		<p>製造日：${insertMember.makeDate}<br>保存期限：${insertMember.expire}</p>
	</div>
	<hr>

	<h3>修改一筆商品資料</h3>
	<div>
		<p>商品編號：${updateMember.id}<br>產商品名稱：${updateMember.name}</p>
		<p>價格：${updateMember.price}<br>數量：${updateMember.quantity}</p>
		<p>製造日：${updateMember.makeDate}<br>保存期限：${updateMember.expire}</p>
	</div>
	
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
						<td>${products.classify.classifyName}</td>
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