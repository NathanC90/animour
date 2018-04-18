<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">

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
<!-- Viewport Meta Tag -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>更新動物資料</title>
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


<!-- Color CSS Styles  -->
<link rel="stylesheet" type="text/css" href="/css/colors/green.css"
	media="screen" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
    </script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js">
    </script>
    <![endif]-->
</head>

<body>
	<div id="loginbox" style="margin-top: 50px; margin: auto"
		class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
		<div class="panel panel-info" style="border: 1px">
			<div class="panel-heading"
				style="padding: 10px 15px; border-bottom: 1px solid transparent; border-top-right-radius: 3px; border-top-left-radius: 3px; border-bottom: 0; color: #FFFFFF; background-color: #9C3; border-color: #ddd">
				<div class="panel-title">新增動物資料</div>
				<div
					style="float: right; font-size: 80%; position: relative; top: -10px">
					<a href="#"></a>
				</div>
			</div>

			<div style="padding-top: 30px" class="panel-body">
				<div style="display: none" id="login-alert"
					class="alert alert-danger col-sm-12"></div>

				<form name="insertAnimalForm" action="/insertAnimal" method="POST"
					enctype="multipart/form-data">
					<div class="form-row">
						<div class="form-group col-md-6">
							暱稱: <input type="text" class="form-control" id="anname"
								placeholder="" name="name" value="${animal.name}">
						</div>
						<div class="form-group col-md-6">
							種類: <select id="specie" class="form-control" name="specie">
								<option selected>請選擇種類</option>
								<option value="DOG">狗</option>
								<option value="CAT">貓</option>
								<option value="RABBIT">兔</option>
								<option value="BIRD">鳥</option>
								<option value="OTHER">其他</option>
							</select>
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							顏色: <input type="text" class="form-control" id="color"
								placeholder="" name="color" value="${animal.color}">
						</div>
						<div class="form-group col-md-6">
							性別:<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender"
									id="male" value="male${animal.gender}"> 公
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender"
									id="female" value="female${animal.gender}"> 母
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender"
									id="unknown" value="option1"> 尚未確認
							</div>
						</div>
					</div>
					<div class="form-group">
						發現日期: <input type="date" class="form-control" id="found"
							name="found" placeholder="ex:yyyy-MM-dd" value="${animal.found}">
						<span id="p3" class="correct"></span> <small
							id="passwordHelpBlock" class="form-text text-muted">(格式:西元年-月-日&nbsp
							yyyy-MM-dd)</small>
						<div class="st1"></div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							縣市:
							<%-- 							<form:select path="name"> --%>
							<%-- 								<form:option value="-1" label="請選擇縣市" /> --%>
							<%-- 								<form:options items="${citys.name}" /> --%>
							<%-- 							</form:select> --%>
							<select id="city" class="form-control" name="city">
								<option selected>請選擇縣市</option>
								<c:forEach var="city" items="${citys}">
									<option value="${city.id}">${city.name}</option>
								</c:forEach>
							</select> 
						</div>
						<div class="form-group col-md-6">
							鄉鎮市區: <input type="text" class="form-control" id="district"
								placeholder="" name="district" value="${animal.district}">
						</div>
					</div>
					<div class="form-row align-items-center">
						<div class="form-group col-md-4">
							就醫紀錄(預設為無):<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="hospitalized1"
									name="hospitalized" value="false${animal.hospitalized}">無
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="hospitalized2"
									name="hospitalized" value="true${animal.hospitalized}">
								有
							</div>
						</div>
						<div class="form-group col-md-4">
							結紮(預設為無):<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="neuter1"
									name="neuter" value="false${param.neuter}">無
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" id="neuter2"
									name="neuter" value="true${param.neuter}"> 有
							</div>
						</div>
						<div class="form-group col-md-4">
							動物晶片號碼(非必填): <input type="text"
								class="form-control form-control-sm" id="city" placeholder=""
								name="cardNum" value="${animal.cardNum}">
						</div>
					</div>
					<div class="form-group">
						備註:
						<textarea class="form-control" id="remark" name="remark" rows="2" >${animal.remark}</textarea>
					</div>
					<div class="form-group">
						請上傳動物照片 <input type="file" class="form-control-file" id="image"
							name="file">
					</div>
					<input type="hidden" name="id" value="animal">
					<input type="submit" class="btn btn-common" value="送出"> <input
						type="reset" class="btn btn-common" value="清除"> <a
						href="/halfway" class="btn btn-common"> 回上頁</a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>