<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>ProductIndex</title>
</head>
<body>
	<center>
	<h3>�d�ߤ@���ӫ~</h3>
	<form name="selectOneForm" action="<c:url value="/selectOneProduct"/>" method="GET">
	<input name="id" value="${param.id}" type="text" size="50" style="text-align: left">
	<input type="submit" value="�d�߳浧"> 
	</form>
	<hr>
	
	<h3>�d�ߩҦ��ӫ~</h3>
	<form name="selectAllForm" action="<c:url value="/selectAllProduct"/>" method="GET">
	<input type="submit" value="�d�ߩҦ�">
	</form>
	<hr>
	
	<h3>�R���@���ӫ~</h3>
	<form name="deleteForm" action="<c:url value="/deleteOneProduct"/>" method="GET">
	<input name="id" value="${param.id}" type="text" size="50" style="text-align: left">
	<input type="submit" value="�e�X"> 
	<input type="reset" value="�M��"> 
	</form>
	<hr>
	
	<h3>�s�W�ӫ~���</h3>
		<form name="insertForm" action="<c:url value="/insertProduct"/>" method="POST">
			<table border="1">
				<tbody>
					<tr>
						<td width="120" height="40">�ӫ~�W��:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="name" value="${param.name}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">�ӫ~����:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="price" value="${param.price}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">�ӫ~�ƶq:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="quantity" value="${param.quantity}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
					<tr>
						<td width="120" height="40">�s�y���:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="make" value="${param.make}" type="text" size="50"
							style="text-align: left">&nbsp;&nbsp;�榡��yyyy-MM-dd hh:mm:ss</td>
					</tr>
					<tr>
						<td width="120" height="40">�O�s����:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="expire" value="${param.expire}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
				</tbody>
			</table>
			<br>
				<input type="submit" value="�T�w�s�W">
				<input type="reset" value="�M��">
			<hr>
		</form>
		
		<form name="updateProductForm" action="/updateProduct" method="POST">
			<h3>�ק�ӫ~���</h3>
			<table border="1">
				<tbody>
					<tr>
						<td width="120" height="40">�ӫ~�s��:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="id" value="${param.id}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">�ӫ~�W��:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="name" value="${param.name}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">�ӫ~����:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="price" value="${param.price}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">�ӫ~�ƶq:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="quantity" value="${param.quantity}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
					<tr>
						<td width="120" height="40">�s�y���:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="make" value="${param.make}" type="text" size="50"
							style="text-align: left">&nbsp;&nbsp;�榡��yyyy-MM-dd hh:mm:ss</td>
					</tr>
					<tr>
						<td width="120" height="40">�O�s����:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="expire" value="${param.expire}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
				
				</tbody>
			</table>
			<br>
			<input type="submit" value="�T�w�ק�">
			<input type="reset" value="�M��">
		</form>
	</center>

</body>
</html>