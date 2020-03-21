<!DOCTYPE html>
<html class="no-js">
    <head>
        <title>Health Web</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/main.css" id="color-switcher-link">
        <link rel="stylesheet" href="css/animations.css">
        <link rel="stylesheet" href="css/fonts.css">
        <script src="js/vendor/modernizr-2.6.2.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <link href="css/reg.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
      
        <!-- wrappers for visual page editor and boxed version of template -->
        <div id="canvas">
            <div id="box_wrapper">

                <!-- template sections -->

                <%@include file="HeaderPage.jsp" %>
                


                <div style="">

                    <div class="form-style-9">

                        <form action="adminlogin" method="post">
                            <ul>
                                <li>
                                    <h5>Admin Login</h5>

                                </li>
                                <li>
                                    <input type="text"  class="field-style field-full align-none" name="aname" id="name" placeholder="User Name" />
                                </li>

                                <li>
                                    <input type="password"  class="field-style field-full align-none" name="apass" id="Password" placeholder="Password" />
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
            <!-- eof #box_wrapper -->
        </div>
        <!-- eof #canvas -->

        <script src="js/compressed.js"></script>
        <script src="js/main.js"></script>
        <script src="js/switcher.js"></script>

    </body>


    <!-- Mirrored from webdesign-finder.com/html/valeo/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 11 Mar 2017 09:42:05 GMT -->
</html>