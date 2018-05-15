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
            <title>Animal Shelter</title>
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

            <script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
            <style>
            </style>
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
                <jsp:include page="../navbar.jsp"></jsp:include>
            </header>
            <!-- Header-wrap Section End -->

            <!-- Page Header -->
            <div class="page-header-section">
                <div class="container">
                    <div class="row">
                        <div class="page-header-area">
                            <div class="page-header-content">
                                <h2>Contact Us 2</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Page Header End -->

            <section class="contact2-section section">


                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#imgOpts" aria-expanded="true" aria-controls="imgOpts">
                                Customize
                            </button>
                            <!--Collapse Start -->
                            <div id="imgOpts" class="collapse" style="background-color:rgb(248, 244, 192)">
                                <form autocomplete="off" class="mb-4 p-3">

                                    <div class="form-group row">
                                        <div class="col-sm-6">
                                            <label for="animationEffect">
                                                Open/close animation type
                                            </label>
                                            <select id="animationEffect" class="form-control">
                                                <option value="zoom">zoom</option>
                                                <option value="fade">fade</option>
                                                <option value="slide">slide</option>
                                                <option value="rotate">rotate</option>
                                                <option value="circular">circular</option>
                                                <option value="tube">tube</option>
                                                <option value="zoom-in-out">zoom-in-out</option>
                                                <option value="" style="font-style:italic;color:#888;">none</option>
                                            </select>
                                        </div>

                                        <div class="col-sm-6">
                                            <label for="transitionEffect">
                                                Transition effect between slides
                                            </label>
                                            <select id="transitionEffect" class="form-control">
                                                <option value="fade">fade</option>
                                                <option value="slide">slide</option>
                                                <option value="rotate">rotate</option>
                                                <option value="circular">circular</option>
                                                <option value="tube">tube</option>
                                                <option value="zoom-in-out">zoom-in-out</option>
                                                <option value="" style="font-style:italic;color:#888;">none</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-2">
                                            Buttons
                                        </label>

                                        <div class="col-md-10">

                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label">
                                                    <input class="form-check-input buttons" type="checkbox" value="slideShow"> Slideshow
                                                </label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label">
                                                    <input class="form-check-input buttons" type="checkbox" value="fullScreen"> Fullscreen
                                                </label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label">
                                                    <input class="form-check-input buttons" type="checkbox" value="zoom" checked="checked"> Zoom
                                                </label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label">
                                                    <input class="form-check-input buttons" type="checkbox" value="thumbs" checked="checked"> Thumbnails
                                                </label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label">
                                                    <input class="form-check-input buttons" type="checkbox" value="share"> Share
                                                </label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label">
                                                    <input class="form-check-input buttons" type="checkbox" value="download"> Download
                                                </label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label">
                                                    <input class="form-check-input buttons" type="checkbox" value="arrowLeft"> Left arrow
                                                </label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label">
                                                    <input class="form-check-input buttons" type="checkbox" value="arrowRight"> Right arrow
                                                </label>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-md-2">
                                            Elements
                                        </label>

                                        <div class="col-md-10">
                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input toggle" id="arrows" value="1" checked="checked"> Navigation arrows
                                                </label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input toggle" id="infobar" value="1" checked="checked"> Counter
                                                </label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label">
                                                    <input type="checkbox" class="form-check-input toggle" id="thumbs" value="1"> Thumbnails
                                                </label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group row mb-0">
                                        <label class="col-md-2">
                                            Translation
                                        </label>

                                        <div class="col-md-4">
                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="radio" name="lang" value="en" checked="checked"> English
                                                </label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="radio" name="lang" value="de"> German
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-6 text-right">
                                            <small>
                                                <a href="https://fancyapps.com/fancybox/3/docs/#options" target="_blank">
                                                    Full list of options
                                                </a>
                                            </small>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!--Collapse End -->


                            <form method="post" role="form" class="mt-30 shake" id="contactForm" name="contact-form" data-toggle="validator">
                                <div class="row" id="test">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="name" class="sr-only">Name</label>
                                            <input type="text" placeholder="Your Name" id="name" class="form-control contact-control" name="name" required data-error="Please enter your name">
                                            <div class="help-block with-errors"></div>
                                        </div>

                                        <div class="form-group">
                                            <label for="email" class="sr-only">Email</label>
                                            <input type="email" placeholder="Your Email" id="email" class="form-control contact-control" name="email" required data-error="Please enter your Email">
                                            <div class="help-block with-errors"></div>
                                        </div>

                                        <div class="form-group">
                                            <label for="subject" class="sr-only">Subject</label>
                                            <input type="text" placeholder="Your Subject" id="msg_subject" class="form-control contact-control" name="subject" required
                                                data-error="Please enter your message subject">
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <label for="message" class="sr-only">Message</label>
                                            <textarea placeholder="Your Message" rows="10" id="message" class="form-control" name="message" required data-error="Write your message"></textarea>
                                            <div class="help-block with-errors"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-xs-12">
                                    <button class="btn btn-common btn-lg btn-block" name="submit" id="form-submit" type="submit">
                                        <i class="fa fa-envelope"></i> Submit</button>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-4 contact-info-section">
                            <div class="contact-widget office-location">
                                <h2>聯絡資訊</h2>
                                <ul class="contact-info2">
                                    <li>
                                        <p>
                                            <strong>
                                                <i class="fa fa-map-marker"></i> Address:</strong> 2367 Nash Street , Dearborn, Michigan</p>
                                    </li>
                                    <li>
                                        <p>
                                            <strong>
                                                <i class="fa fa-envelope"></i> Mail Us:</strong>
                                            <a href="#">yourmail@gmail.com</a>
                                        </p>
                                    </li>
                                    <li>
                                        <p>
                                            <strong>
                                                <i class="fa fa-phone"></i> Phone:</strong> +313-240-4015</p>
                                    </li>
                                    <li>
                                        <p>
                                            <strong>
                                                <i class="fa fa-print"></i> Fax:</strong> +313-555-4015</p>
                                    </li>
                                </ul>
                            </div>
                            <div class="contact-widget office-location">
                                <h2>剩餘時間</h2>
                                <div class="btn btn-secondary mt-20 btn-lg" style="border-radius:8px; max-width:100%; margin:auto;">
                                    <h3 id="getting-started"></h3>
                                </div>
                                <p>
                                    <strong>
                                        <i class="fa fa-check"></i> 認養程序是否已經完成？</strong>
                                    <a href="#" data-toggle="collapse" data-target="#adoptionend" aria-expanded="true" aria-controls="imgOpts">按此處理</a>
                                </p>
                                <div class="contact-widget office-location" style="text-align:justify">

                                    <!--Collapse Start -->
                                    <div id="adoptionend" class="collapse">
                                        <button class="btn btn-common btn-lg" type="submit" id="form-submit">
                                            <i class="fa fa-check"></i> 認養程序完成</button>
                                        <button class="btn btn-secondary btn-lg" type="submit" id="form-submit">
                                            <i class="fa fa-envelope"></i> 檢舉</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <!-- Map Section Start -->
            <section id="google-map-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d48386.01851105055!2d-74.1037502833418!3d40.715239208761574!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c250d225bfafdd%3A0x249f013a2cd25d9!2sJersey+City%2C+NJ%2C+USA!5e0!3m2!1sen!2sbd!4v1515953312959"
                                width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Map Section End -->

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
            <script src="/js/jquery.countdown.js"></script>

            <script>
                $(document).ready(function () {
                    $('#socialicon').append(icon);
                    $('#test').append(test);


                });
                // let test = ` <div class="col-md-6">
                //                         <div class="form-group">
                //                             <label for="name" class="sr-only">Name</label>
                //                             <input type="text" placeholder="Your Name" id="name" class="form-control contact-control" name="name" required data-error="Please enter your name">
                //                             <div class="help-block with-errors"></div>
                //                         </div>

                //                         <div class="form-group">
                //                             <label for="email" class="sr-only">Email</label>
                //                             <input type="email" placeholder="Your Email" id="email" class="form-control contact-control" name="email" required data-error="Please enter your Email">
                //                             <div class="help-block with-errors"></div>
                //                         </div>

                //                         <div class="form-group">
                //                             <label for="subject" class="sr-only">Subject</label>
                //                             <input type="text" placeholder="Your Subject" id="msg_subject" class="form-control contact-control" name="subject" required
                //                                 data-error="Please enter your message subject">
                //                             <div class="help-block with-errors"></div>
                //                         </div>
                //                     </div>`;
                let icon = ` <a href="#">
                                    <i class="fa fa-facebook icon-round icon-xs"></i>
                                </a>
                                <a href="#">
                                    <i class="fa fa-twitter icon-round icon-xs"></i>
                                </a>
                                <a href="#">
                                    <i class="fa fa-linkedin icon-round icon-xs"></i>
                                </a>
                                <a href="#">
                                    <i class="fa fa-google-plus icon-round icon-xs"></i>
                                </a>
                                <a href="#">
                                    <i class="fa fa-github icon-round icon-xs"></i>
                                </a>`




            </script>
            <script type="text/javascript">
                $("#getting-started")
                    .countdown("2018/06/01", function (event) {
                        $(this).text(
                            event.strftime('%D天 %H時 %M分 %S秒')
                        );
                    });
            </script>
        </body>

        </html>