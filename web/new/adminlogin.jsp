<%-- 
    Document   : index
    Created on : Dec 9, 2014, 4:53:47 PM
    Author     : Vss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LRAP Home</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
         <script>
            function validate()
            {
                var nm = document.forms["myForm"]["username"].value;
                var pw = document.forms["myForm"]["password"].value;
               

                if (nm == "Select" || nm == null)
                {
                    alert("Name is mamndatory feild");
                    return false;
                }

                if (pw == "" || pw == null)
                {
                    alert("Must enter Some amount");
                    return false;
                }
               

                
            }
        </script>
        <!-- start header -->
         <div id="header">
            <div id="logo">
                <h1><a href="#">Health Care</a></h1>
                <h2><a href="" id="metamorph">Location Based Authentication System</a></h2>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="adminlogin.jsp">Login</a></li>
                  <!--  <li><a href="#">Photos</a></li>
                    <li><a href="#">About</a></li>-->
                  <li><a href="contactus.jsp">Contact Us</a></li>
                </ul>
            </div>	
            <!-- end header -->
        </div>
        <hr />
        <!-- start page -->
        <div id="page">
            <!-- start content -->
            <div id="content">
                <div class="post">
                   
                   
                    <div class="entry">
                       
                        <section class="container">
                            <div class="login"  style=" background-image:url(images/pattern_bg2.jpg);color: blue; font-size: 30px; font-weight: bold">
                   
                                <h1>Admin Login</h1>
                                <form name="myform" method="post" action="adminlogin" onsubmit="return validate()">
                                    <p><input type="text" name="username" value="" placeholder="Username"></p>
                                    <p><input type="password" name="password" value="" placeholder="Password"></p>
                                   
                                    <p class="submit"><input type="submit" name="commit" value="Login"></p>
                                </form>
                            </div>

                           
                        </section>

                    </div>
                </div>
            </div>
            <!-- end content -->
            <!-- start sidebar two -->

            <!-- end sidebar two -->
            <div style="clear: both;">&nbsp;</div>
        </div>
        <!-- end page -->
        <hr />
        <!-- start footer -->
        <div id="footer">
         <p>Copyright &copy; 2015. </p> 
        </div>
        <!-- end footer -->
    </body>
</html>

