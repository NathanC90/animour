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
    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/bootstrap-table/src/bootstrap-table.css">
    <link rel="stylesheet" href="../assets/examples.css">
    <script src="../assets/jquery.min.js"></script>
    <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/bootstrap-table/src/bootstrap-table.js"></script>
    <script src="../assets/bootstrap-table/src/extensions/export/bootstrap-table-export.js"></script>
    <script src="//rawgit.com/hhurz/tableExport.jquery.plugin/master/tableExport.js"></script>
    <script src="../ga.js"></script>
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
		<jsp:include page="../admin/adminNavbar.jsp"></jsp:include>
<!-- adminNavbar ends -->
 
<!-- 每頁不同的內容從此開始 -->
  <div class="container">
    <div class="row">

<div class="col-md-12 content">
	<div class="dashhead">
		<div class="dashhead-titles">
			<h2 class="dashhead-title">活動紀錄</h2>
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
					placeholder="搜尋活動"> <span
					class="icon icon-magnifying-glass"></span>
			</div>
		</div>
		<div class="flextable-item">
			<div class="btn-group">
				<button type="button" class="btn btn-outline-primary" title="匯出成Excel檔">
					<span class="icon icon-upload"></span>
				</button>
			</div>
		</div>
		<div class="container">
        <h1>Export</h1>
        <div id="toolbar">
            <select class="form-control">
                <option value="">Export Basic</option>
                <option value="all">Export All</option>
                <option value="selected">Export Selected</option>
            </select>
        </div>
        <table id="table"
               data-toggle="table"
               data-show-export="false"
               data-pagination="true"
               data-click-to-select="true"
               data-toolbar="#toolbar"
               data-url="../json/data1.json">
            <thead>
            <tr>
                <th data-field="state" data-checkbox="true"></th>
                <th data-field="id">ID</th>
                <th data-field="name">Item Name</th>
                <th data-field="price">Item Price</th>
            </tr>
            </thead>
        </table>
    </div>
	</div>
	<!-- Table Starts  -->
	<div class="table-responsive">
		<table class="table" data-sort="table">
			<thead>
				<tr>
					<th><input type="checkbox" class="select-all" id="selectAll"></th>
					<th>活動編號</th>
					<th>活動名稱</th>
					<th>活動介紹</th>
					<th>活動日期</th>
					<th>費用</th>
					<th>人數</th>
					<th>編輯</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10001</a></td>
					<td>活動名稱1</td>
					<td>活動介紹1</td>
					<td>01/01/2015</td>
					<td>$200.00</td>
					<td>70</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10002</a></td>
					<td>活動名稱2</td>
					<td>活動介紹2</td>
					<td>01/01/2015</td>
					<td>$100.00</td>
					<td>20</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10003</a></td>
					<td>活動名稱3</td>
					<td>活動介紹3</td>
					<td>01/01/2015</td>
					<td>$100.00</td>
					<td>55</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10004</a></td>
					<td>活動名稱4</td>
					<td>活動介紹4</td>
					<td>01/01/2015</td>
					<td>$300.00</td>
					<td>30</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10005</a></td>
					<td>活動名稱5</td>
					<td>活動介紹5</td>
					<td>01/02/2015</td>
					<td>$200.00</td>
					<td>30</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10006</a></td>
					<td>活動名稱6</td>
					<td>活動介紹6</td>
					<td>01/01/2015</td>
					<td>$200.00</td>
					<td>25</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10007</a></td>
					<td>活動名稱7</td>
					<td>活動介紹7</td>
					<td>01/01/2015</td>
					<td>$100.00</td>
					<td>200</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10008</a></td>
					<td>活動名稱8</td>
					<td>活動介紹8</td>
					<td>01/01/2015</td>
					<td>$100.00</td>
					<td>250</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10009</a></td>
					<td>活動名稱9</td>
					<td>活動介紹9</td>
					<td>01/01/2015</td>
					<td>$300.00</td>
					<td>300</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10010</a></td>
					<td>活動名稱10</td>
					<td>活動介紹10</td>
					<td>01/02/2015</td>
					<td>$200.00</td>
					<td>90</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10011</a></td>
					<td>活動名稱11</td>
					<td>活動介紹11</td>
					<td>01/01/2015</td>
					<td>$200.00</td>
					<td>60</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10012</a></td>
					<td>活動名稱12</td>
					<td>活動介紹12</td>
					<td>01/01/2015</td>
					<td>$100.00</td>
					<td>80</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10013</a></td>
					<td>活動名稱13</td>
					<td>活動介紹13</td>
					<td>01/01/2015</td>
					<td>$100.00</td>
					<td>120</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10014</a></td>
					<td>活動名稱14</td>
					<td>活動介紹14</td>
					<td>01/01/2015</td>
					<td>$300.00</td>
					<td>60</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10015</a></td>
					<td>活動名稱15</td>
					<td>活動介紹15</td>
					<td>01/02/2015</td>
					<td>$200.00</td>
					<td>45</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10016</a></td>
					<td>活動名稱16</td>
					<td>活動介紹16</td>
					<td>01/01/2015</td>
					<td>$200.00</td>
					<td>60</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10017</a></td>
					<td>活動名稱17</td>
					<td>活動介紹17</td>
					<td>01/01/2015</td>
					<td>$100.00</td>
					<td>20</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10018</a></td>
					<td>活動名稱18</td>
					<td>活動介紹18</td>
					<td>01/01/2015</td>
					<td>$100.00</td>
					<td>35</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10019</a></td>
					<td>活動名稱19</td>
					<td>活動介紹19</td>
					<td>01/01/2015</td>
					<td>$300.00</td>
					<td>60</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" class="select-row"></td>
					<td><a href="#">#10020</a></td>
					<td>活動名稱20</td>
					<td>活動介紹20</td>
					<td>01/02/2015</td>
					<td>$200.00</td>
					<td>40</td>
					<td>
						<div class="btn-group">
							<button type="button" class="btn btn-outline-primary" title="修改">
								<span class="icon icon-pencil"></span>
							</button>
							<button type="button" class="btn btn-outline-primary" title="刪除">
								<span class="icon icon-erase"></span>
							</button>
						</div>
					</td>
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
<!-- Export Data starts-->
<script>
    var $table = $('#table');
    $(function () {
        $('#toolbar').find('select').change(function () {
            $table.bootstrapTable('destroy').bootstrapTable({
                exportDataType: $(this).val()
            });
        });
    })
</script>
<!-- Export Data ends -->
<!-- Modal Ends -->

<!-- 每頁不同內容從此結束 -->


<script src="../admin/assets/js/jquery.min.js"></script>
<script src="../admin/assets/js/tether.min.js"></script>
<script src="../admin/assets/js/chart.js"></script>
<script src="../admin/assets/js/tablesorter.min.js"></script>
<script src="../admin/assets/js/toolkit.js"></script>
<script src="../admin/assets/js/application.js"></script>
<script src="../admin/assets/js/bootstrap-table-export.js"></script>
<script>
      // execute/clear BS loaders for docs
      $(function(){while(window.BS&&window.BS.loader&&window.BS.loader.length){(window.BS.loader.pop())()}})
</script>
<script src="extensions/export/bootstrap-table-export.js"></script>
</body>
</html>