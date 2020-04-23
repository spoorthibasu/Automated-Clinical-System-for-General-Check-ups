<%@page import="com.dbutils.DBsingletone.DBsingletone"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

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
<!--                <section class="intro_section page_mainslider">
                    <div class="flexslider">
                        <ul class="slides">
                            <li>
                                <img src="../images/slide01.jpg" alt="">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="slide_description_wrapper">
                                                <div class="slide_description highlight">
                                                    <div class="intro-layer" data-animation="fadeInLeft">
                                                        <p class="yantramanov text-uppercase fontsize_35">
                                                            Empowering People
                                                        </p>
                                                    </div>
                                                    <div class="intro-layer" data-animation="fadeInRight">
                                                        <p class="text-uppercase yantramanov big">
                                                            to Improve Their Lives
                                                        </p>
                                                    </div>
                                                </div>
                                                 eof .slide_description 
                                            </div>
                                             eof .slide_description_wrapper 
                                        </div>
                                         eof .col-* 
                                    </div>
                                     eof .row 
                                </div>
                                 eof .container 
                            </li>
                            <li>
                                <img src="../images/slide02.jpg" alt="">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="slide_description_wrapper">
                                                <div class="slide_description highlight">
                                                    <div class="intro-layer" data-animation="fadeInLeft">
                                                        <p class="yantramanov text-uppercase fontsize_35">
                                                            Higher standards
                                                        </p>
                                                    </div>
                                                    <div class="intro-layer" data-animation="fadeInRight">
                                                        <p class="text-uppercase yantramanov big">
                                                            of care every day
                                                        </p>
                                                    </div>
                                                </div>
                                                 eof .slide_description 
                                            </div>
                                             eof .slide_description_wrapper 
                                        </div>
                                         eof .col-* 
                                    </div>
                                     eof .row 
                                </div>
                                 eof .container 
                            </li>
                            <li>
                                <img src="../images/slide03.jpg" alt="">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="slide_description_wrapper">
                                                <div class="slide_description highlight">
                                                    <div class="intro-layer" data-animation="fadeInLeft">
                                                        <p class="yantramanov text-uppercase fontsize_35">
                                                            Leading the way
                                                        </p>
                                                    </div>
                                                    <div class="intro-layer" data-animation="fadeInRight">
                                                        <p class="text-uppercase yantramanov big">
                                                            to better healthcare
                                                        </p>
                                                    </div>
                                                </div>
                                                 eof .slide_description 
                                            </div>
                                             eof .slide_description_wrapper 
                                        </div>
                                         eof .col-* 
                                    </div>
                                     eof .row 
                                </div>
                                 eof .container 
                            </li>
                        </ul>
                    </div>
                     eof flexslider 
                </section>-->
                <h1  style="color:#000">Welcome <span  style="color:blue">
                        <%
                            String uemail = (String) session.getAttribute("dname");
                            if (uemail != null) {
                                out.print(uemail);
                            }
                        %>
                    </span> </h1>


                <section class="ls section_padding_top_150 section_padding_bottom_120 features">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-offset-4 col-md-8">
                                <div class="form-style-9">


                                    <%
                                        DBsingletone dbs1 = DBsingletone.getDbSingletone();
                                        Connection con1 = dbs1.getConnection();
                                        System.out.println("Connection Ok");
                                        Object did = (Object) session.getAttribute("did");
                                        PreparedStatement stmt11 = con1.prepareStatement("select * from doctorreg where did='" + did + "'");
                                        ResultSet rs = stmt11.executeQuery();
                                        while (rs.next()) {
                                    %>
                                    <form action="../EditProfile">
                                        <ul>
                                            <li>
                                                <h1>Edit Profile</h1>

                                            </li>
                                            <li>
                                                <span>Name</span>
                                                <input type="text"   class="field-style field-full align-none" name="name" value="<%=rs.getString("dname")%>" id="name" placeholder="User Name" readonly="">
                                            </li>
                                            <li>
                                                <span>Specialization</span>
                                                <input type="text"  class="field-style field-full align-none" name="spec" value="<%=rs.getString("dspec")%>" id="city" placeholder="Addres" />
                                            </li>
                                            <li>
                                                <span>Phone</span>
                                                <input type="text"  class="field-style field-full align-none" name="Contatct" id="Contatct" value="<%=rs.getString("dphone")%>" placeholder="Contatct Number" />
                                            </li>
                                            <li>
                                                <span>Email</span>
                                                <input type="text"  readonly="" class="field-style field-full align-none" name="Email" value="<%=rs.getString("demail")%>" id="Email" placeholder="Email" />
                                            </li>
                                            <li>
                                                <span>Address</span>
                                                <input type="text"  class="field-style field-full align-none" name="Address" value="<%=rs.getString("address")%>" id="city" placeholder="Addres" />
                                            </li>
                                            <li>
                                                <span>City</span>
                                                <input type="text"  class="field-style field-full align-none" name="city" value="<%=rs.getString("dcity")%>" id="city" placeholder="city" />
                                            </li>
                                            <li>
                                                <span>Pincode</span>
                                                <input type="text"  class="field-style field-full align-none" value="<%=rs.getString("pincode")%>" name="Pincode" id="Pincode" placeholder="Pincode" />
                                            </li>
                                            <%}%>


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
