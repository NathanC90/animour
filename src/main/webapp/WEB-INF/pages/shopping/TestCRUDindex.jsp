<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

</head>
<title>ProductIndex</title>
</head>
<body>
	<center>
<!-- 	<ul class='pagination'></ul> -->
	
<!-- 	<h3>測試取出JSON資料</h3> -->
<!-- 	<div id="show" class="row"></div> -->
<!-- 	<hr> -->
	
<%-- 	<c:forEach var='category' items='${Classifies}' > --%>
<%-- 		<a href='products/${category.id}'>${category.name}</a><br> --%>
<%-- 	</c:forEach> --%>
	
<!-- 		<hr> -->
<%-- 	<form:form action="${pageContent.request.contextPath}/product/insert" method="POST" modelAttribute="product"> --%>
<%-- 		商品類別:<form:radiobuttons path="classify" items="${Classifies}" itemLabel="name" itemValue="id" ></form:radiobuttons> --%>
<%-- 	</form:form> --%>
<!-- 		<hr> -->
	
	
	
<!-- 	<h3>新增商品資料</h3> -->
<%-- 		<form name="insertForm" action="<c:url value="/insertProduct"/>" method="POST"> --%>
<!-- 			<table border="1"> -->
<!-- 				<tbody> -->
<!-- 					<tr> -->
<!-- 						<td width="120" height="40">商品名稱:</td> -->
<!-- 						<td width="600" height="40" align="left"><input id='num' -->
<%-- 							name="name" value="${param.name}" type="text" size="50" --%>
<!-- 							style="text-align: left"> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<td width="120" height="40">商品價格:</td> -->
<!-- 						<td width="600" height="40" align="left"><input id='num' -->
<%-- 							name="price" value="${param.price}" type="text" size="50" --%>
<!-- 							style="text-align: left"> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<td width="120" height="40">商品數量:</td> -->
<!-- 						<td width="600" height="40" align="left"><input id='num' -->
<%-- 							name="quantity" value="${param.quantity}" type="text" size="50" --%>
<!-- 							style="text-align: left"></td> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<td width="120" height="40">製造日期:</td> -->
<!-- 						<td width="600" height="40" align="left"> -->
<!-- 						<input id='num' -->
<%-- 							name="makeDate" value="${param.makeDate}" type="text" size="50" --%>
<!-- 							style="text-align: left">&nbsp;&nbsp;格式為yyyy-MM-dd hh:mm:ss -->
<!-- 						</td> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<td width="120" height="40">保存期限:</td> -->
<!-- 						<td width="600" height="40" align="left"><input id='num' -->
<%-- 							name="expire" value="${param.expire}" type="text" size="50" --%>
<!-- 							style="text-align: left"></td> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<td width="120" height="40">上架日期:</td> -->
<!-- 						<td width="600" height="40" align="left"><input id='num' -->
<%-- 							name="shelvesDate" value="${param.shelvesDate}" type="text" size="50" --%>
<!-- 							style="text-align: left">&nbsp;&nbsp;格式為yyyy-MM-dd</td> -->
<!-- 					</tr> -->
<!-- 				</tbody> -->
<!-- 			</table> -->
<!-- 				 類別:<select id="classify" class="form-control" name="classify"> -->
<!-- 				 	<option selected>請選擇類別</option> -->
<%-- 						<c:forEach var="classify" items="${classifies}"> --%>
<%-- 							<option value="${classify.id}">${classify.name}</option> --%>
<%-- 		                </c:forEach> --%>
<!-- 					</select> -->
<!-- 			<br> -->
<!-- 				<input type="submit" value="確定新增"> -->
<!-- 				<input type="reset" value="清除"> -->
<!-- 			<hr> -->
<%-- 		</form> --%>
	
	
	
	<h3>新增商品資料</h3>
<%-- 	action="${pageContent.request.contextPath}/product/insert" --%>
	<form:form method="POST" modelAttribute="product" enctype="multipart/form-data">
		商品名稱:<form:input path="name"/><br>
		商品價格:<form:input path="price"/><br>
		商品數量:<form:input path="quantity"/><br>
		製造日期:<form:input path="makeDate"/><br>
		保存期限:<form:input path="expire"/><br>
		上架日期:<form:input path="shelvesDate"/><br>
		商品類別:<form:select path="classify" items="${Classifies}" itemLabel="name" itemValue="id"></form:select>
		<br>
			<input type="submit" value="確定">
			<input type="reset" value="清除">
		<hr>
	</form:form>
	
	</center>
	
<!-- 	<script type="text/javascript" src="/js/jquery.twbsPagination.min.js"></script> -->
<!-- 	<script> -->
<!-- // 		$(document).ready(function() { -->
<!-- // 			var docFragment = $(document.createDocumentFragment()); -->
<!-- // 				$.getJSON('/shopping/product',{},function(datas){ -->
<!-- // 					$.each(datas,function(idx,product){ -->
<!-- // 						console.log(datas) -->

<!-- // 						var cell1 = $('<td></td>').text("編號:" + product.id); -->
<!-- // 						var cell2 = $('<td></td>').text("名稱:" + product.name); -->
<!-- // 						var cell3 = $('<td></td>').text("價格:" + product.price); -->
<!-- // 						var cell4 = $('<td></td>').text("數量:" + product.quantity); -->
<!-- // 						var cell5 = $('<td></td>').text("日期:" + product.makeDate); -->
<!-- // 						var cell6 = $('<td></td>').text("類別:" + product.classify.name); -->
<!-- // 						var row = $('<tr></tr>').append([cell1,cell2,cell3,cell4,cell5,cell6]); -->
<!-- // 						docFragment.append(row); -->
<!-- // 					}); -->
<!-- // 					$('#show').append(docFragment); -->
<!-- // 				}) -->
			
<!-- // 			$(function () { -->
<!-- // 			　　ChangePage(10); //傳遞分頁數 -->
<!-- // 			}); -->
<!-- // 			//動態載入分頁 -->
<!-- // 			function ChangePage(Total) { -->
<!-- // 			　　$('.pagination').twbsPagination({ -->
<!-- // 			　　　　totalPages: Total, //分頁數 -->
<!-- // 			　　　　onPageClick: function (evt, page) { //分頁切換事件 -->
<!-- // 			　　　　　　alert(page); //分頁切換提示當前頁數 -->
<!-- // 			　　　　} -->
<!-- // 			　　}); -->
<!-- // 			} -->
<!-- // 		}); -->
		
		
<!-- 	</script> -->
	
</body>
</html>