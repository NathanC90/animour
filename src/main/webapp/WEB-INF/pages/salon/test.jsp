<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

			<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
			<html>

			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
				<title>test</title>
			</head>
			<div>${reservationDate.reservationDate}</div>>

			<body>
				<div>
					<c:forEach var="var" items="${reservationDate}">

						<h3>查詢一筆空閒時間</h3>
						<table>

							<tbody>
								<tr>
									<td>${var.date}</td>
									<!-- <td>${var.date.price}</td> -->

								</tr>
							</tbody>
						</table>
					</c:forEach>

				</div>


			</body>

			</html>