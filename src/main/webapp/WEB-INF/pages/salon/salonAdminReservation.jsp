<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>

	<head>
		<!--Icon Tags start -->
		<link rel="apple-touch-icon" sizes="57x57" href="/images/icon/apple-icon-57x57.png">
		<link rel="apple-touch-icon" sizes="60x60" href="/images/icon/apple-icon-60x60.png">
		<link rel="apple-touch-icon" sizes="72x72" href="/images/icon/apple-icon-72x72.png">
		<link rel="apple-touch-icon" sizes="76x76" href="/images/icon/apple-icon-76x76.png">
		<link rel="apple-touch-icon" sizes="114x114" href="/images/icon/apple-icon-114x114.png">
		<link rel="apple-touch-icon" sizes="120x120" href="/images/icon/apple-icon-120x120.png">
		<link rel="apple-touch-icon" sizes="144x144" href="/images/icon/apple-icon-144x144.png">
		<link rel="apple-touch-icon" sizes="152x152" href="/images/icon/apple-icon-152x152.png">
		<link rel="apple-touch-icon" sizes="180x180" href="/images/icon/apple-icon-180x180.png">
		<link rel="icon" type="image/png" sizes="192x192" href="/images/icon/android-icon-192x192.png">
		<link rel="icon" type="image/png" sizes="32x32" href="/images/icon/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="96x96" href="/images/icon/favicon-96x96.png">
		<link rel="icon" type="image/png" sizes="16x16" href="/images/icon/favicon-16x16.png">
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
		<link rel="stylesheet" media="screen" href="/fonts/font-awesome/font-awesome.min.css">
		<link rel="stylesheet" media="screen" href="/fonts/simple-line-icons.css">

		<!-- Extras -->
		<link rel="stylesheet" type="text/css" href="/extras/owl/owl.carousel.css">
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
							<h2 class="dashhead-title">預約紀錄</h2>
						</div>

						<div class="btn-toolbar dashhead-toolbar">
							<div class="btn-toolbar-item input-with-icon">
								<input type="text" value="01/01/15 - 01/08/15" class="form-control" data-provide="datepicker">
								<span class="icon icon-calendar"></span>
							</div>
						</div>
					</div>

					<div class="flextable table-actions">
						<div class="flextable-item flextable-primary">
							<div class="btn-toolbar-item input-with-icon">
								<input type="text" class="form-control input-block" placeholder="搜尋紀錄">
								<span class="icon icon-magnifying-glass"></span>
							</div>
						</div>



					</div>
					<!-- Table Starts  -->
					<div class="table-responsive">
						<table class="table" data-sort="table" id="table1">
							<thead>
								<tr>
									<th>id</th>
									<th>reservationDate</th>
									<th>frontTime</th>
									<th>content</th>
									<th>designer</th>
									<th>totalTime</th>
									<th>price</th>
									<th>payment</th>
									<!-- <th style="display: none">member_id</th> -->
									<th id="notNeed">編輯</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<!-- <td>
										<input type="checkbox" class="select-row">
									</td> -->
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</tbody>
						</table>
					</div>
					<form id="form1"></form>

					<!-- Table Ends -->

					<div class="text-center">
						<nav>
							<ul class="pagination">
								<li class="page-item">
									<a class="page-link" href="#" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
										<span class="sr-only">上一頁</span>
									</a>
								</li>
								<li class="page-item active">
									<a class="page-link" href="#">1</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">2</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">3</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">4</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#">5</a>
								</li>
								<li class="page-item">
									<a class="page-link" href="#" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
										<span class="sr-only">下一頁</span>
									</a>
								</li>
							</ul>
						</nav>
					</div>

				</div>
			</div>
		</div>
		<!-- Modal Starts -->
		<div id="docsModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog">
				<div class="modal-content">

					<div class="modal-header">
						<h4 class="modal-title" id="myModalLabel">樣板示意</h4>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
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
			// execute/clear BS loaders for docs
			$(function () { while (window.BS && window.BS.loader && window.BS.loader.length) { (window.BS.loader.pop())() } })
		</script>

		<script>
			var datas;
			var pageNo = 0;
			$(document).ready(function () {
				initSubmitForm();

			});
			function importAgain() {
				var buttonImport = $('#importbutt');
				$('#importbutt').remove();
				initSubmitForm();
			}

			var initSubmitForm = function () {
				$(document).ready(function () {
					//抓資料
					$.getJSON('/reservations', { "pageNo": pageNo },
						function (datas) {
							console.log(datas);
							$.each(datas, function (i, reservation) {
								var cell1 = $('<td id="NewEdit" class="inputContent"></td>').append(reservation.id);
								var cell2 = $('<td id="" class="inputContent"></td>').append(reservation.reservationDate);
								var cell3 = $('<td id="" class="inputContent"></td>').text(reservation.frontTime);
								var cell4 = $('<td id="" class="inputContent"></td>').text(reservation.content);
								var cell5 = $('<td id="" class="inputContent"></td>').text(reservation.designer);
								var cell6 = $('<td id="" class="inputContent"></td>').text(reservation.totalTime);
								var cell7 = $('<td id="" class="inputContent"></td>').text(reservation.price);
								var cell8 = $('<td id="" class="inputContent"></td>').text(reservation.payment)
								// var cell9 = $('<td id="" class="inputContent"></td>').text(reservation.member.account)
								// var p = $('<p></p>')
								var cell10 = $('<td id="addNewButton"><button type="button" id="editButton" class="btn btn-outline-primary" title="修改"><span class="icon icon-pencil"></span></button><button type="button" id="deleteButton" class="btn btn-outline-primary" title="刪除"><span class="icon icon-erase"></span></button></td>')


								var row = $('<tr></tr>').append([cell1, cell2, cell3, cell4,
									cell5, cell6, cell7, cell8, cell10]);

								$('#table1').append(row);
							})



						}).done(function () {

							pageNo++;
							//判斷下一次取回的json是否為空(是否為最後一頁)
							$.getJSON('/reservations', { "pageNo": pageNo }, function (datas) {
								console.log(datas);
								if (datas.length != 0) {
									var buttonImport = $("<button></button>").attr({ 'type': 'button', 'id': 'importbutt', 'style': 'width: 100%' }).addClass('btn btn-common btn-sm mt-10').append("載入更多資料");
									$('#table1').append(buttonImport);
									document.getElementById("importbutt").addEventListener("click", importAgain);
								}
							})


						})
					//刪除功能
					$(document).on("click", '#deleteButton', function () {

						var catchIdValue = $(this).parents('tr').find('#NewEdit').text();
						$(this).parents('tr').remove();
						$.ajax({
							url: '/reservations/reservation/' + catchIdValue,
							type: 'delete',
							success: function (result) {
								console.log("It's work")
							}

						})
					})
					//編輯按鈕
					$(document).on("click", '#editButton', function () {
						var data1 = new FormData(document.getElementById("myform1"));
						$(this).attr({ 'hidden': 'hidden' });
						var button = $('<button type="button" id="editButton" class="btn btn-outline-primary" title="修改"><span style="font-size:0.5px">done</span>')
						$(this).parent().append(button);
						$(this).parents('tr').find('.inputContent').on("dblclick", function () {

							if (window.$currEditing)
								finishEditing($currEditing);
							var $cell = $(this);
							var $inp = $('<input type="text" style="width:100px;height:30px;"/>');
							$inp.val($cell.text());
							$cell.attr('name', 'cellEditor').html('').append($inp);
							$inp[0].select();
							window.$currEditing = $inp;
							console.log("test...")
						}).on('click', function () {
							if (window.$currEditing && $currEditing.parent()[0] != this)
								finishEditing($currEditing);
						});

						$("input[name*='cellEditor']").on("keydown", function (e) {
							console.log(e.which);
							if (e.which == 13 || e.which == 9)
								finishEditing($(this));
						});
						function finishEditing($inp) {
							$inp.parent().removeAttr("cellEditor").text($inp.val());
							window.$currEditing = null;
						}


						$.getJSON('/reservations', { "pageNo": pageNo }, function () {

						})


						//抓取按鈕數字
						var catchIdValue = $(this).parents('tr').find('#NewEdit').text();
						$.ajax({
							url: '/reservations/reservation/' + catchIdValue,
							type: 'put',
							data: catchIdValue,
							success: function (result) {
							}

						})
					})

				})
			};

		</script>

	</body>

	</html>