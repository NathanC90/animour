<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

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
  <!-- Viewport Meta Tag -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>
    Animal Shelter
  </title>
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


  <!-- Color CSS Styles  -->
  <link rel="stylesheet" type="text/css" href="/css/colors/green.css" media="screen" />

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
    </script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js">
    </script>
    <![endif]-->
</head>

<body>

  <!-- Header area wrapper starts -->
  <header id="header-wrap">
    <!-- Navbar Starts -->
	<jsp:include page="../navbar.jsp"></jsp:include>
		<!-- Navbar ends -->
  </header>
  <!-- Header-wrap Section End -->

  <!-- Page Header -->
  <div class="page-header-section">
    <div class="container">
      <div class="row">
        <div class="page-header-area">
          <div class="page-header-content">
            <h2>部落格</h2>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Page Header End -->

  <!-- Classic Blog Section -->
  <section class="classic-blog-section section">
    <div class="container">
      <div class="row">
        <!-- Blog Sidebar Section -->
        <jsp:include page="forumSideBar.jsp"></jsp:include>
        <!-- End -->

        <!-- BLog Article Section -->
        <div id="bloglist"class="col-md-9">
          <!-- Single Blog Post -->

          <div id = "show"></div>
          <!-- Slider Post -->


          <!-- Blog Pagination -->
<!--           <div class="blog-pagination clearfix wow fadeIn" data-wow-delay="0.3s"> -->
<!-- 							<nav aria-label="..." class=""> -->
<!-- 								<ul class="pagination"> -->
<%-- 									<li class="page-item"><a class="page-link" href="?${categoryQueryString}pageNo=${page.number}"  --%>
<!-- 									tabindex="-1" aria-label="Previous"> <i class="fa fa-angle-left"></i> 上一頁  -->
<!-- 									<span class="sr-only">Previous</span></a></li> -->
<%-- 									<li class="page-item active"><a class="page-link" href="">第 ${page.number+1}/${page.totalPages} 頁 --%>
<!-- 											<span class="sr-only">(current)</span></a></li> -->
<%-- 									<li class="page-item"><a class="page-link" href="?${queryString}pageNo=${page.number+2}" --%>
<!-- 										aria-label="Next"> 下一頁 <i class="fa fa-angle-right"></i> -->
<!-- 										<span class="sr-only">Next</span></a></li> -->
<!-- 								</ul> -->
<!-- 							</nav> -->
<!-- 						</div> -->
        </div>
        <!-- End -->
      </div>
    </div>
  </section>
  <!-- Classic Blog Section End -->

  <!-- Footer Section -->
  <footer>
<jsp:include page="../footer.jsp"></jsp:include>
  </footer>
  <!-- Footer Section End-->

  <!-- Go To Top Link -->
  <a href="#" class="back-to-top">
    <i class="fa fa-angle-up">
    </i>
  </a>

  <!-- JavaScript & jQuery Plugins -->
  <script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
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

	<script>
	var pageNo = 1;
	var articlesString = "";
	var scroll = true;
  var flag = 0;
	var categoryId = 0;
	
  $(document).ready(function(){
    refresh();
    $("li[name='category']").click(function(){
      pageNo = 1;
      flag = 1;
      categoryId = $(this).val();
      articlesString = "";
      // $("#show").empty();
      console.log(flag);
      console.log(categoryId);
      refresh();
    });

		$(window).scroll(function(){
			  var window_height = $( window ).height();
			  var window_scrollTop = $(window).scrollTop();
// 			  var div_height = $(document).height();
			  var div_height = $("#bloglist").height();
			   if(window_height + window_scrollTop >= div_height && scroll == true){
				 scroll = false;
				 refresh();
			   setTimeout(setScroll,1000);
			   }
			});
	});

function setScroll(){
	scroll = true;
	}
