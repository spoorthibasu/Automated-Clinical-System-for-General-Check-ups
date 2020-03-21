<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Ustora Demo</title>

        <!-- Google Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

        <!-- Bootstrap -->
        <link rel="stylesheet" href="../css/bootstrap.min.css">

        <!-- Font Awesome -->
        <link rel="stylesheet" href="../css/font-awesome.min.css">

        <!-- Custom CSS -->
        <link rel="stylesheet" href="../css/owl.carousel.css">
        <link rel="stylesheet" href="../style.css">
        <link rel="stylesheet" href="../css/responsive.css">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script>
            function validate1()
            {
                var aname = document.forms["myForm1"]["userEmail"].value;
                var apass = document.forms["myForm1"]["userPass"].value;
                //   var dept = document.forms["myForm"]["gname"].value;

                /*    if(dept == "Select Department"){
                 alert("Please Select the department...!!!");
                 return false;
                 } */

                if (aname == "" || aname == null)
                {
                    alert("Name is mandatory field");
                    return false;
                }

                if (apass == "" || apass == null)
                {
                    alert("Password is mandatory field");
                    return false;
                }
            }
            function validate()
            {

                var uname = document.forms["myForm"]["uname"].value;
                var upass = document.forms["myForm"]["upass"].value;
                var uemail = document.forms["myForm"]["uemail"].value;
                var uaddress = document.forms["myForm"]["uaddress"].value;
                var uphone = document.forms["myForm"]["uphone"].value;
                var dob = document.forms["myForm"]["dob"].value;
                var expr = /^[a-zA-Z]+$/;
                if (uname == "" || uname == null)
                {
                    alert(" Name is mandatory field");
                    return false;
                }
                else if (!uname.match(expr))
                {
                    alert("Name should be alphabets");
                    return false;
                }
                if (upass == "" || upass == null)
                {
                    alert("Password is mandatory field");
                    return false;
                }
                else if (upass.length < 6 || upass.length > 10)
                {
                    alert("Password should be 6 to 10 digits");
                    return false;
                }


                if (uemail == "" || uemail == null)
                {
                    alert("Email id is mandatory field");
                    return false;
                }

                var atpos = uemail.indexOf("@");
                var dotpos = uemail.lastIndexOf(".");
                if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= uemail.length)
                {
                    alert("Not a valid e-mail address");
                    return false;
                }
                if (uaddress == "" || uaddress == null)
                {
                    alert("Address is mandatory field");
                    return false;
                }

                if (uphone.length != 10)
                {
                    alert("Not a valid Phone number");
                    return false;
                }



                if (dob == "" || dob == null)
                {
                    alert("Date is mandatory field");
                    return false;
                }
            }

        </script>
    </head>
    <body>
        <%
            String res = request.getParameter("res");
            if (res != null) {

        %>
        <script>
            alert("Registration Success");
        </script>
        <%}%>
        <br>

        <div class="mainmenu-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <div class="logo">
                            <h1><img src="../img/logo.png"></h1>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div> 
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li><a href="../index.jsp"><i class="fa fa-home"></i>Home</a></li>
                                <li class="active"><a href="../users/registration.jsp"><i class="fa fa-users"></i>Sign Up</a></li>
                                <li><a href="../admin/adminlogin.jsp"><i class="fa fa-male"></i>Admin</a></li>
                                <li><a href="../users/Login.jsp"><i class="fa fa-sign-in"></i>Login</a></li>
                            </ul>
                        </div>  
                    </div>
                </div>
            </div>
        </div> <!-- End mainmenu area -->
        <br>
        <br>
        <!--Add code here-->
        <div>
            <div class="container">  
                <div class="mainbox col-md-3"></div>
                <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 ">                    
                    <div class="panel panel-info" >
                        <div class="panel-heading">
                            <div class="panel-title">Sign Up</div>

                        </div>     

                        <div style="padding-top:30px" class="panel-body" >

                            <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                            <form id="loginform" class="form-horizontal" action="../UserReg" method="post" name="myForm" onsubmit="return validate()" >

                                <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input id="login-username" type="text" class="form-control" name="uname" value="" placeholder="username">                                        
                                </div>

                                <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <input id="login-password" type="password" class="form-control" name="upass" placeholder="password">
                                </div>
                                <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-inbox"></i></span>
                                    <input id="login-username" type="text" class="form-control" name="uemail" value="" placeholder="email">                                        
                                </div>

                                <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                    <input id="login-password" type="text" class="form-control" name="uaddress" placeholder="address">
                                </div>
                                <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                                    <input id="login-username" type="text" class="form-control" name="uphone" value="" placeholder="mobile">                                        
                                </div>

                                <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    <input id="login-password" type="date" class="form-control" name="dob" placeholder="date of birth">
                                </div>
                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div>
                                        <center>    <input type="submit" value="Register" style="color: black"></center>


                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Already have an account! 
                                            <a href="#" onClick="$('#loginbox').hide();
                                                    $('#signupbox').show()">
                                                Sign In Here
                                            </a>
                                        </div>
                                    </div>
                                </div>   
                            </form>     
                        </div>                     
                    </div>  
                </div>
                <div id="signupbox" style="display:none; margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Sign In</div>
                            <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide();
                                    $('#loginbox').show()">New User</a></div>
                        </div>  
                        <div class="panel-body" >
                            <form id="signupform" class="form-horizontal" role="form" action="../UserLogin" method="post" name="myForm1" onsubmit="return validate1()">

                                <div id="signupalert" style="display:none" class="alert alert-danger">
                                    <p>Error:</p>
                                    <span></span>
                                </div>
                                <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-inbox"></i></span>
                                    <input id="login-username" type="text" class="form-control" name="userEmail" value="" placeholder="email">                                        
                                </div>
                                <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <input id="login-password" type="password" class="form-control" name="userPass" placeholder="password">
                                </div>


                                <div class="form-group">
                                    <!-- Button -->                                        
                                    <div class="col-md-offset-3 col-md-9">
                                        <input type="submit" value="submit" style="color: black">
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
        <br>
        <br>
        <%@include file="../footer.jsp" %>


        <!-- Latest jQuery form server -->
        <script src="https://code.jquery.com/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js" type="text/javascript"></script>
        <!-- Bootstrap JS form CDN -->
        <!--<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>-->

        <!-- jQuery sticky menu -->
        <script src="../js/owl.carousel.min.js"></script>
        <script src="../js/jquery.sticky.js"></script>

        <!-- jQuery easing -->
        <script src="../js/jquery.easing.1.3.min.js"></script>

        <!-- Main Script -->
        <script src="../js/main.js"></script>

        <!-- Slider -->
        <script type="text/javascript" src="../js/bxslider.min.js"></script>
        <script type="text/javascript" src="../js/script.slider.js"></script>
    </body>
</html>