<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Insert title here</title>
      <!-- <style>
  .featured-wrapper img {
  /* width: 100px; */
  height: 350px;
}
</style> -->

    </head>

    <body>
      <div class="col-md-3">
        <div class="sidebar-area">
          <!-- Search Bar -->
          <aside class="widget search-bar wow fadeIn" data-wow-delay="0.3s">
            <form name="searchForm"></form>
            <input id="search" type="text" name="search" placeholder="SearchBySubject" class="form-control" value="">
            <button id="searchbtn" type="button">
              <i class="fa fa-search"></i>
            </button>
            </form>
          </aside>
          <!-- Text Widgets -->
          <!--             <aside class="widget text-widgets wow fadeIn" data-wow-delay="0.3s"> -->
          <!--               <h2 class="widget-title">Text Widget</h2> -->
          <!--               <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur dolorem fuga ad corrupti, ullam, eos natus, -->
          <!--                 repellat officiis sit labore a aspernatur quisquam. In, unde.</p> -->
          <!--             </aside> -->

          <aside class="widget subscribe-widget wow fadeIn" data-wow-delay="0.3s">
            <h2 class="widget-title">Post Somthing</h2>
            <div class="subscribe-area">
              <p></p>
              <form class="form-group" name="Post" action="/postArticle" method="GET">
                <button type="submit" class="mt-10 btn btn-common btn-block">Post</button>
              </form>
            </div>
          </aside>
          <!-- Recent Post Widgets -->
          <aside class="widget popular-post wow fadeIn" data-wow-delay="0.3s">
            <h2 class="widget-title">Popular Post</h2>
            <ul>
              <c:forEach var="pop" items="${popular}">
                <li>
                  <div class="media">
                    <div class="media-left">
                      <a href="#">
                        <img class="img-responsive" src="/images/blog/avatar/avatar1.jpg" alt="">
                      </a>
                    </div>
                    <div class="media-body">
                      <h4>
                        <a href="/forum/findOne?id=${pop.id}">
                          <c:out value="${pop.subject}" />
                        </a>
                      </h4>
                      <span class="published-time">
                        <i class="fa fa-calendar"></i>${pop.updateTime}</span>
                    </div>
                  </div>
                </li>
              </c:forEach>
            </ul>
          </aside>
          <!-- Category -->
          <aside class="widget flickr-widget wow fadeIn" data-wow-delay="0.3s">
            <h2 class="widget-title">Category</h2>
            <ul class="category-menu">
              <c:forEach var="category" items="${categorys}">
                <li name="category" value="${category.id}" style='cursor:pointer;'>
                  ${category.name}(${category.articleQuantity})
                </li>
              </c:forEach>
            </ul>
          </aside>

          <!-- Subscribe Widget -->
          <!--             <aside class="widget subscribe-widget wow fadeIn" data-wow-delay="0.3s"> -->
          <!--               <h2 class="widget-title">Subscribe</h2> -->
          <!--               <div class="subscribe-area"> -->
          <!--                 <p>Subscribe to our news latter to get regular update and blog posts.</p> -->
          <!--                 <form class="form-group"> -->
          <!--                   <div class="input-group"> -->
          <!--                     <input type="email" class="form-control input-block-level" placeholder="hello@youremail.com"> -->
          <!--                   </div> -->
          <!--                   <button type="submit" class="mt-10 btn btn-common btn-block">Subscribe</button> -->
          <!--                 </form> -->
          <!--               </div> -->
          <!--             </aside> -->
          <!-- Tag Cloud -->
          <!--             <aside class="widget tag-cloud wow fadeIn" data-wow-delay="0.3s"> -->
          <!--               <h2 class="widget-title">Tag clouds</h2> -->
          <!--               <div class="clearfix"> -->
          <!--                 <ul> -->
          <!--                   <li> -->
          <!--                     <a href="#">Download</a> -->
          <!--                   </li> -->
          <!--                   <li> -->
          <!--                     <a href="#">PSD</a> -->
          <!--                   </li> -->
          <!--                   <li> -->
          <!--                     <a href="#">Coding</a> -->
          <!--                   </li> -->
          <!--                   <li> -->
          <!--                     <a href="#">UI</a> -->
          <!--                   </li> -->
          <!--                   <li> -->
          <!--                     <a href="#">Sublime</a> -->
          <!--                   </li> -->
          <!--                   <li> -->
          <!--                     <a href="#">Web Design</a> -->
          <!--                   </li> -->
          <!--                   <li> -->
          <!--                     <a href="#">Hosting</a> -->
          <!--                   </li> -->
          <!--                   <li> -->
          <!--                     <a href="#">Design</a> -->
          <!--                   </li> -->
          <!--                   <li> -->
          <!--                     <a href="#">Arts</a> -->
          <!--                   </li> -->
          <!--                   <li> -->
          <!--                     <a href="#">Marketing</a> -->
          <!--                   </li> -->
          <!--                   <li> -->
          <!--                     <a href="#">Technology</a> -->
          <!--                   </li> -->
          <!--                 </ul> -->
          <!--               </div> -->
          <!--             </aside> -->
        </div>
      </div>
      <!-- End -->
      <script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
      <script>
        var pageNo = 1;
        var articlesString = "";
        var scroll = true;
        var flag = 0;
        var categoryId = 0;
        var search = "";

        $(document).ready(function () {
          $("li[name='category']").click(function () {
            pageNo = 1;
            flag = 1;
            categoryId = $(this).val();
            articlesString = "";
            scroll = true;
            // $("#show").empty();
            console.log(flag);
            console.log(categoryId);
            refresh();
          });

          $('#search').keydown(function (event) {
            if (event.keyCode == 13) {
              $("#searchbtn").click();
            }
          });

          $("#searchbtn").click(function () {
            pageNo = 1;
            flag = 2;
            articlesString = "";
            search = $('#search').val();
            scroll = true;
            // $("#show").empty();
            console.log(flag);
            console.log(search);
            refresh();
          });

          $(window).scroll(function () {
            var window_height = $(window).height();
            var window_scrollTop = $(window).scrollTop();
            // 			  var div_height = $(document).height();
            var div_height = $("#bloglist").height();
            // console.log(window_height);
            // console.log(window_scrollTop);
            // console.log(div_height);
            if (window_height + window_scrollTop >= div_height && scroll == true) {
              scroll = false;
              refresh();
              setTimeout(setScroll, 1000);
            }
          });
        });

        function setScroll() {
          scroll = true;
        }
        function refresh() {
          if (flag === 0) {
            getArticle();
          } else if (flag === 1) {
            getArticleByCategoryId(categoryId);
          } else if (flag === 2) {
            getArticleBySubject(search);
          }
        }
        function getArticle() {
          var url = "/articles";
          getJson(url)
        }

        function getArticleByCategoryId(categoryId) {
          var url = "/articles/category/" + categoryId;
          getJson(url)
        }
        function getArticleBySubject(search) {
          var url = "/articles/search/" + search;
          getJson(url)
        }

        function getJson(url) {
          $.getJSON(url, { "pageNo": pageNo }, function (datas) {
            if (datas != null) {
              if (pageNo <= datas[0].totalPage) {
                $.each(datas, function (idx, article) {
                  var articleString = '<article class="blog-post-wrapper wow fadeIn" data-wow-delay="0.3s"><header class="author-info"><h2 class="blog-post-title"><a href="/forum/findOne?id=' + article.id + '">' + article.subject
                    + '</a></h2><div class="tag-posted-in"><ul class="list-unstyled"><li><i class="fa fa fa-calendar"></i><a href="#">' + new Date(article.postTime)
                    + '</a></li><li><i class="fa fa-user"></i><a href="#">' + article.member.account
                    + '</a></li><li><i class="fa fa-pencil-square-o"></i><a href="#">' + article.category.name
                    + '</a></li><li><i class="fa fa-comments"></i><a href="#">' + article.commentLength
                    + 'comment</a></li></ul></div></header><section class="featured-wrapper"><a href="#"><img src="/images/adopt/cats/ad-cat1.jpg" alt=""></a></section><section class="blog-post-content" ><div class="blog-post"><p style="overflow:hidden;display:-webkit-box;-webkit-box-orient:vertical;-webkit-line-clamp:3;line-height:24px;height:72px;">' + article.content
                    + '</p></div></section><div class="blog-post-footer clearfix"><ul class="post-meta pull-right">'
                    + '<li><span><a href="findOne?id=' + article.id + '"><i class="fa fa-comments"></i>' + article.commentLength + '</a></span></li>'
                    + '<li id="thumb' + article.id + '"><form id="thumbsform' + article.id + '" enctype="multipart/form-data"><input name="article" type="hidden" value="' + article.id + '"/></form><span id="span' + article.id + '"><i class="fa fa-thumbs-up"></i>' + article.thumbsQuantity + '</span></li>'
                    + '<li><span><a href="#"><i class="fa fa-share"></i> Share</a></span></li>'
                    + '</ul><a href="/forum/findOne?id=' + article.id
                    + '" class="pull-left btn btn-common btn-xs">Read more</a></div></article>';
                  articlesString = articlesString + articleString;
                });
                pageNo += 1;
                $("#show").html(articlesString);

                $.each(datas, function (idx, article) {
                  var btnSelector = "#thumb" + article.id;
                  var formSelector = "thumbsform" + article.id;
                  var spanSelector = "#span" + article.id;

                  $(btnSelector).click(function () {
                    var formData = new FormData(document.getElementById(formSelector));
                    console.log(formData);
                    $.ajax({
                      type: "POST",
                      url: "/articles/thumbsUp",
                      data: formData,
                      contentType: false,
                      processData: false
                      // async:false
                    }).done(function (data) {
                      $.each(data, function (idx, thumbsUp) {
                        console.log(thumbsUp);
                        $(spanSelector).html('<i class="fa fa-thumbs-up"></i>' + thumbsUp.article.thumbsQuantity);
                      });
                    });
                  });
                });

              }
              console.log(datas);
            }
          });
        }

      </script>
    </body>

    </html>