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
            <h2>Blog Sidebar Left</h2>
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
        <div class="col-md-9">
          <!-- Single Blog Post -->
          <c:forEach var="article" items="${page.content}">
          <article class="blog-post-wrapper wow fadeIn" data-wow-delay="0.3s">
            <!-- Author Info -->
            <header class="author-info">
              <h2 class="blog-post-title">
                <a href="/forum/findOne?id=${article.id}">${article.subject}</a>
              </h2>
              <div class="tag-posted-in">
                <ul class="list-unstyled">
                  <li>
                    <i class="fa fa fa-calendar"></i>
                    <a href="#">${article.postTime}</a>
                  </li>
                  <li>
                    <i class="fa fa-user"></i>
                    <a href="#">${article.memberAccount}</a>
                  </li>
                  <li>
                    <i class="fa fa-pencil-square-o"></i>
                    <a href="#">${article.categoryName}</a>
                  </li>
                  <li>
                    <i class="fa fa-comments"></i>
                    <a href="#">${article.commentLength} comment</a>
                  </li>
                </ul>
              </div>
            </header>
            <!-- Featured Content -->
            <section class="featured-wrapper">
              <a href="#">
                <img src="/images/adopt/cats/ad-cat1.jpg" alt="">
<!--                 /img/blog/blog-post-1.jpg   -->
              </a>
            </section>
            <!-- Post Content -->
           
            <section class="blog-post-content" >
              <div class="blog-post">
<!--               處理文章內容過多問題的CSS -->
                <p style="overflow:hidden;display:-webkit-box;-webkit-box-orient:vertical;-webkit-line-clamp:3;line-height:24px;height:72px;">${article.content}</p>
              </div>
            </section>
            <div class="blog-post-footer clearfix">
              <!-- Post Meta -->
              <ul class="post-meta pull-right">
                <li>
                  <span>
                    <a href="/forum/findOne?id=${article.id}#comment">
                      <i class="fa fa-comments"></i> ${article.commentLength}</a>
                  </span>
                </li>
                <li>
                  <span>
                    <a href="#">
                      <i class="fa fa-thumbs-up"></i> 250</a>
                  </span>
                </li>
                <li>
                  <span>
                    <a href="#">
                      <i class="fa fa-share"></i> Share</a>
                  </span>
                </li>
              </ul>
              <a href="/forum/findOne?id=${article.id}" class="pull-left btn btn-common btn-xs">Read more</a>
            </div>
          </article>
          </c:forEach>
          <!-- Slider Post -->


          <!-- Blog Pagination -->
          <div class="blog-pagination clearfix wow fadeIn" data-wow-delay="0.3s">
							<nav aria-label="..." class="">
								<ul class="pagination">
									<li class="page-item"><a class="page-link" href="?${categoryQueryString}pageNo=${page.number}" 
									tabindex="-1" aria-label="Previous"> <i class="fa fa-angle-left"></i> 上一頁 
									<span class="sr-only">Previous</span></a></li>
									<li class="page-item active"><a class="page-link" href="">第 ${page.number+1}/${page.totalPages} 頁
											<span class="sr-only">(current)</span></a></li>
									<li class="page-item"><a class="page-link" href="?${categoryQueryString}pageNo=${page.number+2}"
										aria-label="Next"> 下一頁 <i class="fa fa-angle-right"></i>
										<span class="sr-only">Next</span></a></li>
								</ul>
							</nav>
						</div>
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

</body>

</html>