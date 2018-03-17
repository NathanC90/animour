<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有動物醫院資料查詢</title>
</head>
<body>

	<table>
		<h3>所有動物醫院資料</h3>
		<c:forEach var="hosp" items="${hospital}">
			<td>${hosp.veterinaryHospId}</td>
			<td>${hosp.veterinaryHospName}</td>
			<td>${hosp.veterinaryHospTel}</td>
			<td>${hosp.veterinaryHospAddr}</td>
			</tbody>
		</c:forEach>
	</table>
	<hr>


</body>
</html>