<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>最新消息</title>
</head>
<body>
<center>
	<h3>查詢一筆活動</h3>
	<form name="selectOneForm" action="<c:url value="/findOneNews"/>" method="GET">
	<input name="seqno" value="${param.seqno}" type="text" size="50" style="text-align: left">
	<input type="submit" value="查詢單筆"> 
	</form>
	<hr>
	
	<h3>查詢所有活動</h3>
	<form name="selectAllForm" action="<c:url value="/findAllNews"/>" method="GET">
	<input type="submit" value="查詢所有">
	</form>
	<hr>
	
	<h3>刪除一筆活動</h3>
	<form name="deleteForm" action="<c:url value="/deleteNews"/>" method="GET">
	<input name="seqno" value="${param.seqno}" type="text" size="50" style="text-align: left">
	<input type="submit" value="送出"> 
	<input type="reset" value="清除"> 
	</form>
	<hr>
	
	<h3>新增商品資料</h3>
		<form name="insertForm" action="<c:url value="/insertNews"/>" method="POST">
			<table border="1">
				<tbody>
					<tr>
						<td width="120" height="40">活動名稱:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="subject" value="${param.subject}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">活動內容:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="content" value="${param.content}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">發布時間:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="publishTime" value="${param.publishTime}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
					<tr>
						<td width="120" height="40">結束時間:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="publishTimeEnd" value="${param.publishTimeEnd}" type="text" size="50"
							style="text-align: left">&nbsp;&nbsp;格式為yyyy-MM-dd</td>
					</tr>
					<tr>
						<td width="120" height="40">發布人:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="createUser" value="${param.createUser}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
					<tr>
						<td width="120" height="40">建立時間:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="createTime" value="${param.createTime}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
				</tbody>
			</table>
			<br>
				<input type="submit" value="確定新增">
				<input type="reset" value="清除">
			<hr>
		</form>
		
		<form name="updateNewsForm" action="/updateNews" method="GET">
			<h3>修改活動訊息</h3>
			<table border="1">
				<tbody>
					<tr>
						<td width="120" height="40">活動編號:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="seqno" value="${param.seqno}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">活動名稱:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="subject" value="${param.subject}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">活動內容:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="content" value="${param.content}" type="text" size="50"
							style="text-align: left">
					</tr>
					<tr>
						<td width="120" height="40">更新使用者:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="updateUser" value="${param.updateUser}" type="text" size="50"
							style="text-align: left"></td>
					</tr>
					<tr>
						<td width="120" height="40">更新時間:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="updateTime" value="${param.updateTime}" type="text" size="50"
							style="text-align: left">&nbsp;&nbsp;格式為yyyy-MM-dd hh:mm:ss</td>
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