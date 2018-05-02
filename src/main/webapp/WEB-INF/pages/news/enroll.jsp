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
	<header id="header-wrap"> <!-- Navbar Starts --> <jsp:include
		page="../navbar.jsp"></jsp:include> <!-- Navbar ends --> <!-- Page Header -->
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
	<!-- Page Header End --> </header>
	<!-- Container Starts -->
	<div class="container">

		<form class="jotform-form"
			action="https://submit.jotform.me/submit/81005416515447/"
			method="post" name="form_81005416515447" id="81005416515447"
			accept-charset="utf-8">
			<input type="hidden" name="formID" value="81005416515447" />
			<div class="form-all">


				<div class="form-header-group ">
					<div class="header-text httal htvam">
						<h1 id="header_7" class="form-header" data-component="header">
							${oneNews.subject}</h1>
					</div>
				</div>


				<div id="cid_3" class="form-input-wide">
					<div id="text_3" class="form-html" data-component="text">
						<c:forEach var="news" items="${oneNews}">
							<div class="col-md-4">
								<div class="card mb-4 box-shadow">
									<img class="card-img-top" src="/images/news/dogtable.jpg"
										width="80px" alt="">
									<div class="card-body" style="margin-bottom: 5px"></div>
								</div>
							</div>
						</c:forEach>
						<p>
							<span style="color: #575757;"><strong>活動名稱：</strong>${oneNews.subject}</span>
						</p>

						<p>
							<span style="color: #575757;"><strong>活動日期：</strong>${oneNews.event_Date}</span>
						</p>

						<p>
							<span style="color: #575757;"><strong>活動地點：</strong>${oneNews.address}</span>
						</p>
						<div style="width: 600px; height: 400px; border: 2px gray solid;">
							<strong>活動簡介：${oneNews.content}</strong>寵物用品博覽會匯集全台各大寵物用品廠商，提供最新寵物用品、飼料零食、保健營養品、服飾配件、美容清潔、住宿醫療等週邊服務
						</div>
						<br>
						<!-- Facebook Login starts -->
						<fb:login-button scope="public_profile,email"
							onlogin="checkLoginState();">
						</fb:login-button>


						<script>
						  window.fbAsyncInit = function() {
						    FB.init({
						      appId      : '{1807394549310831}',
						      cookie     : true,
						      xfbml      : true,
						      version    : '{v2.12}'
						    });
						      
						    FB.AppEvents.logPageView();   
						      
						  };
						
						  (function(d, s, id){
						     var js, fjs = d.getElementsByTagName(s)[0];
						     if (d.getElementById(id)) {return;}
						     js = d.createElement(s); js.id = id;
						     js.src = "https://connect.facebook.net/zh_TW/sdk.js";
						     fjs.parentNode.insertBefore(js, fjs);
						   }(document, 'script', 'facebook-jssdk'));
						   
						FB.getLoginStatus(function(response) {
						    statusChangeCallback(response);
						});
						
						{
						    status: 'connected',
						    authResponse: {
						        accessToken: '...',
						        expiresIn:'...',
						        signedRequest:'...',
						        userID:'...'
						    }
						}
						
						function checkLoginState() {
						  FB.getLoginStatus(function(response) {
						    statusChangeCallback(response);
						  });
						}
						</script>
						<!-- Facebook Login ends -->
						 <div style="position: relative;">
                                
                                            <div class="form-item dno new-post-login">
        
                <div class="new-login-form">
                    <div class="new-login-left">
                        <h3><a id="sign-up-link" href="/sign_up">成為會員</a>或<a id="login-link" href="/login">登入</a></h3>
                        <script>
                            StackExchange.ready(function () {
                                StackExchange.helpers.onClickDraftSave('#login-link');
                            });
                        </script>
                        <div class="preferred-login google-login" data-ga="[&quot;sign up&quot;,&quot;Sign Up Started - Google&quot;,&quot;New Post&quot;,null,null]">
                            <svg aria-hidden="true" class="svg-icon native iconGoogle" width="30" height="30" viewBox="0 0 18 18"><g><path d="M16.51 8H8.98v3h4.3c-.18 1-.74 1.48-1.6 2.04v2.01h2.6a7.8 7.8 0 0 0 2.38-5.88c0-.57-.05-.66-.15-1.18z" fill="#4285F4"/><path d="M8.98 17c2.16 0 3.97-.72 5.3-1.94l-2.6-2a4.8 4.8 0 0 1-7.18-2.54H1.83v2.07A8 8 0 0 0 8.98 17z" fill="#34A853"/><path d="M4.5 10.52a4.8 4.8 0 0 1 0-3.04V5.41H1.83a8 8 0 0 0 0 7.18l2.67-2.07z" fill="#FBBC05"/><path d="M8.98 4.18c1.17 0 2.23.4 3.06 1.2l2.3-2.3A8 8 0 0 0 1.83 5.4L4.5 7.49a4.77 4.77 0 0 1 4.48-3.3z" fill="#EA4335"/></g></svg>用Google帳號登入
                        </div>
                        <div class="preferred-login facebook-login" data-ga="[&quot;sign up&quot;,&quot;Sign Up Started - Facebook&quot;,&quot;New Post&quot;,null,null]">
                            <svg aria-hidden="true" class="svg-icon iconFacebook" width="30" height="30" viewBox="0 0 18 18"><path d="M1.88 1C1.4 1 1 1.4 1 1.88v14.24c0 .48.4.88.88.88h7.67v-6.2H7.46V8.4h2.09V6.61c0-2.07 1.26-3.2 3.1-3.2.88 0 1.64.07 1.87.1v2.16h-1.29c-1 0-1.19.48-1.19 1.18V8.4h2.39l-.31 2.42h-2.08V17h4.08c.48 0 .88-.4.88-.88V1.88c0-.48-.4-.88-.88-.88H1.88z" fill="#3C5A96"/></svg>用Facebook帳號登入
                        </div>
                        
                    </div>
                    <input type="hidden" name="manual-openid" class="manual-openid" />
                    <input type="hidden" name="use-facebook" class="use-facebook" value="false" />
                    <input type="hidden" name="use-google" class="use-google" value="false" />
                    <input type="button" class="submit-openid" value="Submit" style="display:none" />
                    <div class="new-login-right">
                                <h3>以訪客身分發文</h3>
    <div class="form-item">
        <table>
        <tr>
                    <td class="vm">
                <div>
                    <label for="display-name">姓名</label>
                    <input id="display-name" name="display-name" type="text" size="30" maxlength="30" value="" tabindex="105">
                </div>
                <div>
                    <label for="m-address">Email</label>
                    <input id="m-address" name="m-address" type="email" size="30" maxlength="100" value="" tabindex="106" placeholder="必填，但不會顯示" />
                </div>
            </td>
        </tr>
        </table>
    </div>

                    </div>
                </div>
            </div>
            <script>
                StackExchange.ready(
                    function () {
                        StackExchange.openid.initPostLogin('.new-post-login', 'https%3a%2f%2fstackoverflow.com%2fquestions%2f8846173%2fhow-to-remove-first-and-last-character-of-a-string%23new-answer', 'question_page');
                    }
                );
            </script>
            <noscript>
                        <h3>Post as a guest</h3>
    <div class="form-item">
        <table>
        <tr>
                    <td class="vm">
                <div>
                    <label for="display-name">Name</label>
                    <input id="display-name" name="display-name" type="text" size="30" maxlength="30" value="" tabindex="105">
                </div>
                <div>
                    <label for="m-address">Email</label>
                    <input id="m-address" name="m-address" type="email" size="30" maxlength="100" value="" tabindex="106" placeholder="required, but never shown" />
                </div>
            </td>
        </tr>
        </table>
    </div>

            </noscript>

                            </div>

                                                            <div class="form-submit cbt">
                                        <input id="submit-button" type="submit" value="發表" tabindex="110">
                                    <a href="#" class="btn-clear discard-answer dno">清空</a>

						
						<p>
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3615.004965796966!2d121.5412095148038!3d25.033905544449656!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442abd379a5ec97%3A0xec12a62666a81e3d!2sNo.+390%2C+Section+1%2C+Fuxing+South+Road%2C+Da%E2%80%99an+District%2C+Taipei+City%2C+106!5e0!3m2!1sen!2stw!4v1523468006587"
								width="600" height="450" frameborder="0" style="border: 0"
								allowfullscreen></iframe>
						</p>
					</div>
				</div>
				


			</div>
		</form>
		<!-- Service-Block-000 Item Ends -->
	</div>
	<!-- Container Ends -->

	<!-- Footer Section -->
	<footer> <jsp:include page="../footer.jsp"></jsp:include> </footer>
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
	Step 1: Include the JavaScript SDK on your page once, ideally right
	after the opening body tag.
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