<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- AddEvent script -->
<script type="text/javascript" src="https://addevent.com/libs/atc/1.6.1/atc.min.js" async defer></script>

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
<title>Animour 活動詳情</title>
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
<style>
  #map{
    height:400px;
    widht:100%;
  }
</style>
</style>
</head>
<body>
<!-- Facebook Url starts-->
<script>
var fbhtml_url=window.location.toString();
</script>
<!-- Facebook Url ends-->

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v3.0';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
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
						<h2>活動詳情</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Page Header End -->
	</header>

<!-- Event Section -->
  <section class="classic-blog-section section">
    <div class="container">
      <div class="row">
    <img class="card-img-top" src="/images/news/PetExpo.jpg" width="100%" alt="" >
        <!-- Event Section -->
        <div class="col-md-9">
          <!-- Single Event Post -->
          <article class="blog-post-wrapper wow fadeIn" data-wow-delay="0.3s">
            <!-- Event Info -->
            <header class="author-info">
              <h2 class="blog-post-title"  style="font-family:微軟正黑體; padding-top:15px">
                <a href="#subject">【2018上聯寵物用品博覽會】</a>
              </h2>
              <div class="tag-posted-in">
               	<div>
               	<span style="font-family:微軟正黑體">
                    <i class="icon icon-calendar" ></i>
                    	活動時間：2018/08/31(五) 至 2018/09/03(一)
                  </span>
                 <!-- Add to Google Calendar starts -->
               	<!-- Button code -->
					<div title="Add to Calendar" class="addeventatc btn btn-outline btn-radius btn-xs" style="float:right; border:2px solid #9C3; font-family:微軟正黑體">
					    <a>新增活動到行事曆
					    <span class="start">08/31/2018 08:00 AM</span>
					    <span class="end">09/03/2018 10:00 AM</span>
					    <span class="timezone">America/Los_Angeles</span>
					    <span class="title">Summary of the event</span>
					    <span class="description">Description of the event</span>
					    </a>
					</div>
               	</div>
               	<!-- Add to Google Calendar ends -->
               	<!-- Timezone Getter -->
               	<script type="text/javascript">
					var d = new Date()
					var gmtHours = d.getTimezoneOffset()/60
					console.log("The local time zone is: GMT " + gmtHours)
					
				</script>
               	
               	<div>
                  <span style="font-family:微軟正黑體">
                  <i class="icon icon-globe"></i>
<!--                     <i class="icon icon-globe"></i> -->
                    	活動地點：台北世貿三館（110台北市信義區松壽路6號）
                  </span>
                 </div>
                 <div>
                  <span style="font-family:微軟正黑體">
                    <i class="icon icon-link" ></i>
                    	相關連結：<a href="https://pet-fair.top-link.com.tw/home">活動官網</a>
                  </span>
                  </div>
              </div>
            </header>
            <!-- Featured Content -->
            <section class="featured-wrapper">
<!--               <a href="#"> -->
<!--                 <img src="/images/news/PetExpo.jpg" alt=""> -->
<!--               </a> -->
            </section>
            <!-- Post Content -->
            <section class="blog-post-content"><hr>
              	<h2 style="padding: 10px; font-family:微軟正黑體" >活動簡介：</h2>
              <div class="blog-post" style="border: 2px solid grey; font-family:微軟正黑體">
                <p style="padding: 10px; font-family:微軟正黑體">
                	匯集全台各大寵物用品廠商，提供最新寵物用品、飼料零食、保健營養品、服飾配件、美容清潔、住宿醫療等週邊服務。
                	本展歡迎所有寵物愛好者攜帶寵物一同入場參觀！除了提供年度最優惠的商品促銷外，
                	更規畫一系列與愛寵同歡的趣味活動，讓飼主與寵物能玩得開心、滿載而歸。除了讓各類參展商展示產品外，
                	也是與業界合作交流、開發商機的管道。歡迎寵物相關業者預約洽談、換證入場。
                </p>
              </div>
            </section>
            <div class="blog-post-footer clearfix">
              <!-- Post Meta -->
              
              
            </div>
            <h2 style="padding: 10px; font-family:微軟正黑體">活動地點</h2>
				<div id="map"></div>            
          </article>
          <!--Popular Event Slider-->
          <h2 style="font-family:微軟正黑體">熱門活動</h2>         
            <!-- Featured Content -->
            <section class="featured-wrapper">
              <div id="carousel-image-slider" class="owl-carousel">
                <div class="item">
                  <img src="/images/news/PetFamily.jpg" alt="">
                </div>
                <div class="item">
                  <img src="/images/news/PetFoodSummer.png" alt="">
                </div>
                <div class="item">
                  <img src="/images/news/DogGames.jpg" alt="">
                </div>
                <div class="item">
                  <img src="/images/news/Adopt.jpg" alt="">
                </div>
              </div>
            </section>
            
            
            
            <!-- Footer -->
            <div class="blog-post-footer clearfix">
            </div>
          </article>
        </div>
        <!-- End -->

        <!-- Event Sidebar Section -->
        <div class="col-md-3">
          <div class="sidebar-area">           
            <!-- Subscribe Widget -->
            <aside class="widget subscribe-widget wow fadeIn" data-wow-delay="0.3s">
 
              <div class="subscribe-area" style="padding-top:15px">

                  <a class="btn btn-outline btn-radius mt-20 btn-lg btn-block" style="margin: 10px">聯絡主辦單位</a>
                  <a href='/news/enroll' class="btn btn-outline btn-radius mt-20 btn-lg btn-block" style="margin: 10px">我要報名</a>
