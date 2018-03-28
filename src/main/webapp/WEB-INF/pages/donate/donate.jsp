<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>捐款芳名錄</title>
</head>
<body>
	<center>
		<h2>=====捐款紀錄查詢=====</h2>
		<br>
		<hr>
		<br>	
		<h5>輸入您的捐款編號，即可查詢您的單筆捐款紀錄</h5>
		<form name="selectOneDonate" action="/Donate/DonateForm" method="GET">
		
			<input id='num' name="id" value="" type="text"
				size="14" style="text-align: left"> <input type="submit"
				value="送出">
		</form>
		<br>
		<hr>
		<br>
		<h5>目前最新的六筆捐款紀錄</h5>
				
	</center>

</body>
</html>