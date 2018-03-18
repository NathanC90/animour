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
	<h3>�d�ߤ@���ӫ~���</h3>
	<div>
		<p>�ӫ~�s���G${productOne.id}<br>�ӫ~�W�١G${productOne.name}</p>
		<p>����G${productOne.price}<br>�ƶq�G${productOne.quantity}</p>
		<p>�s�y��G${productOne.make}<br>�O�s�����G${productOne.expire}</p>
	</div>
	<hr>

	<h3>�d�ߩҦ��ӫ~���</h3>
	<table>
		<c:forEach var="product" items="${productAll}">
			<p>�ӫ~�s���G${product.id}<br>���ӫ~�W�١G${product.name}</p>
			<p>����G${product.price}<br>�ƶq�G${product.quantity}</p>
			<p>�s�y��G${product.make}<br>�O�s�����G${product.expire}</p>
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
		<p>�s�y��G${insertMember.make}<br>�O�s�����G${insertMember.expire}</p>
	</div>
	<hr>

	<h3>�ק�@���ӫ~���</h3>
	<div>
		<p>�ӫ~�s���G${updateMember.id}<br>���ӫ~�W�١G${updateMember.name}</p>
		<p>����G${updateMember.price}<br>�ƶq�G${updateMember.quantity}</p>
		<p>�s�y��G${updateMember.make}<br>�O�s�����G${updateMember.expire}</p>
	</div>
</body>
</html>