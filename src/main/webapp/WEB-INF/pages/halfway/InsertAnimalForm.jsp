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
	<form name="selectOneForm" action="/selectOneAnimal.do" method="GET">
	<input id='num' name="animalId" value="${param.id}" type="text" size="14" style="text-align: left">
	<input type="submit" value="送出"> 
	
	</form>
	<br>
	<hr>
	<br>
	<h3>查詢所有動物資料</h3>
	<form name="selectOneForm" action="/selectAllAnimal.do" method="GET">
	<input type="submit" value="查詢所有"> 
	</form>
	<br>
	<hr>
	<br>
	<h3>刪除動物資料</h3>
	<form name="deleteForm" action="/deleteAnimal.do" method="GET">
	<input id='num' name="animalId" value="${param.id}" type="text" size="14" style="text-align: left">
	<input type="submit" value="送出"> 
	<input type="reset" value="清除"> 
	</form>
	<br>
	<hr>
	<br>
	
		<form name="insertAnimalForm" action="/insertAnimal.do" method="POST">
			<table border="1">
<h3>新增動物資料</h3>
				<tbody>
					<tr bgcolor='tan'>
						<td width="120" height="40">姓名:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="name" value="${param.name}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">種類:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="specie" value="${param.specie}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">顏色:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="color" value="${param.color}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">發現日期:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="found" value="${param.found}" type="text" size="14"
							style="text-align: left">&nbsp;&nbsp;格式為yyyy-MM-dd</td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">縣市:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="city" value="${param.city}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">鄉鎮市區:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="district" value="${param.district}" type="text" size="14"
							style="text-align: left"></td>
					</tr>

				</tbody>
			</table>
				<input type="submit" value="送出"> 
							<input type="reset" value="清除">
			<br>
			<hr>
			<br>
		</form>
		<form name="updateAnimalForm" action="/updateAnimal.do" method="POST">
			<table border="1">
				<h3>修改動物資料</h3>
				<tbody>
					<tr bgcolor='tan'>
						<td width="120" height="40">編號:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="animalId" value="${param.name}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">姓名:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="upname" value="${param.name}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">種類:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="upspecie" value="${param.specie}" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">顏色:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="upcolor" value="${param.color}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">發現日期:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="upfound" value="${param.found}" type="text" size="14"
							style="text-align: left">&nbsp;&nbsp;格式為yyyy-MM-dd</td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">縣市:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="upcity" value="${param.city}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">鄉鎮市區:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="updistrict" value="${param.district}" type="text" size="14"
							style="text-align: left"></td>
					</tr>
				
				</tbody>
			</table>
			<input type="submit" value="送出"> <input type="reset" value="清除">
		</form>
	</center>
</body>

</html>