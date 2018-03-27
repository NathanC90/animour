<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>討論區測試</title>
</head>
<body>
	<center>
		<h3>查詢單筆討論串</h3>
		<form name="selectOneForm" action="/forum/findOne" method="GET">
			<input id='num' name="id" value="" type="text"
				size="14" style="text-align: left"> <input type="submit"
				value="送出">

		</form>
		<br>
		<hr>
		<br>
		<h3>查詢所有討論串</h3>
		<form name="selectAllForm" action="/forum/findAll" method="GET">
			<input type="submit" value="查詢所有">
		</form>
		<br>
		<hr>
		<br>
		<h3>刪除討論串</h3>
		<form name="deleteForm" action="/forum/delete" method="GET">
			<input id='num' name="id" value="" type="text"
				size="14" style="text-align: left"> <input type="submit"
				value="送出"> <input type="reset" value="清除">
		</form>
		<br>
		<hr>
		<br>
		<h3>新增討論串</h3>
		<form name="insertArticleForm" action="/forum/insert" method="POST">
			<table border="1">

				<tbody>
					<tr bgcolor='tan'>
						<td width="120" height="40">發文者:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="postName" value="" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">標題:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="subject" value="" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">內容:</td>
						<td width="600" height="40" align="left">
						<textarea rows="5" cols="40" name="content" style="text-align: left"></textarea>
						</td>
					</tr>
					

				</tbody>
			</table>
			<input type="submit" value="送出"> <input type="reset"
				value="清除"> <br>
			<hr>
			<br>
		</form>
		<form name="updateArticleForm" action="/forum/update" method="POST">
			<table border="1">
				<h3>修改討論串</h3>
				<tbody>
					<tr bgcolor='tan'>
						<td width="120" height="40">編號:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="id" value="" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">發文者:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="postName" value="" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">標題:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="subject" value="" type="text" size="14"
							style="text-align: left">
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">內容:</td>
						<td width="600" height="40" align="left"><textarea id='num' rows="5" cols="40" name="content" value="" style="text-align: left"></textarea></td>
					</tr>
					<tr bgcolor='tan'>
						<td width="120" height="40">發文時間:</td>
						<td width="600" height="40" align="left"><input id='num'
							name="postTime" value="" type="text" size="14"
							style="text-align: left">&nbsp;&nbsp;格式為yyyy-MM-dd hh:mm:ss</td>
					</tr>
					

				</tbody>
			</table>
			<input type="submit" value="送出"> <input type="reset"
				value="清除">
		</form>
	</center>
<%-- 	<c:forEach var="article" items="${articles}"> --%>
<!-- 		<p class="card-text"> -->
<%-- 			hello${article.articleId}<br>${article.postName} <br>${article.articleSubject}<br>${article.articleContent}<br>${article.postTime}</p> --%>
<%-- 	</c:forEach> --%>

</body>
</html>