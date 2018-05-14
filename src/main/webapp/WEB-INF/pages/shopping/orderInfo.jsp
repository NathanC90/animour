<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>訂單查詢</h3>
<p>共${orders_size}訂單</p>
<c:forEach var="orders" items="${memberOrders}">
	<p>客戶姓名：${orders.member.name}</p>
	<p>訂單日期：${orders.orderDate}</p>
	<p>訂單金額：${orders.totalAmount}</p>
	<c:forEach var="ordersItem" items="${orders.ordersItem}">
		<p>商品名稱：${ordersItem.name}</p>
		<p>商品價格：${ordersItem.price}</p>
		<p>購買數量：${ordersItem.quantity}</p>
	</c:forEach>
	<br>
</c:forEach>
</body>
</html>