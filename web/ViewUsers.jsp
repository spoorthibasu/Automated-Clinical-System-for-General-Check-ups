<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Ustora Demo</title>
        <script src="../js/jquery.js" type="text/javascript"></script>
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
            $(document).ready(function() {
                UserDetails();
            });
            function  UserDetails()
            {

                $.ajax({
                    url: '../viewusersdetails',
                    type: 'POST',
                    dataType: 'json',
                    success: function(data, textStatus, jqXHR) {
                        var temp = $.parseJSON(data.userdetails);
                        var ud = '';
                        var count = 1;
                        $.each(temp, function(idx, obj) {
                            var v = $.parseJSON(obj.id);
                            if (obj.isactive == '0')
                            {
                                ud += "<tr class=\"info\">" +
                                        "<td>" + (count++) + "</td>" +
                                        "<td>" + obj.uname + "</td>" +
                                        "<td>" + obj.uemail + "</td>" +
                                        "<td>" + obj.uaddress + "</td>" +
                                        "<td>" + obj.uphone + "</td>" +
                                        "<td>" + obj.dob + "</td>" +
                                        "<td><a href=\"Accept.jsp?id=" + v.$oid + "&uname=" + obj.uname + "&uemail=" + obj.uemail + "\">Accept</a></td>"
                                "</tr>";
                            }
                        });
                        $(".usersdata").append(ud);
                    }

                })
            }
        </script>
    </head>
    <body>
        <%
            String res = request.getParameter("res");
            if (res == "Success") {
        %>
        <script>
            alert("Success");
        </script>
        <% } else if(res == "Failure") {%>
        <script>
            alert("Failure");
        </script>
        <%}%>
        <br>
        <%@include file="adminheader.jsp" %>
        <div>  
            <center>
                <h1 style="color:white;text-decoration: underline"><b>Users details</b></h1>
            </center>
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <table class="table">
                        <thead>
                            <tr class="danger">
                                <th>SI No</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Address</th>
                                <th>Phone</th>                           
                                <th>DOB</th>
                                <th>Accept </th>

                            </tr>
                        </thead>
                        <tbody class="usersdata">

                        </tbody>
                    </table>
                </div>
                <div class="col-md-1"></div>

            </div>
        </div>
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