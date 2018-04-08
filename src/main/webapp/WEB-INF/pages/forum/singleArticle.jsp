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
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">
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
              <h2>Single Blog Post</h2>
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
          <div class="col-md-9 wow fadeIn" data-wow-delay="0.3s">
            <!-- Single Blog Post -->
            <article class="blog-post-wrapper">
              <!-- Author Info -->
              <header class="author-info">
                <h2 class="blog-post-title"><a href="#">${article.subject}</a></h2>
                <div class="tag-posted-in">
                  <ul class="list-unstyled">
                    <li><i class="fa fa fa-calendar"></i> <a href="#">${article.updateTime}</a></li>
                    <li><i class="fa fa-user"></i> <a href="#">${article.memberAccount}</a></li>
                    <li><i class="fa fa-pencil-square-o"></i> <a href="#">${article.category}</a></li>
                    <li><i class="fa fa-comments"></i> <a href="#">No comment</a></li>
                  </ul>
                </div>
              </header>
              <!-- Featured Content -->
              <section class="featured-wrapper">
                <a href="#">
                  <img src="/images/blog/blog-post-1.jpg" alt="">
                </a>
              </section>
              <!-- Post Content -->
              <section class="blog-post-content">
                <div class="blog-post clearfix">
                  <p>${article.content}</p>
                </div>
              </section>
            </article>
            <!-- About Author -->
            <section class="about-author-section mt-5">
                <div class="media wow fadeIn" data-wow-delay="0.3s">
                  <div class="media-left">
                    <a href="#"><img class="img-circle img-responsive" src="/images/blog/avatar/avatarBig1.jpg" alt=""></a>
                  </div>
                  <div class="media-body">
                    <h4>About Writter</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis cumque, quo omnis rem eum ipsam qui. Tempore perspiciatis unde architecto quia, enim consectetur accusamus quasi omnis voluptatibus aliquid rem mollitia incidunt quibusdam eum, sit magnam, repellendus minima nihil iusto vitae ratione dicta, iste. Vitae, architecto.</p>
                  </div>
                </div>
                <div class="author-footer text-sm-center">
                  <a class="wow bounceIn" data-wow-delay="0.4s" href="#"><i class="fa fa-facebook icon-box icon-sm"></i></a>
                  <a class="wow bounceIn" data-wow-delay="0.5s" href="#"><i class="fa fa-twitter icon-box icon-sm"></i></a>
                  <a class="wow bounceIn" data-wow-delay="0.6s" href="#"><i class="fa fa-google-plus icon-box icon-sm"></i></a>
                  <a class="wow bounceIn" data-wow-delay="0.7s" href="#"><i class="fa fa-github icon-box icon-sm"></i></a>
                  <a class="wow bounceIn" data-wow-delay="0.8s" href="#"><i class="fa fa-dribbble icon-box icon-sm"></i></a>
                  <a class="wow bounceIn" data-wow-delay="0.9s" href="#"><i class="fa fa-behance icon-box icon-sm"></i></a>
                </div>
            </section>
            <div class="similar-post mt-3 clearfix">
              <h3 class="small-title mb-4 wow fadeIn" data-wow-delay="0.3s">Similar Post</h3>
              <div class="row">
                <div class="col-md-3 wow fadeIn" data-wow-delay="0.4s">
                  <a href="#"><img src="/images/blog/home-items/img4.jpg" alt="" class="img-responsive"></a>
                  <a href="#"><h2>Scetch Fundamental</h2></a>
                </div>
                <div class="col-md-3 wow fadeIn" data-wow-delay="0.5s">
                  <a href="#"><img src="/images/blog/home-items/img5.jpg" alt="" class="img-responsive"></a>
                  <a href="#"><h2>Photoshop Basic</h2></a>
                </div>
                <div class="col-md-3 wow fadeIn" data-wow-delay="0.6s">
                  <a href="#"><img src="/images/blog/home-items/img6.jpg" alt="" class="img-responsive"></a>
                  <a href="#"><h2>Meteor.JS Hands on</h2></a>
                </div>
                <div class="col-md-3 wow fadeIn" data-wow-delay="0.7s">
                  <a href="#"><img src="/images/blog/home-items/img7.jpg" alt="" class="img-responsive"></a>
                  <a href="#"><h2>Css Advance</h2></a>
                </div>
              </div>
            </div>
            <div class="comments-area clearfix mt-5 wow fadeIn" data-wow-delay="0.3s">
              <h3 class="small-title"><i class="fa fa-comment"></i> Comments</h3>
              <ul class="media-left comment-list mt-30">
                <c:forEach var="comment" items="${comments}">
                <li class="media">
                  <div class="media-left">
                    <a href="#"><img class="img-responsive img-circle" src="/images/blog/comment_avatar/avatar1.jpg" alt=""></a>
                  </div>
                  <div class="media-body">
                    <div class="commentor-info">
                      <div class="comment-author">
                        <a href="#">${comment.memberAccount}</a>
                        <span class="published-time"><i class="fa fa-calendar"></i>${comment.updateTime}</span>
                      </div>
                      <p>${comment.content}</p>
                    </div>
