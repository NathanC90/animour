<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>加入動物資料</title>
</head>

<body>
	<center>
	<h3>查詢單筆動物資料</h3>
	<form name="/appointment/testForm" action="/appointment/testForm" method="GET">
	<input id='num' name="id" value="${param.id}" type="text" size="14" style="text-align: left">
	<input type="submit" value="送出"> 
	
</form>
	<br>
	<hr>
	<br>
	<h3>查詢所有動物資料</h3>
	<form name="/hotel/findAll" action="/hotel/findAll"method="GET">
	<input type="submit" value="查詢所有"> 
	</form>
	<br>
	<hr>
	<br>
	<h3>刪除動物資料</h3>
	<form name="/hotel/delete" action="/hotel/delete" method="GET">
	<input id='num' name="hotelId" value="${param.Id}" type="text" size="14" style="text-align: left">
	<input type="submit" value="送出"> 
	<input type="reset" value="清除"> 
	</form>
	<br>
	<hr>
	<br>
	
		<form name="/hotel/insertHotel" action="/hotel/insertHotel" method="POST">
			<table border="1">
<h3>新增房間資料</h3>
				<tbody>
					<tr bgcolor='tan'>
						<td width="120" height="40">姓名:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="onwer" value="${param.onwer}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">房型:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="type" value="${param.type}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">總數:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="total" value="${param.total}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">品種:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="species" value="${param.species}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">狗名:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="dogName" value="${param.dogName}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">入住日期:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="checkIn" value="${param.checkIn}" type="text" size="14"
							style="text-align: left">&nbsp;&nbsp;格式為yyyy-MM-dd 00:00:00</td>
					</tr>

				</tbody>
			</table>
				<input type="submit" value="送出"> 
							<input type="reset" value="清除">
			<br>
			<hr>
			<br>
		</form>
		<form name="/hotel/updateHotel" action="/hotel/updateHotel" method="POST">
			<table border="1">
				<h3>修改房間資料</h3>
				<tbody>
					<tr bgcolor='tan'>
						<td width="120" height="40">房號:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="hotelId" value="${param.hotelId}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">主人姓名:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="onwer" value="${param.onwer}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">房間:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="type" value="${param.type}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">總數:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="total" value="${param.total}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">入住時間:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="checkIn" value="${param.checkIn}" type="text" size="14"
							style="text-align: left">&nbsp;&nbsp;格式為yyyy-MM-dd</td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">狗名:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="dogName" value="${param.dogName}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">種類:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="species" value="${param.species}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
				
				</tbody>
			</table>
			<input type="submit" value="送出"> <input type="reset" value="清除">
		</form>
	</center>
</body>



<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>加入動物資料</title>
</head>

<body>
	<center>
	<h3>查詢單筆動物資料</h3>
	<form name="/hotel/select" action="/hotel/select" method="GET">
	<input id='num' name="hotelId" value="${param.hotelId}" type="text" size="14" style="text-align: left">
	<input type="submit" value="送出"> 
	
</form>
	<br>
	<hr>
	<br>
	<h3>查詢所有動物資料</h3>
	<form name="/hotel/findAll" action="/hotel/findAll"method="GET">
	<input type="submit" value="查詢所有"> 
	</form>
	<br>
	<hr>
	<br>
	<h3>刪除動物資料</h3>
	<form name="/hotel/delete" action="/hotel/delete" method="GET">
	<input id='num' name="hotelId" value="${param.hotelId}" type="text" size="14" style="text-align: left">
	<input type="submit" value="送出"> 
	<input type="reset" value="清除"> 
	</form>
	<br>
	<hr>
	<br>
	
		<form name="/hotel/insertHotel" action="/hotel/insertHotel" method="POST">
			<table border="1">
<h3>新增房間資料</h3>
				<tbody>
					<tr bgcolor='tan'>
						<td width="120" height="40">姓名:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="onwer" value="${param.onwer}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">房型:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="type" value="${param.type}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">總數:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="total" value="${param.total}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">品種:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="species" value="${param.species}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">狗名:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="dogName" value="${param.dogName}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">入住日期:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="checkIn" value="${param.checkIn}" type="text" size="14"
							style="text-align: left">&nbsp;&nbsp;格式為yyyy-MM-dd 00:00:00</td>
					</tr>

				</tbody>
			</table>
				<input type="submit" value="送出"> 
							<input type="reset" value="清除">
			<br>
			<hr>
			<br>
		</form>
		<form name="/hotel/updateHotel" action="/hotel/updateHotel" method="POST">
			<table border="1">
				<h3>修改房間資料</h3>
				<tbody>
					<tr bgcolor='tan'>
						<td width="120" height="40">房號:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="hotelId" value="${param.hotelId}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">主人姓名:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="onwer" value="${param.onwer}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">房間:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="type" value="${param.type}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">總數:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="total" value="${param.total}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">入住時間:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="checkIn" value="${param.checkIn}" type="text" size="14"
							style="text-align: left">&nbsp;&nbsp;格式為yyyy-MM-dd</td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">狗名:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="dogName" value="${param.dogName}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">種類:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="species" value="${param.species}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
				
				</tbody>
			</table>
			<input type="submit" value="送出"> <input type="reset" value="清除">
		</form>
	</center>
</body>

</html>