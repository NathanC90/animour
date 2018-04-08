<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<title>ProductIndex</title>
</head>
<body>
	<center>
	<form action="/product/upload" method="POST" enctype="multipart/form-data">
		圖片:<input type="file" name="file">
		<input type="submit" value="上傳">
	</form>
	
	<h3>查詢一筆商品</h3>
	<form name="selectOneForm" action="<c:url value="/selectOneProduct"/>" method="GET">
	<input name="id" value="${param.id}" type="text" size="50" style="text-align: left">
	<input type="submit" value="查詢單筆"> 
	</form>
	<hr>
	
	<h3>查詢所有商品</h3>
	<form name="selectAllForm" action="<c:url value="/selectAllProduct"/>" method="GET">
	<input type="submit" value="查詢所有">
	</form>
	<hr>
	
	<h3>刪除一筆商品</h3>
	<form name="deleteForm" action="<c:url value="/deleteOneProduct"/>" method="GET">
	<input name="id" value="${param.id}" type="text" size="50" style="text-align: left">
	<input type="submit" value="送出"> 
	<input type="reset" value="清除"> 
	</form>
	<hr>
	
	<h3>新增商品資料</h3>
		<form name="insertForm" action="<c:url value="/insertProduct"/>" method="POST">
			<table border="1">
				<tbody>
					<tr>
						<td width="120" height="40">商品名稱:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="name" value="${param.name}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">商品價格:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="price" value="${param.price}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">商品數量:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="quantity" value="${param.quantity}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
					<tr>
						<td width="120" height="40">製造日期:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="makeDate" value="${param.makeDate}" type="text" size="50"
							style="text-align: left">&nbsp;&nbsp;格式為yyyy-MM-dd hh:mm:ss</td>
					</tr>
					<tr>
						<td width="120" height="40">保存期限:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="expire" value="${param.expire}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
					<tr>
						<td width="120" height="40">上架日期:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="shelvesDate" value="${param.shelvesDate}" type="text" size="50"
							style="text-align: left">&nbsp;&nbsp;格式為yyyy-MM-dd</td>
					</tr>
					<tr>
						<td width="120" height="40">商品類別:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="classify.classifyName" value="${param.classify}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
				</tbody>
			</table>
			<br>
				<input type="submit" value="確定新增">
				<input type="reset" value="清除">
			<hr>
		</form>
		
		<form name="updateProductForm" action="/updateProduct" method="POST">
			<h3>修改商品資料</h3>
			<table border="1">
				<tbody>
					<tr>
						<td width="120" height="40">商品編號:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="id" value="${param.id}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">商品名稱:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="name" value="${param.name}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">商品價格:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="price" value="${param.price}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">商品數量:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="quantity" value="${param.quantity}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
					<tr>
						<td width="120" height="40">製造日期:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="make" value="${param.makeDate}" type="text" size="50"
							style="text-align: left">&nbsp;&nbsp;格式為yyyy-MM-dd hh:mm:ss</td>
					</tr>
					<tr>
						<td width="120" height="40">保存期限:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="expire" value="${param.expire}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
				
				</tbody>
			</table>
			<br>
			<input type="submit" value="確定修改">
			<input type="reset" value="清除">
		</form>
	</center>
</body>
</html>