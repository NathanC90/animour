<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Process Product Form</title>
</head>
<body>
	<h3>查詢一筆商品資料</h3>
	<div>
		<p>商品編號：${productOne.id}<br>商品名稱：${productOne.name}</p>
		<p>價格：${productOne.price}<br>數量：${productOne.quantity}</p>
		<p>製造日：${productOne.make}<br>保存期限：${productOne.expire}</p>
	</div>
	<hr>

	<h3>查詢所有商品資料</h3>
	<table>
		<c:forEach var="product" items="${productAll}">
			<p>商品編號：${product.id}<br>產商品名稱：${product.name}</p>
			<p>價格：${product.price}<br>數量：${product.quantity}</p>
			<p>製造日：${product.make}<br>保存期限：${product.expire}</p>
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
		<p>製造日：${insertMember.make}<br>保存期限：${insertMember.expire}</p>
	</div>
	<hr>

	<h3>修改一筆商品資料</h3>
	<div>
		<p>商品編號：${updateMember.id}<br>產商品名稱：${updateMember.name}</p>
		<p>價格：${updateMember.price}<br>數量：${updateMember.quantity}</p>
		<p>製造日：${updateMember.make}<br>保存期限：${updateMember.expire}</p>
	</div>
</body>
</html>