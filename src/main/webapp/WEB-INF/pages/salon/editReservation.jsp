<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

      <!doctype html>
      <html lang="en">

      <head>
        <!-- Required meta tags -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">

        <title>會員清單</title>
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

        <!-- style/css -->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.16/datatables.min.css" />
        <style>
        </style>
        <!-- style/css:end -->

      </head>

      <body>
        <!-- Header area wrapper starts -->
        <header id="header-wrap">
          <!-- Navbar Starts -->
          <jsp:include page="../navbar.jsp"></jsp:include>
          <!-- Navbar ends -->
        </header>

        <!-- Classic Blog Section -->
        <section class="classic-blog-section section">
          <div class="container">
            <div class="row">
              <!-- Blog Sidebar Section -->
              <div class="col-md-2">
                <div class="sidebar-area">
                  <!-- Search Bar -->
                  <aside class="widget search-bar wow fadeIn" data-wow-delay="0.3s">
                    <form>
                      <input type="text" placeholder="Search" class="form-control">
                      <button type="submit">
                        <i class="fa fa-search"></i>
                      </button>
                    </form>
                  </aside>
                  <!-- Text Widgets -->
                  <!-- Recent Post Widgets -->

                  <!-- Category -->
                  <aside class="widget flickr-widget wow fadeIn" data-wow-delay="0.3s">
                    <h2 class="widget-title">篩選項目</h2>
                    <ul class="category-menu">
                      <li>
                        <a href="#">#</a>
                      </li>
                      <li>
                        <a href="#"></a>
                      </li>
                      <li>
                        <a href="#"></a>
                      </li>
                      <li>
                        <a href="/login?logout">登出</a>
                      </li>
                    </ul>
                  </aside>
                  <!-- Subscribe Widget -->
                  <!-- Tag Cloud -->

                </div>
              </div>
              <!-- End -->

              <!-- BLog Article Section -->
              <div class="col-md-10">
                <!-- Single Blog Post -->
                <!-- 每頁不同的內容從這裡開始 -->

                <h3>Edit reservation sheet</h3>
                <sec:authorize access="hasRole('Member')">

                  <h3>你不是Admin!!</h3>

                </sec:authorize>

                <sec:authorize access="hasRole('Admin')">
                  <table id="table1" class="table table-bordered table-striped table-hover">

                    <thead>
                      <tr>
                        <th>編號</th>
                        <th>日期</th>
                        <th>項目</th>
                        <th>美容師</th>
                        <th>耗時</th>
                        <th>價錢</th>
                        <th>編輯</th>

                      </tr>
                    </thead>
                    <tbody>
                    </tbody>
                  </table>
                </sec:authorize>
                <!-- 每頁不同的內容到這裡結束 -->

              </div>
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
        <!-- (footer.jsp) -->
        <jsp:include page="../footer.jsp"></jsp:include>
        <!-- Footer Section End-->

        <!-- Go To Top Link -->
        <a href="#" class="back-to-top">
          <i class="fa fa-angle-up"> </i>
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
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
          crossorigin="anonymous"></script>
        <script>
          window.jQuery
            || document
              .write('<script src="/js/jquery-slim.min.js"><\/script>')
        </script>
        <script src="/js/popper.min.js"></script>
        <script src="/js/bootstrap.min.js"></script>
        <!-- 	<script src="/js/vendor/holder.min.js"></script> -->

        <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
        <script src="/js/jquery-3.3.1.min.js"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>

        <script>
          $(document).ready(function () {
            $.getJSON('/reservations', {}, function (data) {
              console.log(data);
              $('#table1>tbody').empty();
              $.each(data, function (i, reservation) {
                var cell1 = $("<td></td>").text(reservation.id);
                var cell2 = $("<td></td>").text(reservation.reservationDate);
                var cell3 = $("<td></td>").text(reservation.content);
                var cell4 = $("<td></td>").text(reservation.designer);
                var cell5 = $("<td></td>").text(reservation.totalTime);
                var cell6 = $("<td></td>").text(reservation.price);



                var cell10 = $("<td></td>").html('<button class="btn btn-danger" style="background-color: #dc3545; border-color: #dc3545";><i class="fas fa-trash-alt"/></button> <p> </p>  <button class="btn btn-info"><i class="fas fa-edit"></i></button>');

                var row = $('<tr></tr>').append([cell1, cell2, cell3, cell4, cell5, cell6, cell10]);

                $('#table1>tbody').append(row);
              });


            }
            )
          });
        </script>
      </body>

      </html>