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
          <c:forEach var="article" items="${articles}">
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
                    <a href="/forum/findOne?id=${article.id}">
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
          
          
          
<!--           <article class="blog-post-wrapper format-slider wow fadeIn" data-wow-delay="0.3s"> -->
<!--             Author Info -->
<!--             <header class="author-info"> -->
<!--               <h2 class="blog-post-title"> -->
<!--                 <a href="#">Microw photography Basics</a> -->
<!--               </h2> -->
<!--               <div class="tag-posted-in"> -->
<!--                 <ul class="list-unstyled"> -->
<!--                   <li> -->
<!--                     <i class="fa fa fa-calendar"></i> -->
<!--                     <a href="#">Jully 17, 2018</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-user"></i> -->
<!--                     <a href="#">Admin</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-pencil-square-o"></i> -->
<!--                     <a href="#">Business</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-comments"></i> -->
<!--                     <a href="#">No comment</a> -->
<!--                   </li> -->
<!--                 </ul> -->
<!--               </div> -->
<!--             </header> -->
<!--             Featured Content -->
<!--             <section class="featured-wrapper"> -->
<!--               <div id="carousel-image-slider" class="owl-carousel"> -->
<!--                 <div class="item"> -->
<!--                   <img src="/images/blog/blog-slider/carousel-01.jpg" alt=""> -->
<!--                 </div> -->
<!--                 <div class="item"> -->
<!--                   <img src="/images/blog/blog-slider/carousel-02.jpg" alt=""> -->
<!--                 </div> -->
<!--                 <div class="item"> -->
<!--                   <img src="/images/blog/blog-slider/carousel-03.jpg" alt=""> -->
<!--                 </div> -->
<!--                 <div class="item"> -->
<!--                   <img src="/images/blog/blog-slider/carousel-04.jpg" alt=""> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </section> -->
<!--             Post Content -->
<!--             <section class="blog-post-content"> -->
<!--               <div class="blog-post"> -->
<!--                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint beatae incidunt unde aliquid dolorum qui voluptatibus -->
<!--                   ipsa voluptatem aliquam quisquam quis a enim quas reprehenderit dicta, expedita. Vel repellat sunt qui, -->
<!--                   repudiandae ratione perferendis, dicta provident, laboriosam dolorum repellendus ad!</p> -->
<!--               </div> -->
<!--             </section> -->
<!--             Footer -->
<!--             <div class="blog-post-footer clearfix"> -->
<!--               Post Meta -->
<!--               <ul class="post-meta pull-right"> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-comments"></i> 25</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-thumbs-up"></i> 250</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-share"></i> Share</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--               </ul> -->
<!--               <a href="#" class="pull-left btn btn-common btn-xs">Read more</a> -->
<!--             </div> -->
<!--           </article> -->
<!--           Video Post -->
<!--           <article class="blog-post-wrapper format-video wow fadeIn" data-wow-delay="0.3s"> -->
<!--             Author Info -->
<!--             <header class="author-info"> -->
<!--               <h2 class="blog-post-title"> -->
<!--                 <a href="#">Fundamental of video editing</a> -->
<!--               </h2> -->
<!--               <div class="tag-posted-in"> -->
<!--                 <ul class="list-unstyled"> -->
<!--                   <li> -->
<!--                     <i class="fa fa fa-calendar"></i> -->
<!--                     <a href="#">Jully 17, 2018</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-user"></i> -->
<!--                     <a href="#">Admin</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-pencil-square-o"></i> -->
<!--                     <a href="#">Business</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-comments"></i> -->
<!--                     <a href="#">No comment</a> -->
<!--                   </li> -->
<!--                 </ul> -->
<!--               </div> -->
<!--             </header> -->
<!--             Featured Content -->
<!--             <section class="featured-wrapper"> -->
<!--               <iframe height="350" width="100%" src="https://www.youtube.com/embed/JGobj8RGMs4" frameborder="0" allow="autoplay; encrypted-media" -->
<!--                 allowfullscreen></iframe> -->
<!--             </section> -->
<!--             Post Content -->
<!--             <section class="blog-post-content"> -->
<!--               <div class="blog-post"> -->
<!--                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint beatae incidunt unde aliquid dolorum qui voluptatibus -->
<!--                   ipsa voluptatem aliquam quisquam quis a enim quas reprehenderit dicta, expedita. Vel repellat sunt qui, -->
<!--                   repudiandae ratione perferendis, dicta provident, laboriosam dolorum repellendus ad!</p> -->
<!--               </div> -->
<!--             </section> -->
<!--             Footer -->
<!--             <div class="blog-post-footer clearfix"> -->
<!--               Post Meta -->
<!--               <ul class="post-meta pull-right"> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-comments"></i> 25</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-thumbs-up"></i> 250</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-share"></i> Share</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--               </ul> -->
<!--               <a href="#" class="pull-left btn btn-common btn-xs">Read more</a> -->
<!--             </div> -->
<!--           </article> -->
<!--           No thumbnail Post -->
<!--           <article class="blog-post-wrapper wow fadeIn" data-wow-delay="0.3s"> -->
<!--             Author Info -->
<!--             <header class="author-info"> -->
<!--               <h2 class="blog-post-title"> -->
<!--                 <a href="#">Post without featured image</a> -->
<!--               </h2> -->
<!--               <div class="tag-posted-in"> -->
<!--                 <ul class="list-unstyled"> -->
<!--                   <li> -->
<!--                     <i class="fa fa fa-calendar"></i> -->
<!--                     <a href="#">Jully 17, 2018</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-user"></i> -->
<!--                     <a href="#">Admin</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-pencil-square-o"></i> -->
<!--                     <a href="#">Business</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-comments"></i> -->
<!--                     <a href="#">No comment</a> -->
<!--                   </li> -->
<!--                 </ul> -->
<!--               </div> -->
<!--             </header> -->
<!--             Post Content -->
<!--             <section class="blog-post-content"> -->
<!--               <div class="blog-post"> -->
<!--                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint beatae incidunt unde aliquid dolorum qui voluptatibus -->
<!--                   ipsa voluptatem aliquam quisquam quis a enim quas reprehenderit dicta, expedita. Vel repellat sunt qui, -->
<!--                   repudiandae ratione perferendis, dicta provident, laboriosam dolorum repellendus ad!</p> -->
<!--               </div> -->
<!--             </section> -->
<!--             Footer -->
<!--             <div class="blog-post-footer clearfix"> -->
<!--               Post Meta -->
<!--               <ul class="post-meta pull-right"> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-comments"></i> 25</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-thumbs-up"></i> 250</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-share"></i> Share</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--               </ul> -->
<!--               <a href="#" class="pull-left btn btn-common btn-xs">Read more</a> -->
<!--             </div> -->
<!--           </article> -->
<!--           Audio Post -->
<!--           <article class="blog-post-wrapper format-audio wow fadeIn" data-wow-delay="0.3s"> -->
<!--             Author Info -->
<!--             <header class="author-info"> -->
<!--               <h2 class="blog-post-title"> -->
<!--                 <a href="#">Soundcloud audio embed post</a> -->
<!--               </h2> -->
<!--               <div class="tag-posted-in"> -->
<!--                 <ul class="list-unstyled"> -->
<!--                   <li> -->
<!--                     <i class="fa fa fa-calendar"></i> -->
<!--                     <a href="#">Jully 17, 2018</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-user"></i> -->
<!--                     <a href="#">Admin</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-pencil-square-o"></i> -->
<!--                     <a href="#">Business</a> -->
<!--                   </li> -->
<!--                   <li> -->
<!--                     <i class="fa fa-comments"></i> -->
<!--                     <a href="#">No comment</a> -->
<!--                   </li> -->
<!--                 </ul> -->
<!--               </div> -->
<!--             </header> -->
<!--             Featured Content -->
<!--             <section class="featured-wrapper"> -->
<!--               <iframe width="100%" height="200" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/181436429&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"></iframe> -->
<!--             </section> -->
<!--             Post Content -->
<!--             <section class="blog-post-content"> -->
<!--               <div class="blog-post"> -->
<!--                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint beatae incidunt unde aliquid dolorum qui voluptatibus -->
<!--                   ipsa voluptatem aliquam quisquam quis a enim quas reprehenderit dicta, expedita. Vel repellat sunt qui, -->
<!--                   repudiandae ratione perferendis, dicta provident, laboriosam dolorum repellendus ad!</p> -->
<!--               </div> -->
<!--             </section> -->
<!--             Footer -->
<!--             <div class="blog-post-footer clearfix"> -->
<!--               Post Meta -->
<!--               <ul class="post-meta pull-right"> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-comments"></i> 25</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-thumbs-up"></i> 250</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <span> -->
<!--                     <a href="#"> -->
<!--                       <i class="fa fa-share"></i> Share</a> -->
<!--                   </span> -->
<!--                 </li> -->
<!--               </ul> -->
<!--               <a href="#" class="pull-left btn btn-common btn-xs">Read more</a> -->
<!--             </div> -->
<!--           </article> -->
<!--           Quote Post -->
<!--           <article class="blog-post-wrapper format-qoute wow fadeIn" data-wow-delay="0.3s"> -->
<!--             Post Content -->
<!--             <section class="blog-post-content"> -->
<!--               <blockquote class="blockquote"> -->
<!--                 <p>Infuse your life with action. Don't wait for it to happen. Make it happen. Make your own future. Make your -->
<!--                   own hope. Make your own love. And whatever your beliefs, honor your creator, not by passively waiting for -->
<!--                   grace to come down from upon high, but by doing what you can to make grace happen... yourself, right now, -->
<!--                   right down here on Earth.</p> -->
<!--                 <a href="#"> -->
<!--                   <span>- Bradley Whitford</span> -->
<!--                 </a> -->
<!--               </blockquote> -->
<!--             </section> -->
<!--           </article> -->

          <!-- Blog Pagination -->
          <div class="blog-pagination clearfix wow fadeIn" data-wow-delay="0.3s">
            <nav aria-label="..." class="">
              <ul class="pagination">
                <li class="page-item disabled">
                  <a class="page-link" href="#" tabindex="-1" aria-label="Previous">
                    <i class="fa fa-angle-left"></i>
                    Prev
                    <span class="sr-only">Previous</span>
                  </a>
                </li>
                <li class="page-item active">
                  <a class="page-link" href="#">1
                    <span class="sr-only">(current)</span>
                  </a>
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
                  <a class="page-link" href="#" aria-label="Next">
                    Next
                    <i class="fa fa-angle-right"></i>
                    <span class="sr-only">Next</span>
                  </a>
                </li>
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