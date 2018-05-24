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

		<link href="https://cdnjs.com/libraries/Chart.js">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/canvasjs/1.7.0/canvasjs.min.js">

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
							<h2 class="dashhead-title">圖表統計</h2>
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
								<input type="text" class="form-control input-block" placeholder="搜尋會員">
								<span class="icon icon-magnifying-glass"></span>
							</div>
						</div>


					</div>
					<h3>部落客獲讚統計:</h3>
					<div class="chart-container" style="position: relative; height:600px; width:600px">
						<!-- <canvas id="myChart"></canvas> -->
						<div id="myChart" style="height: 370px; width: 100%;background-color:#666"></div>
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
		<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
		<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>

		<script src="../admin/assets/js/jquery.min.js"></script>
		<script src="../admin/assets/js/tether.min.js"></script>
		<script src="../admin/assets/js/chart.js"></script>
		<script src="../admin/assets/js/tablesorter.min.js"></script>
		<script src="../admin/assets/js/toolkit.js"></script>
		<script src="../admin/assets/js/application.js"></script>
		<script>


			$(document).ready(function () {
				$.getJSON('/articles/chart', {}, function (data) {
                    console.log(data);
                    //obj轉型Map
                    var dataArray = new Array();
                    var memberArray = new Array();
                    var thumbsArray = new Array();
                    const map = new Map();
                    let obj = data;
                    Object.keys(obj).forEach(key => {
                        map.set(key, obj[key]);
                        memberArray.push(key);
                        thumbsArray.push(obj[key]);
                        dataArray.push({ 'label': key, 'y': obj[key] });
                    });
                    console.log(map);
                    console.log(memberArray);
                    console.log(thumbsArray);
                    var options = {
                        animationEnabled: true,
                        title: {
                            text: "Likes Chart"
                        },
                        axisY: {
                            title: "likes",
                            suffix: "",
                            includeZero: false
                        },
                        axisX: {
                            title: "Author"
                        },
                        data: [{
                            type: "column",
                            yValueFormatString: "#,##0.0#" % "",
                            dataPoints: dataArray
                        }]
                    };
                    $("#myChart").CanvasJSChart(options);
                });
				});

					// var ctx = document.getElementById("myChart");
					// var myChart = new Chart(ctx, {
					// 	type: 'bar',
					// 	data: {
					// 		labels: memberArray,
					// 		datasets: [{
					// 			label: '點讚數',
					// 			data: thumbsArray,
					// 			backgroundColor: [
					// 				'rgba(255, 99, 132, 0.5)',
					// 				'rgba(54, 162, 235, 0.5)',
					// 				'rgba(255, 206, 86, 0.5)',
					// 				'rgba(75, 192, 192, 0.5)',
					// 				'rgba(153, 102, 255, 0.5)',
					// 				'rgba(255, 159, 64, 0.5)',
					// 				'rgba(255, 99, 132, 0.5)',
					// 				'rgba(54, 162, 235, 0.5)',
					// 				'rgba(255, 206, 86, 0.5)',
					// 				'rgba(75, 192, 192, 0.5)',
					// 				'rgba(153, 102, 255, 0.5)',
					// 				'rgba(255, 159, 64, 0.5)'
					// 			],
					// 			borderColor: [
					// 				'rgba(255,99,132,1)',
					// 				'rgba(54, 162, 235, 1)',
					// 				'rgba(255, 206, 86, 1)',
					// 				'rgba(75, 192, 192, 1)',
					// 				'rgba(153, 102, 255, 1)',
					// 				'rgba(255, 159, 64, 1)',
					// 				'rgba(255,99,132,1)',
					// 				'rgba(54, 162, 235, 1)',
					// 				'rgba(255, 206, 86, 1)',
					// 				'rgba(75, 192, 192, 1)',
					// 				'rgba(153, 102, 255, 1)',
					// 				'rgba(255, 159, 64, 1)'
					// 			],
					// 			borderWidth: 1,
					// 			hoverBackgroundColor: [
					// 				'rgba(255, 99, 132, 0.7)',
					// 				'rgba(54, 162, 235, 0.7)',
					// 				'rgba(255, 206, 86, 0.7)',
					// 				'rgba(75, 192, 192, 0.7)',
					// 				'rgba(153, 102, 255, 0.7)',
					// 				'rgba(255, 159, 64, 0.7)',
					// 				'rgba(255, 99, 132, 0.7)',
					// 				'rgba(54, 162, 235, 0.7)',
					// 				'rgba(255, 206, 86, 0.7)',
					// 				'rgba(75, 192, 192, 0.7)',
					// 				'rgba(153, 102, 255, 0.7)',
					// 				'rgba(255, 159, 64, 0.7)'
					// 			]
					// 		}]
					// 	},
					// 	options: {
					// 		scales: {
					// 			yAxes: [{
					// 				ticks: {
					// 					beginAtZero: true
					// 				}
					// 			}]
					// 		}
					// 	}
					// });
			
			
		</script>
		<!-- <div id="chartContainer" style="height: 370px; width: 100%;"></div> -->
        <script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
        <script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
	</body>

	</html>