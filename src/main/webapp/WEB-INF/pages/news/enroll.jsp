<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<!-- Viewport Meta Tag -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Animour</title>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>最新消息</title>
</head>
<body>
<header id="header-wrap">
		<!-- Navbar Starts -->
	<jsp:include page="../navbar.jsp"></jsp:include>
		<!-- Navbar ends -->
		<!-- Page Header -->
	<div class="page-header-section">
		<div class="container">
			<div class="row">
				<div class="page-header-area">
					<div class="page-header-content">
						<h2>報名活動</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Page Header End -->
	</header>
		<!-- Container Starts -->
				<div class="container">

<form class="jotform-form" action="https://submit.jotform.me/submit/81005416515447/" method="post" name="form_81005416515447" id="81005416515447" accept-charset="utf-8">
  <input type="hidden" name="formID" value="81005416515447" />
  <div class="form-all">
    
     
        <div class="form-header-group ">
          <div class="header-text httal htvam">
            <h1 id="header_7" class="form-header" data-component="header">
              ${oneNews.subject}
            </h1>
          </div>
        </div>
     
      
        <div id="cid_3" class="form-input-wide">
          <div id="text_3" class="form-html" data-component="text">
          <c:forEach var="news" items="${oneNews}">
							<div class="col-md-4">
								<div class="card mb-4 box-shadow">
									<img class="card-img-top" src="/images/news/dogtable.jpg" width="80px" alt="">
									<div class="card-body" style="margin-bottom: 5px">
									</div>
								</div>
							</div>
						</c:forEach>
            <p><span style="color:#575757;"><strong>活動名稱：</strong>${oneNews.subject}</span></p>
            
            <p><span style="color:#575757;"><strong>活動日期：</strong>${oneNews.event_Date}</span></p>
            
            <p><span style="color:#575757;"><strong>活動地點：</strong>${oneNews.address}</span></p>
            <div style="width:400px;height:500px;border:2px gray solid;">活動簡介：${oneNews.content}寵物用品博覽會匯集全台各大寵物用品廠商，提供最新寵物用品、飼料零食、保健營養品、服飾配件、美容清潔、住宿醫療等週邊服務</div>
            <!-- Facebook Login starts -->
            <div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"></div>
            <!-- Facebook Login ends -->
            <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3615.004965796966!2d121.5412095148038!3d25.033905544449656!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442abd379a5ec97%3A0xec12a62666a81e3d!2sNo.+390%2C+Section+1%2C+Fuxing+South+Road%2C+Da%E2%80%99an+District%2C+Taipei+City%2C+106!5e0!3m2!1sen!2stw!4v1523468006587" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></p>
          </div>
        </div>
      
    
  </div>
 </form>
					<!-- Service-Block-000 Item Ends -->
				</div>
				<!-- Container Ends -->
				
	<!-- Footer Section -->
	<footer>
	<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
	<!-- Footer Section End-->

	<!-- Go To Top Link -->
	<a href="#" class="back-to-top"> <i class="fa fa-angle-up"> </i>
	</a>

	<!-- JavaScript & jQuery Plugins -->
	<script src="/js/jquery-min.js"></script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/jquery.mixitup.js"></script>
	<script src="/js/smoothscroll.js"></script>
	<script src="/js/wow.js"></script>
	<script src="/js/owl.carousel.js"></script>
	<script src="/js/waypoints.min.js"></script>
	<script src="/js/jquery.counterup.min.js"></script>
	<script src="/js/jquery.slicknav.js"></script>
	<script src="/js/jquery.appear.js"></script>
	<script src="/js/form-validator.min.js"></script>
	<script src="/js/contact-form-script.min.js"></script>
	<script src="/js/main.js"></script>	
<!-- Facebook Login JavaScript SDK-->
Step 1: Include the JavaScript SDK on your page once, ideally right after the opening body tag.
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.12';
  fjs.parentNode.insertBefore(js, fjs);}(document, 'script', 'facebook-jssdk'));</script>
<!-- Facebook Login JavaScript SDK -->
	

</body>
</html>