<!--                   <a class="btn btn-outline btn-radius mt-20 btn-lg btn-block" style="margin: 10px"> -->
<!--                   	<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/2000px-F_icon.svg.png" width="15 px" style="margin-right: 10px"/>分享至臉書</a> -->
		
		<!-- Share Page to Facebook starts -->
              	<div 
              		class="fb-share-button" 
              		data-href="http://localhost:8080/news/event" 
              		data-layout="button" 
              		data-size="large" 
              		data-mobile-iframe="true">
              			<a 
              				target="_blank" 
              				href="https://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Flocalhost%3A8080%2Fnews%2Fevent&amp;src=sdkpreparse" 
              				class="fb-xfbml-parse-ignore btn btn-outline btn-radius mt-20 btn-lg btn-block"
              				style="margin:10px">
              					<img 
              						src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/2000px-F_icon.svg.png" 
              						width="15 px" 
              						style="margin-right: 10px"/>
              							分享至臉書
              			</a>
              	</div>
            <!--Facebook Url-->
              	<div 
              		class="fb-share-button" 
              		data-href="http://localhost:8080/news/event" 
              		data-layout="button" 
              		data-size="large" 
              		data-mobile-iframe="true">
              			<a 
              				target="_blank" 
              				href="javascript:void(0);"
              				onclick="window.open('http://www.facebook.com/sharer/sharer.php?u='+fbhtml_url);return false;"
              				class="fb-xfbml-parse-ignore btn btn-outline btn-radius mt-20 btn-lg btn-block"
              				style="margin:10px">
              					<img 
              						src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/2000px-F_icon.svg.png" 
              						width="15 px" 
              						style="margin-right: 10px"/>
              							分享至臉書url
              			</a>
              	</div>
              </div>
            </aside>            
            <!-- Share Page to Facebook ends -->
           
        <!-- End -->
      </div>
    </div>
  </section>
  
  <!-- Classic Blog Section End -->

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
	
<!-- Google Map Callback starts-->
	<script>
      function initMap() {    	  
    	//Map options
      	var options ={
    		  zoom:15,
    		  center: {lat: 25.0340, lng: 121.5645}
      }
    	
    	// New map
        var map = new google.maps.Map(document.getElementById('map'), options); 
       
    	
    	// Listen for click on map
    	google.maps.event.addListener(map, 'click', function(event){
    		//Add marker
    		addMarker({coords:event.latLng});
    	});
    /*
       //Add marker
       var marker = new google.maps.Marker({
    	   position:{lat: 25.0340, lng: 121.5645},
    	   map:map
       });
       
       //Add infoWindow
       var infoWindow = new google.maps.InfoWindow({
    	  content:'<h1 style="font-family: 微軟正黑體">世貿三館</h1>' 
       });
       
       marker.addListener('click', function(){
    	   infoWindow.open(map, marker);
       });
       */
       
       //Array of markers
       var markers = [
    	   {
        	   coords:{lat: 25.0333, lng: 121.5623},
           	   iconImage:'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png',
           	   content:'<h1 style="font-family:微軟正黑體">世貿三館</h1>'
           },
//            {
//         	   coords:{lat: 25.033128, lng: 121.552768},
//         	   content:'<h1 style="font-family:微軟正黑體">捷運信義安和站</h1>'
//         	},
//         	{coords:{lat: 25.0231, lng: 121.511}
//         	}
       ];
       
       //Loop through markers
       for(var i = 0; i < markers.length; i++){
    	   //Add marker
       addMarker(markers[i]);
    	   
       }
       
       //Add Marker Function
       function addMarker(props){
    	   var marker = new google.maps.Marker({
        	   position:props.coords,
        	   map:map,
        	   //icon:props.iconImage
           });
    	   
    	   //Check for customicon
    	   if(props.iconImage){
    		   //Set icon image
    		   marker.setIcon(props.iconImage);
    	   }
    	   
    	   //Check content
    	   if(props.content){
    		   var infoWindow = new google.maps.InfoWindow({
    		    	  content:props.content 
    		       });
    		       
    		       marker.addListener('click', function(){
    		    	   infoWindow.open(map, marker);
    		       });
    		   
    	   }
    	   
       }
      }
    </script>

	
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDxMrZCxle4RWMLbJ0TXmafreHWxOFhmso&callback=initMap"
    async defer></script>
<!-- Google Map Callback ends -->

<!-- Add Events to Google Calendar starts-->
<script type="text/javascript">
window.addeventasync = function(){
    addeventatc.settings({
        appleical  : {show:true, text:"Apple Calendar"},
        google     : {show:true, text:"Google <em>(online)</em>"},
        outlook    : {show:true, text:"Outlook"},
        outlookcom : {show:true, text:"Outlook.com <em>(online)</em>"},
        yahoo      : {show:true, text:"Yahoo <em>(online)</em>"}
    });
};
</script>
<!-- Add Event to Google Calendar ends -->

</body>
</html>