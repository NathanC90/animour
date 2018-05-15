<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--Icon Tags start -->
<link rel="apple-touch-icon" sizes="57x57"
	href="/images/icon/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60"
	href="/images/icon/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/images/icon/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="/images/icon/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="/images/icon/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="/images/icon/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144"
	href="/images/icon/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="/images/icon/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180"
	href="/images/icon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="/images/icon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="/images/icon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="/images/icon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="/images/icon/favicon-16x16.png">
<link rel="manifest" href="/manifest.json">

<!--Icon Tags end -->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
<!-- Main Style -->
<link rel="stylesheet" type="text/css" href="/css/main.css">
<!-- Slicknav Css -->
<link rel="stylesheet" type="text/css" href="/css/slicknav.css">

<!-- Responsive Style -->
<link rel="stylesheet" type="text/css" href="/css/responsive.css">
<!--Fonts-->
<link rel="stylesheet" media="screen"
	href="/fonts/font-awesome/font-awesome.min.css">
<link rel="stylesheet" media="screen"
	href="/fonts/simple-line-icons.css">

<!-- Extras -->
<link rel="stylesheet" type="text/css"
	href="/extras/owl/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="/extras/owl/owl.theme.css">
<link rel="stylesheet" type="text/css" href="/extras/animate.css">
<link rel="stylesheet" type="text/css" href="/extras/normalize.css">
 <title>
      
        後台管理 
      
    </title>

    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic" rel="stylesheet">
    
      <link href="../admin/assets/css/toolkit-inverse.css" rel="stylesheet">
    
    
    <link href="../admin/assets/css/application.css" rel="stylesheet">

    <style>
      /* note: this is a hack for ios iframe for bootstrap themes shopify page */
      /* this chunk of css is not part of the toolkit :) */
      body {
        width: 1px;
        min-width: 100%;
        *width: 100%;
      }
    </style>
  </head>


<body>
<!-- adminNavbar Starts -->
		<jsp:include page="../../admin/adminNavbar.jsp"></jsp:include>
<!-- adminNavbar ends -->
 
<!-- 每頁不同的內容從此開始 -->
  <div class="container">
    <div class="row">

<div class="col-md-12 content">
	<div class="dashhead">
		<div class="dashhead-titles">
			<h2 class="dashhead-title">會員管理</h2>
		</div>

		<div class="btn-toolbar dashhead-toolbar">
			<div class="btn-toolbar-item input-with-icon">
				<input type="text" value="01/01/15 - 01/08/15" class="form-control"
					data-provide="datepicker"> <span class="icon icon-calendar"></span>
			</div>
		</div>
	</div>

	<div class="flextable table-actions">
		<div class="flextable-item flextable-primary">
			<div class="btn-toolbar-item input-with-icon">
				<input type="text" class="form-control input-block"
					placeholder="搜尋會員"> <span
					class="icon icon-magnifying-glass"></span>
			</div>
		</div>
		<div class="flextable-item">
			<div class="btn-group">
				<button type="button" class="btn btn-outline-primary" title="寄送電子郵件">
					<span class="icon icon-mail"></span>
				</button>
			</div>
		</div>
		
		<div class="flextable-item">
			<div class="btn-group">
				<button type="button" class="btn btn-outline-primary" title="修改">
					<span class="icon icon-pencil"></span>
				</button>
				<button type="button" class="btn btn-outline-primary" title="刪除">
					<span class="icon icon-erase"></span>
				</button>
			</div>
		</div>
	</div>
	<!-- Table Starts  -->
	<div class="table-responsive">
		<table class="table" data-sort="table" id="table1">
			<thead>
				<tr>
					<th>文章編號</th>
					<th>文章標題</th>
					<th>發文時間</th>

<!-- 					<th>發文者編號</th> -->
					<th>發文者編號</th>
					<th>管理
