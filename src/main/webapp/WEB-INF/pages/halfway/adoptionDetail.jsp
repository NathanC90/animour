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
                            <h1 class="section-title text-left">CONTACT WITH US</h1>
                            <p class="section-subcontent mb-30 text-left">At vero eos et accusamus et iusto odio dignissimos ducimus qui
                                <br> blanditiis praesentium</p>
                            <form method="post" role="form" class="mt-30 shake" id="contactForm" name="contact-form" data-toggle="validator">
                                <div class="row">
                                    <div class="col-md-6">
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
                                    <div class="col-md-6">
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

                        <div class="col-md-4 clearfix">
                            <div id="google-map-contact2"></div>
                            <div class="contact-info2 mt-30">
                                <h2 class="small-title">Contact Info</h2>
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

        </body>

        </html>