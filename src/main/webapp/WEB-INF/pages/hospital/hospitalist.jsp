<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
<!--text-->
td{
width:150px;
boder:3px double black;
text-align: center;
margin:auto;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有動物醫院資料查詢</title>
</head>
<body>
	<H1>醫院資料</H1>
	<table>
		<tbody>

			<h3>所有動物醫院資料</h3>
			<tr>
				<th>醫院I D</th>
				<th>醫院名稱</th>
				<th>醫院電話</th>
				<th>醫院地址</th>
			</tr>
			<c:forEach var="hosp" items="${alllist}">
				<tr>
					<td>${hosp.veterinaryHospId}</td>
					<td>${hosp.veterinaryHospName}</td>
					<td>${hosp.veterinaryHospTel}</td>
					<td>${hosp.veterinaryHospAddr}</td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
	<hr>


</body>
</html>