<!-- 						<div class="btn-group"> -->
<!-- 							<button type="button" class="btn btn-outline-primary" title="修改"> -->
<!-- 								<span class="icon icon-pencil"></span> -->
<!-- 							</button> -->
<!-- 							<button type="button" class="btn btn-outline-primary" title="刪除"> -->
<!-- 								<span class="icon icon-erase"></span> -->
<!-- 							</button> -->
<!-- 						</div> -->
					</th>
				</tr>
			</thead>
			<tbody>
<!-- 			<tr> -->
<!-- 					<td><p type="text" class="select-row">#10001</p></td> -->
<!-- 					<td>ViewSonic</td> -->
<!-- 					<td>Alex Wu</td> -->
<!-- 					<td>Alex</td> -->
<!-- 					<td>09123456789</td> -->
<!-- 					<td>alex@gmail.com</td> -->
<!-- 					<td>台北市大安區信義路三段100號</td> -->
<!-- 					<td>on</td> -->
<!-- 				</tr> -->
			</tbody>
		</table>
	</div>

	<!-- Table Ends -->

	<div class="text-center">
		<nav>
		<ul class="pagination">
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span> <span
					class="sr-only">上一頁</span>
			</a></li>
			<li class="page-item active"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
					class="sr-only">下一頁</span>
			</a></li>
		</ul>
		</nav>
	</div>

</div>
</div>
</div>
<!-- Modal Starts -->
<div id="docsModal" class="modal fade" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog">
		<div class="modal-content">

			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">樣板示意</h4>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<p>您已經位於樣板頁面</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">好的，了解</button>
			</div>
		</div>
	</div>
</div>

<!-- Modal Ends -->

<!-- 每頁不同內容從此結束 -->


<script src="../admin/assets/js/jquery.min.js"></script>
<script src="../admin/assets/js/tether.min.js"></script>
<script src="../admin/assets/js/chart.js"></script>
<script src="../admin/assets/js/tablesorter.min.js"></script>
<script src="../admin/assets/js/toolkit.js"></script>
<script src="../admin/assets/js/application.js"></script>
<script>
      $(document).ready(function() {
    	  $.getJSON('/articles', {  }, function (data) {
    	          console.log(data);
    	          $('#table1>tbody').empty();
    	          $.each(data, function (i, article) {
    	        	  var cell1 = $("<td></td>").text(article.id);
    	              var cell2 = $("<td></td>").text(article.subject);

    	              var cell3 = $("<td></td>").text(article.postTime);
//     	              var cell4 = $("<td></td>").text(article.CLICK);
    	              var cell5 = $("<td></td>").text(article.member.account);
  	
    	              	var span01=$('<span></span>').addClass('icon icon-pencil');
						var button01=$('<button></button>').attr({'type':'button','title':'修改'}).addClass('btn btn-outline-primary').append(span01);
    	              	var span02=$('<span></span>').addClass('icon icon-erase');
						var button02=$('<button></button>').attr({'type':'button','title':'刪除'}).addClass('btn btn-outline-primary').append(span02);
    	              	var span03=$('<span></span>').addClass('icon icon-mail');
						var button03=$('<button></button>').attr({'type':'button','title':'寄送電子郵件'}).addClass('btn btn-outline-primary').append(span03);

	  					var divb1=$('<div></div>').addClass('btn-group').append([button01]);
						var divf1=$('<div></div>').addClass('flextable-item').append(divb1);
	  					var divb2=$('<div></div>').addClass('btn-group').append([button02]);
						var divf2=$('<div></div>').addClass('flextable-item').append(divb2);
	  					var divb3=$('<div></div>').addClass('btn-group').append([button03]);
						var divf3=$('<div></div>').addClass('flextable-item').append(divb3);

						
						
						var cell09=$('<td></td>').append([divf1, divf2, divf3]);
    	              
 	 		           var row = $('<tr></tr>').append([cell1, cell2, cell3,  cell5, cell09]);

    	              $('#table1>tbody').append(row);
    	          });

    	      
    	      }	 
    	  	 )
    	  });
      // execute/clear BS loaders for docs
//      $(function(){while(window.BS&&window.BS.loader&&window.BS.loader.length){(window.BS.loader.pop())()}})
      
    </script>
</body>
</html>