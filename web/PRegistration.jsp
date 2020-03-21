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
        <script src="js/jquery-1.12.4.min.js" type="text/javascript"></script>
        <link href="css/reg.css" rel="stylesheet" type="text/css"/>

    </head>

    <script>
        function  ValidateFun()
        {
          

            var name = $('#name').val();
            var Contatct = $('#Contatct').val();
            var Email = $('#Email').val();
            var Address = $('#Address').val();
            var Password = $('#Password').val();
            var Pincode = $('#Pincode').val();
            var city = $('#city').val();
            var a = Email.indexOf("@");
            var d = Email.lastIndexOf(".");

            if (name == "")
            {
                alert("Plz Enter name");
                return  false;

            }
            var reg = /^[A-Za-z]+$/;
            if (name.match(reg)) {
//                    return true;
            } else {
                alert("Enter Valid Username");
                return false;
            }

            if (Contatct.length > 10 || Contatct.length < 10)
            {
                alert("Phone Number should be  to 10 digit");
                return  false;
            }
            if (Email == "")
            {
                alert("Plz Enter Email ");
                return  false;
            }
            else if (a < 1 || d < (a + 2) || (d + 2) >= Email.length)
            {
                alert("not valid email");
                return  false;
            }
            else if (Address == "")
            {
                alert("Plz Enter Address ");
                return  false;
            }
            else if (Password == "")
            {
                alert("Plz Enter Password ");
                return  false;
            }
          
            
            else if (Pincode == "")
            {
                alert("Plz Enter Pincode ");
                 return  false;
            }
            else if (city == "")
            {
                alert("Plz Enter city ");
                 return  false;
            }


        }
    </script>

    <body>
        <%@include  file="HeaderPage.jsp" %>
        <div id="canvas">
            <div id="box_wrapper">
<!--                <header class="page_header header_color template_header subpage_header table_section toggle_menu_left">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="row cs rounded header-block">

                                    <div class="col-md-9">
                                         main nav start 
                                        <nav class="mainmenu_wrapper">
                                            <ul class="mainmenu nav sf-menu">
                                                <li class="active">
                                                    <a href="index.jsp">Home</a>
                                                </li>



                                            </ul>
                                        </nav>
                                         eof main nav 
                                        <span class="toggle_menu">
                                            <span></span>
                                        </span>
                                    </div>

                                    <div class="col-md-3 text-right">

                                        <div class="page_social greylinks">
                                            <a href="#" class="social-icon soc-facebook"></a>
                                            <a href="#" class="social-icon soc-twitter"></a>
                                            <a href="#" class="social-icon soc-youtube"></a>
                                            <a href="#" class="social-icon soc-google"></a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>-->


                <div style="">

                    <div class="form-style-9">
                        <form action="PRegister" onsubmit="return  ValidateFun()" method=" post">
                            <ul>
                                <li>
                                    <h2>Patient Register</h2>

                                </li>
                                <li>
                                    <input type="text"  class="field-style field-full align-none" name="name" id="name" placeholder="User Name" />
                                </li>
                                <li>
                                    <input type="text"  class="field-style field-full align-none" name="Contatct" id="Contatct" placeholder="Contatct Number" />
                                </li>
                                <li>
                                    <input type="text"  class="field-style field-full align-none" name="Email" id="Email" placeholder="Email" />
                                </li>
                                <li>
                                    <input type="text"  class="field-style field-full align-none" name="Address" id="Address" placeholder="Address" />
                                </li>
                                <li>
                                    <input type="password"  class="field-style field-full align-none" name="Password" id="Password" placeholder="Password" />
                                </li>
                               
                                <li>
                                    <input type="text"  class="field-style field-full align-none" name="age" id="Password" placeholder="Age" />
                                </li>
                                <li>
                                    <input type="text"  class="field-style field-full align-none" name="city" id="city" placeholder="city" />
                                </li>
                                <li>
                                    <input type="text"  class="field-style field-full align-none" name="pincode" id="Pincode" placeholder="Pincode" />
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