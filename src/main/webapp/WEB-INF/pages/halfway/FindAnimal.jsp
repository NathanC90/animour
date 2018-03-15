<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有動物資料查詢</title>
</head>
<body>

	<table>
		<h3>所有動物資料</h3>
		<c:forEach var="animal" items="${animals}">
			<td>${animal.animalId}</td>
			<td>${animal.name}</td>
			<td>${animal.specie}</td>
			<td>${animal.color}</td>
			<td>${animal.found}</td>
			<td>${animal.upload}</td>
			<td>${animal.city}</td>
			<td>${animal.district}</td>
			</tbody>
		</c:forEach>
	</table>
	<hr>

	<h3>查詢一筆動物資料</h3>
	<table>
		<tbody>
			<tr>
				<td>${animal.animalId}</td>
				<td>${animal.name}</td>
				<td>${animal.specie}</td>
				<td>${animal.color}</td>
				<td>${animal.found}</td>
				<td>${animal.upload}</td>
				<td>${animal.city}</td>
				<td>${animal.district}</td>
			</tr>
		</tbody>
	</table>
	<hr>
	<h3>修改一筆動物資料</h3>
	<table>
		<tbody>
			<tr>
				<td>${upanimal.animalId}</td>
				<td>${upanimal.name}</td>
				<td>${upanimal.specie}</td>
				<td>${upanimal.color}</td>
				<td>${upanimal.found}</td>
				<td>${upanimal.upload}</td>
				<td>${upanimal.city}</td>
				<td>${upanimal.district}</td>
			</tr>
		</tbody>
	</table>
	<hr>
	<h3>新增一筆動物資料</h3>
	<table>
		<tbody>
			<tr>
				<td>${inanimal.animalId}</td>
				<td>${inanimal.name}</td>
				<td>${inanimal.specie}</td>
				<td>${inanimal.color}</td>
				<td>${inanimal.found}</td>
				<td>${inanimal.upload}</td>
				<td>${inanimal.city}</td>
				<td>${inanimal.district}</td>
			</tr>
		</tbody>
	</table>
	<hr>
	<h3>刪除一筆動物資料</h3>
	<table>
		<tbody>
			<tr>
				<td>刪除編號：${dlanimalId} 一筆資料</td>
			</tr>
		</tbody>
	</table>
</body>
</html>