<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <!doctype html>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>test johns</title>
        </head>

        <body>
            <footer>
                <!-- Container Starts -->
                <div class="container">
                    <!-- Row Starts -->
                    <div class="row section">
                        <!-- Footer Widget Starts -->
                        <div class="footer-widget col-md-6 col-lg-3 col-xs-12">
                            <h3 class="small-title">About Us</h3>
                            <p></p>
                            <ul class="mb-3">
                                <!-- 						<li><i class="fa fa-map-marke"></i></li> -->
                                <!-- 						<li><i class="fa fa-phone"></i></li> -->
                                <!-- 						<li><i class="fa fa-phone"></i></li> -->
                            </ul>
                        </div>
                        <!-- Footer Widget Ends -->

                        <!-- Footer Widget Starts -->
                        <div class="footer-widget col-md-6 col-lg-3 col-xs-12">
                            <h3 class="small-title">Quick Links</h3>
                            <ul class="menu">
                                <li>
                                    <a href="#">首頁</a>
                                </li>
                                <li>
                                    <a href="#">中途專區</a>
                                </li>
                                <li>
                                    <a href="#">最新活動專區</a>
                                </li>
                                <li>
                                    <a href="#">寵物市集</a>
                                </li>
                                <li>
                                    <a href="#">最新空房</a>
                                </li>
                                <li>
                                    <a href="#">醫院資訊專區</a>
                                </li>
                                <li>
                                    <a href="#">THE BLOG</a>
                                </li>
                            </ul>
                        </div>
                        <!-- Footer Widget Ends -->

                        <!-- Footer Widget Starts -->
                        <div class="footer-widget col-md-6 col-lg-3 col-xs-12">
                            <h3 class="small-title">Popular Posts</h3>
                            <ul class="image-list">
                                <li>
                                    <figure class="overlay">
                                        <img class="img-fluid" src="" alt="">
                                    </figure>
                                    <div class="post-content">
                                        <h6 class="post-title">
                                            <a href="blog-single.html"></a>
                                        </h6>
                                        <div class="meta">
                                            <span class="date"></span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <figure class="overlay">
                                        <img class="img-fluid" src="" alt="">
                                    </figure>
                                    <div class="post-content">
                                        <h6 class="post-title">
                                            <a href="blog-single.html"></a>
                                        </h6>
                                        <div class="meta">
                                            <span class="date"></span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- Footer Widget Ends -->

                        <!-- Footer Widget Starts -->
                        <div class="footer-widget col-md-6 col-lg-3 col-xs-12">
                            <h3 class="small-title">EMail Us</h3>
                            <form>
                                <input type="text" placeholder="Email here">
                                <button type="submit">
                                    <i class="fa fa-paper-plane-o"></i>
                                </button>
                            </form>
                            <div class="flicker-gallery">
                                <h3 class="small-title">Social Media Link</h3>
                                <a href="#" title="Pan Masala">
                                    <img src="/images/flicker/img1.jpg" alt="">
                                </a>
                                <a href="#" title="Sports Template for Joomla">
                                    <img src="/images/flicker/img2.jpg" alt="">
                                </a>
                                <a href="" title="Apple Keyboard">
                                    <img src="/images/halfway/halfwayindex.jpg" alt="">
                                </a>
                            </div>
                        </div>
                        <!-- Footer Widget Ends -->
                    </div>
                    <!-- Row Ends -->
                </div>
                <!-- Container Ends -->

                <!-- Copyright -->
                <div id="copyright">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <p class="copyright-text">
                                    © 2018 Animour All right reserved, Designed by
                                    <a href="#">iii-ee100</a>
                                </p>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="social-footer text-right">
                                    <a href="#">
                                        <i class="fa fa-facebook icon-round"></i>
                                    </a>
                                    <a href="#">
                                        <i class="fa fa-twitter icon-round"></i>
                                    </a>
                                    <a href="#">
                                        <i class="fa fa-linkedin icon-round"></i>
                                    </a>
                                    <a href="#">
                                        <i class="fa fa-google-plus icon-round"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Copyright  End-->

            </footer>
            <script>
                var pageNumber = 1;
                $(document).ready(function () {
                    initSubmitForm();
                });

                var initSubmitForm = function () {
                    // 使用 ajax() 來呼叫 REST API
                    var docFragment = $(document.createDocumentFragment());
                    $.getJSON('/salon/designers', { "pageNumber": pageNumber }, function (datas) {
                        $.each(datas, function (idx, designer) {
                            console.log(datas);
                            console.log(designer.designer);
                            // var fileName = animal.fileName;
                            // var img = $("<img />").attr({ 'src': '/showAnimalImage?fileName=' + fileName, 'width': '100px', 'alt': animal.id }).addClass('card-img-top');


                            // var p1 = $("<p></p>").attr({ 'style': 'padding: 0px' }).addClass('card-text').append(animal.status);
                            // var li1 = $("<li></li>").attr({ 'style': 'margin: 0px' }).append(['編號:' + animal.id]);
                            // var li2 = $("<li></li>").append(['綽號:' + animal.name]);
                            // var li3 = $("<li></li>").append(['種類:' + animal.specie]);
                            // var li4 = $("<li></li>").append(['發現日期:' + animal.found]);
                            // var li5 = $("<li></li>").append(['縣市:' + animal.city.name]);
                            // var ul = $("<ul></ul>").attr({ 'style': 'margin:0; padding:0; list-style:none;' }).append([li1, li2, li3, li4, li5]);
                            // var small = $("<small></small>").addClass('text-muted').append(animal.upload);

                            // var button1 = $("<button></button>").attr({ 'type': 'button', 'onclick': "location.href='/halfway/detail?id=" + animal.id + "'" }).addClass('btn btn-common btn-sm mt-10').append("詳情");
                            // var eachdiv5 = $("<div></div>").attr({ 'id': 'eachdiv5' }).addClass('btn-group').append(button1);
                            // var eachdiv4 = $("<div></div>").attr({ 'id': 'eachdiv4', 'width': 'max-height: 100px' }).addClass('d-flex justify-content-between align-items-center').append(eachdiv5);
                            // var eachdiv3 = $("<div></div>").attr({ 'id': 'eachdiv3' }).addClass('card-body').append([p1, ul, small, eachdiv4]);
                            // var eachdiv2 = $("<div></div>").attr({ 'id': 'eachdiv2' }).addClass('card mb-3 box-shadow').append([img, eachdiv3]);

                            // // 						console.log(datas)
                            // // 						var title = park.ParkName + "-"  + park.Name;
                            // // 						var img = $("<img />").attr('src',park.Image).addClass('thumb img-thumbnail');
                            // // 						var a = $("<a></a>").attr({'href':park.Image,'data-lightbox':'park','data-title':title}).append(img);
                            // var eachdiv1 = $("<div></div>").attr({ 'class': 'col-md-3', 'id': 'eachdiv1' }).append(eachdiv2);
                            // docFragment.append(eachdiv1);
                            console.log(animal.designer);
                        });
                        $('#each').append(docFragment);
                    }).done(function () {
                        //alert("有呼叫成功");
                        pageNumber++;
                        //判斷下一次取回的json是否為空(是否為最後一頁)
                        $.getJSON('/salon/designers', { "pageNumber": pageNumber }, function (datas) {
                            console.log(datas);
                            if (datas.length != 0) {
                                var buttonImport = $("<button></button>").attr({ 'type': 'button', 'id': 'importbutt', 'style': 'width: 100%' }).addClass('btn btn-common btn-sm mt-10').append("載入更多資料");
                                $('#each').append(buttonImport);
                                document.getElementById("importbutt").addEventListener("click", importAgain);
                            }
                        })
                    })
                };

                function importAgain() {
                    var buttonImport = $('#importbutt');
                    $('#importbutt').remove();
                    initSubmitForm();
                }
                // 	    $.ajax({
                // 	        "url": "/halfway/animal",
                // 	        "type": "GET",
                // 	        "dataType": "json",
                // 	        complete: function(data, textStatus, jqXHR) {
                // 	            console.log(textStatus);
                // 	        },
                // 	        success: function (data, textStatus, jqXHR) {
                // 	            console.log(data);
                // 	        }
                // 	    });
                // 	    return false;

            </script>


        </body>

        </html>