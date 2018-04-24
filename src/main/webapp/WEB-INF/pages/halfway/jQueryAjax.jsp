<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>EEIT - jQuery</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/jumbotron.css">
<link rel="stylesheet" href="css/lightbox.css">
<style>
  .thumb{width:120px;margin:5px;}
</style>
</head>
<body>
	<jsp:include page="partial/header.html" />
	<main role="main" class="container mt-2">
    <div class="row">
       <div class="col-lg-3">
       <jsp:include page="partial/nav.html" /></div>
       <div class="col-lg-9">
     
		<div class="card">
			<div class="card-header">jQuery Ajax</div>
			<div class="card-body">
				<!-- 每頁不同的內容從這裡開始 -->
				<input type="button" value="get" id="buttonGet" class="btn btn-primary"> 
					<input type="button" value="post" id="buttonPost" class="btn btn-success">
					<input type="button" value="getJSON" id="buttonGetJSON" class="btn btn-info"> 
					<input type="button" value="ajax-xml" id="buttonAjax" class="btn btn-danger"> 
					<img src="images/ajax-loader.gif" id="img1">
					<hr>
					<div id="show" class="row"></div>
					<hr>
				<!-- 每頁不同的內容到這裡結束 -->
			</div>
		</div>


	<jsp:include page="partial/sections.html" /> 
       </div>
    </div>
	</main>

	<jsp:include page="partial/footer.jsp" />
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- http://lokeshdhakar.com/projects/lightbox2/ -->
	<script src="js/lightbox.js"></script>
	<script>
		$(document).ready(function() {
			$('#buttonGet').click(function() {
				//練習一使用get()
				//1. 呼叫Parameter
				//2. 傳 name=Jack及age=30的資料給FirstServlet
				//3. 將Server端回傳的結果加上h2的標籤,顯示在show的div中
				$.get('Parameter',{"name":"Jack","age":30},function(data){
					//data 就是Server回傳的結果
					$('#show').html("<h2>" + data + "</h2>");
				})
			});

			$('#buttonPost').click(function() {
				//練習二使用post()
				//1. 呼叫Parameter
				//2. 傳 name=Mary及age=的25資料給Parameter.jsp
				//3. 將Server端回傳的結果加上h2的標籤,顯示在show的div中
				$.post('Parameter',{"name":"Mary","age":25},function(data){
					//data 就是Server回傳的結果
					$('#show').html("<h2>" + data + "</h2>");
				})
			});


			$('#buttonGetJSON').click(function() {
				//練習三使用getJSON()
				//1. 呼叫apiln.json
				//2. 讀出回傳JSON格式中的景點圖片(Image)
				//3. 將景點圖片顯示在show的div中
				
				
				
				
				
				
				
				
				
				
				
				
				
				
// 				var docFragment = $(document.createDocumentFragment());
// 				$.getJSON('apiIn.json',{},function(datas){
// 					$.each(datas,function(idx,park){
// 						var title = park.ParkName + "-"  + park.Name;
// 						var img = $("<img />").attr('src',park.Image).addClass('thumb img-thumbnail');
// 						var a = $("<a></a>").attr({'href':park.Image,'data-lightbox':'park','data-title':title}).append(img);
// 						docFragment.append(a);
// 					});
// 					$('#show').append(docFragment);
// 				})

			});
			
			
			$('#buttonAjax').click(function() {
				//練習四使用ajax()
// 				1. 呼叫travel.xml
				//2. 讀出回傳xml格式中的景點圖片(Image)
				//3. 將景點圖片顯示在show的div中
				
				
				
				
				

// 				$.ajax({
// 					'type':'GET',
// 					'url':'travel.xml',
// 					'dataType':'xml'
// 				}).done(function(datas){
// 					var docFragment = $(document.createDocumentFragment());
// 					$(datas).find('Section').each(function(){
// 						var imgPath = $(this).find('img:first').text();
// 						var title = $(this).find('img:first').attr("description");
// 						var img = $("<img />").attr('src',imgPath).addClass('thumb img-responsive img-thumbnail');
// 						var a = $("<a></a>").attr({'href':imgPath,'data-lightbox':'park','data-title':title}).append(img);
// 						docFragment.append(a);
// 					})
// 					$('#show').append(docFragment);
// 				})
			});

			//顯示server端的程式正在執行
			$('#img1').hide();
		})
		
	</script>
</body>
</html>