<!--                     <div class="media reply"> -->
<!--                       <div class="media-body"> -->
<!--                         <div class="commentor-info"> -->
<!--                           <div class="comment-author"> -->
<!--                             <a href="#">Saifuddin</a> -->
<!--                             <span class="published-time"><i class="fa fa-calendar"></i> 18 hrs ago</span> -->
<!--                           </div> -->
<!--                           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos fuga, et maiores, veniam ipsa quod soluta nam, deleniti assumenda magnam sint sapiente voluptatem commodi eos.</p> -->
<!--                         </div> -->
<!--                       </div> -->
<!--                       <div class="media-right"> -->
<!--                         <a href="#"><img class="img-responsive img-circle" src="/images/blog/comment_avatar/avatar2.jpg" alt=""></a> -->
<!--                       </div> -->
<!--                     </div> -->
                  </div>
                </li>
                </c:forEach>
              </ul>
              <div class="new-comment mt-5">
                <h3 class="small-title">Post new Comment</h3>
                <form class="mt-30">
                  <div class="row">
                    <div class="col-md-4 ">
                      <div class="form-group">
                        <label class="sr-only" for="username">Name</label>
                        <input type="text" placeholder="Full Name" id="username" required="" class="form-control">
                      </div>
                    </div><!-- /.col-md-4  -->
                    <div class="col-md-4 ">
                      <div class="form-group">
                        <label class="sr-only" for="useremail">Email</label>
                        <input type="email" placeholder="Email Address" id="useremail" required="" class="form-control">
                      </div>
                    </div><!-- /.col-md-4  -->
                    <div class="col-md-4">
                      <div class="form-group">
                        <label class="sr-only" for="userurl">Website</label>
                        <input type="text" placeholder="Your Website" id="userurl" required="" class="form-control">
                      </div>
                    </div>
                  </div><!-- /.col-md-4  -->  
                  <div class="form-group">
                    <label class="sr-only" for="usermessage">Message</label>
                    <textarea placeholder="Type here message" id="usermessage" rows="7" required="" class="form-control"></textarea>
                  </div> 
                  <button class="btn btn-common" type="submit"><i class="fa fa-comment"></i> Post Comment</button>      
              </form>
              </div>
            </div>
          </div>
          <!-- End -->

          
        </div>
      </div>
    </section>
    <!-- Classic Blog Section End -->

    <!-- Footer Section -->
    <footer>
      <!-- Container Starts -->
      <div class="container">
        <!-- Row Starts -->
        <div class="row section">
          <!-- Footer Widget Starts -->
          <div class="footer-widget col-md-6 col-lg-3 col-xs-12">
            <h3 class="small-title">
              About Us
            </h3>
            <p>
              Etiam ornare condimentum massa et scelerisque. Mauris nibh ipsum, laoreet at venenatis ac, 
            </p> 
            <ul class="mb-3">
              <li><i class="fa fa-map-marke"></i> Nash Street , Dearborn, Michigan</li>
              <li><i class="fa fa-phone"></i> +68 313-240-405</li>
              <li><i class="fa fa-phone"></i> +68 32-543-876</li>              
            </ul>   
          </div><!-- Footer Widget Ends -->
          
          <!-- Footer Widget Starts -->
          <div class="footer-widget col-md-6 col-lg-3 col-xs-12">
            <h3 class="small-title">
              Quick Links
            </h3>
            <ul class="menu">
              <li><a href="#">About Us</a></li>
              <li><a href="#">Team</a></li>
              <li><a href="#">Terms of Service</a></li>
              <li><a href="#">Sitemap</a></li>
              <li><a href="#">FAQ</a></li>
              <li><a href="#">Events</a></li>
              <li><a href="#">Contact</a></li>
              <li><a href="#">Blog</a></li>
              <li><a href="#">Branches</a></li>
              <li><a href="#">Press Kits</a></li>
            </ul>
          </div>
          <!-- Footer Widget Ends -->

          <!-- Footer Widget Starts -->
          <div class="footer-widget col-md-6 col-lg-3 col-xs-12">
            <h3 class="small-title">
              Popular Posts
            </h3>
            <ul class="image-list">
              <li>
                <figure class="overlay">
                  <img class="img-fluid" src="/images/art/a1.jpg" alt="">
                </figure>
                <div class="post-content">
                  <h6 class="post-title"> <a href="blog-single.html">Business Management Tutorials</a> </h6>
                  <div class="meta">
                    <span class="date">5 Comments</span>
                  </div>
                </div>
              </li>
              <li>
                <figure class="overlay">
                  <img class="img-fluid" src="/images/art/a2.jpg" alt="">
                </figure>
                <div class="post-content">
                  <h6 class="post-title"><a href="blog-single.html">Top 10 Business Apps and Web Tools</a></h6>
                  <div class="meta">
                    <span class="date">2 Comments</span>
                  </div>
                </div>
              </li>
            </ul>
          </div>
          <!-- Footer Widget Ends -->

          <!-- Footer Widget Starts -->
          <div class="footer-widget col-md-6 col-lg-3 col-xs-12">
            <h3 class="small-title">
              Newsletter
            </h3>
            <form>
              <input type="text" placeholder="Email here">
              <button type="submit"><i class="fa fa-paper-plane-o"></i></button>
            </form>
            <div class="flicker-gallery">
              <h3 class="small-title">
                Instagram
              </h3>
              <a href="#" title="Pan Masala"><img src="/images/flicker/img1.jpg" alt=""></a>
              <a href="#" title="Sports Template for Joomla"><img src="/images/flicker/img2.jpg" alt=""></a>
              <a href="" title="Apple Keyboard"><img src="/images/flicker/img3.jpg" alt=""></a>
            </div>
          </div><!-- Footer Widget Ends -->
        </div><!-- Row Ends -->
      </div><!-- Container Ends -->
      
      <!-- Copyright -->
      <div id="copyright">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-sm-6">
              <p class="copyright-text">
                Â© 2018 Engage All right reserved, Designed by <a href="#">GrayGrids</a>
              </p>
            </div>
            <div class="col-md-6 col-sm-6">
              <div class="social-footer text-right">
                <a href="#"><i class="fa fa-facebook icon-round"></i></a>
                <a href="#"><i class="fa fa-twitter icon-round"></i></a>
                <a href="#"><i class="fa fa-linkedin icon-round"></i></a>
                <a href="#"><i class="fa fa-google-plus icon-round"></i></a>
              </div>       
            </div>
          </div>
        </div>
      </div>
      <!-- Copyright  End-->
      
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