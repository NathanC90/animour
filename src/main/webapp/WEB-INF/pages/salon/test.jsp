<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
</head>
<body>
<%-- ${selectOne.id} --%>
<%-- ${selectOne.designer} --%>

<h3>查詢一筆空閒時間</h3>
	<table>
		<tbody>
			<tr>
				<td>${selectOne.id}</td>
				<td>${selectOne.designer}</td>
				<td>${selectOne.freeTime}</td>
				<td>(數字1為有空,0為沒有空):${selectOne.oneFree}</td>
				
			</tr>
		</tbody>
	</table>
</body>
</html>