function refresh(){
  if(flag === 0){
    getArticle();
  }else if(flag === 1){
    getArticleByCategoryId(categoryId);
  }
}	
function getArticle(){
	$.getJSON("/articles",{"pageNo":pageNo},function(datas){
   	 if(datas!=null){
   	 	if(pageNo<=datas[0].totalPage){
			$.each(datas,function(idx,article){
         	var articleString = '<article class="blog-post-wrapper wow fadeIn" data-wow-delay="0.3s"><header class="author-info"><h2 class="blog-post-title"><a href="/forum/findOne?id='+ article.id +'">' + article.subject 
       		 +'</a></h2><div class="tag-posted-in"><ul class="list-unstyled"><li><i class="fa fa fa-calendar"></i><a href="#">'+ new Date(article.postTime)
       		 +'</a></li><li><i class="fa fa-user"></i><a href="#">'+ article.member.account
       		 +'</a></li><li><i class="fa fa-pencil-square-o"></i><a href="#">'+ article.category.name
       		 +'</a></li><li><i class="fa fa-comments"></i><a href="#">'+ article.commentLength
       		 +'comment</a></li></ul></div></header><section class="featured-wrapper"><a href="#"><img src="/images/adopt/cats/ad-cat1.jpg" alt=""></a></section><section class="blog-post-content" ><div class="blog-post"><p style="overflow:hidden;display:-webkit-box;-webkit-box-orient:vertical;-webkit-line-clamp:3;line-height:24px;height:72px;">'+ article.content 
       		 +'</p></div></section><div class="blog-post-footer clearfix"><ul class="post-meta pull-right"><li><span><a href="' + article.id
       		 +'"><i class="fa fa-comments"></i>'+ article.commentLength
                +'</a></span></li><li><span><a href="#"><i class="fa fa-thumbs-up"></i> 250</a></span></li><li><span><a href="#"><i class="fa fa-share"></i> Share</a></span></li></ul><a href="/forum/findOne?id='+ article.id +'" class="pull-left btn btn-common btn-xs">Read more</a></div></article>';
         	articlesString = articlesString + articleString;
			});
         	pageNo += 1;
			$("#show").html(articlesString);
    		}
			console.log(datas);
   			}
		});
	}
	
function getArticleByCategoryId(categoryId){
	var url = "/articles/category/" + categoryId;
	$.getJSON(url,{"pageNo":pageNo},function(datas){
   	 if(datas!=null){
   	 	if(pageNo<=datas[0].totalPage){
			$.each(datas,function(idx,article){
         	var articleString = '<article class="blog-post-wrapper wow fadeIn" data-wow-delay="0.3s"><header class="author-info"><h2 class="blog-post-title"><a href="/forum/findOne?id='+ article.id +'">' + article.subject 
       		 +'</a></h2><div class="tag-posted-in"><ul class="list-unstyled"><li><i class="fa fa fa-calendar"></i><a href="#">'+ new Date(article.postTime)
       		 +'</a></li><li><i class="fa fa-user"></i><a href="#">'+ article.member.account
       		 +'</a></li><li><i class="fa fa-pencil-square-o"></i><a href="#">'+ article.category.name
       		 +'</a></li><li><i class="fa fa-comments"></i><a href="#">'+ article.commentLength
       		 +'comment</a></li></ul></div></header><section class="featured-wrapper"><a href="#"><img src="/images/adopt/cats/ad-cat1.jpg" alt=""></a></section><section class="blog-post-content" ><div class="blog-post"><p style="overflow:hidden;display:-webkit-box;-webkit-box-orient:vertical;-webkit-line-clamp:3;line-height:24px;height:72px;">'+ article.content 
       		 +'</p></div></section><div class="blog-post-footer clearfix"><ul class="post-meta pull-right"><li><span><a href="' + article.id
       		 +'"><i class="fa fa-comments"></i>'+ article.commentLength
                +'</a></span></li><li><span><a href="#"><i class="fa fa-thumbs-up"></i> 250</a></span></li><li><span><a href="#"><i class="fa fa-share"></i> Share</a></span></li></ul><a href="/forum/findOne?id='+ article.id +'" class="pull-left btn btn-common btn-xs">Read more</a></div></article>';
         	articlesString = articlesString + articleString;
			});
         	pageNo += 1;
			$("#show").html(articlesString);
    		}
			console.log(datas);
   			}
		});
	}
	
	</script>
</body>

</html>