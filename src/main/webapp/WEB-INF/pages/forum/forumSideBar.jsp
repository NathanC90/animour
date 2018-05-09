<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="col-md-3">
          <div class="sidebar-area">
            <!-- Search Bar -->
            <aside class="widget search-bar wow fadeIn" data-wow-delay="0.3s">
              <form name="searchForm" action="/forum/search" method="GET">
                <input type="text" name="search" placeholder="SearchBySubject" class="form-control" value="">
                <input type="hidden" name="pageNo" value="1">
                <button type="submit">
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
                        <a href="/forum/findOne?id=${pop.id}"><c:out value="${pop.subject}"/></a>
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
</body>
</html>