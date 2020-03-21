<!DOCTYPE html>
<html class="no-js">
    <head>
        <title>Health Web</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/main.css" id="color-switcher-link">
        <link rel="stylesheet" href="../css/animations.css">
        <link rel="stylesheet" href="../css/fonts.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="../js/jquery-1.12.4.min.js" type="text/javascript"></script>
        <script src="../js/vendor/modernizr-2.6.2.min.js"></script>
        <link href="../css/reg.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!--        <div class="preloader">
                    <div class="preloader_image"></div>
                </div>-->
        <div id="canvas">
            <div id="box_wrapper">
                <%@include  file="Header.jsp" %>

                <h1 style="color:blue">
                    <%
                        String uemail = (String) session.getAttribute("demail");
                        if (uemail != null) {
                            out.print(uemail);
                        }
                    %>
                </h1>


                <section class="ls section_padding_top_150 section_padding_bottom_120 features">
                    <div class="container">
                        <h2 style="color:red">
                            <%
                                String res = request.getParameter("res");
                                if (res != null)
                                {
                                    out.println(res);
                                }
                            %>

                        </h2>

                        <div class="row">
                            <div class="col-md-offset-4 col-md-8">
                                <div class="form-style-9">

                                    <form action="../DChangePassword" method="post">
                                        <ul>
                                            <li>
                                                <h1>Change Password</h1>

                                            </li>
                                            <li>
                                                <input type="password"  class="field-style field-full align-none" name="cupass"   placeholder="Current Password" />
                                            </li>
                                            <li>
                                                <input type="password"  class="field-style field-full align-none" name="newpass"   placeholder="New Password" />
                                            </li>
                                            <li>
                                                <input type="password"  class="field-style field-full align-none" name="conpass"  placeholder="Confir Password" />
                                            </li>


                                            <li>
                                                <input type="submit" class="btn btn-primary"  style="background: #046a79;color: #fff;">
                                                <!--<button type="button" id="save" class="btn btn-primary"  style="background: #046a79;color: #fff;" onclick="submit1()" >Submit</button>--> 

                                            </li>
                                        </ul>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="ds ms section_padding_top_150 section_padding_bottom_100 page_services parallax">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1 text-center">
                                <h2 class="section_header highlight3">Our Medical Services</h2>
                                <p class="bold grey">
                                    Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae
                                </p>
                            </div>
                        </div>
                        <div class="row topmargin_50 columns_margin_bottom_60">
                            <div class="col-md-4 col-sm-6 text-center">
                                <div class="teaser">
                                    <img src="../images/cardio.png" alt="">
                                    <h4 class="grey">
                                        <a href="single-service.html">Cardio Monitoring</a>
                                    </h4>
                                    <p>
                                        These cases are perfectly simple and easy to distinguish a free hour when our power
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 text-center">
                                <div class="teaser">
                                    <img src="../images/medical.png" alt="">
                                    <h4 class="grey">
                                        <a href="single-service.html">Medical Treatment</a>
                                    </h4>
                                    <p>
                                        Fusce pellentesque lectus quis placerat ultrices malesuada est vitae urna laoreet porta
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 text-center">
                                <div class="teaser">
                                    <img src="../images/emergency.png" alt="">
                                    <h4 class="grey">
                                        <a href="single-service.html">Emergency Help</a>
                                    </h4>
                                    <p>
                                        Donec cursus tellus libero, non porttitor felis desluctus ut justo non odio molestie
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 text-center lg-clearfix">
                                <div class="teaser">
                                    <img src="../images/symptom.png" alt="">
                                    <h4 class="grey">
                                        <a href="single-service.html">Symptom Check</a>
                                    </h4>
                                    <p>
                                        Mauris consectetur dui eget ullamcorper mehendrerit eros ligula consectetur
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 text-center">
                                <div class="teaser">
                                    <img src="../images/laboratory.png" alt="">
                                    <h4 class="grey">
                                        <a href="single-service.html">Laboratory Test</a>
                                    </h4>
                                    <p>
                                        Pellentesque facilisis.sollicitudin justo non odio molestie, sed venenatis elit laoreet
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 text-center">
                                <div class="teaser">
                                    <img src="../images/general.png" alt="">
                                    <h4 class="grey">
                                        <a href="single-service.html">General Analysis</a>
                                    </h4>
                                    <p>
                                        Morbi sollicitudin justo non odio molestie sed venenatis elit laoreet
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="page_copyright cs main_bg_color table_section section_padding_35">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4 text-center text-sm-left">
                                <p class="small-text black">Valeo - medical clinic / health center &copy; 2016</p>
                            </div>
                            <div class="col-sm-4 text-center">
                                <div class="page_social darklinks">
                                    <a href="#" class="social-icon soc-facebook"></a>
                                    <a href="#" class="social-icon soc-twitter"></a>
                                    <a href="#" class="social-icon soc-youtube"></a>
                                    <a href="#" class="social-icon soc-google"></a>
                                </div>
                            </div>
                            <div class="col-sm-4 text-center text-md-right">
                                <p class="small-text black">Created with
                                    <i class="fa fa-heart-o highlight3"></i> by
                                    <a href="http://modernwebtemplates.com/">MWTemplates</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </section>

            </div>
            <!-- eof #box_wrapper -->
        </div>
        <!-- eof #canvas -->

        <script src="../js/compressed.js"></script>
        <script src="../js/main.js"></script>
        <script src="../js/switcher.js"></script>

    </body>


    <!-- Mirrored from webdesign-finder.com/html/valeo/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 11 Mar 2017 09:39:30 GMT -->
</html>