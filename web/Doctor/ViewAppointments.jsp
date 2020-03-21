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
                
                <h1 style="color:blue">
                    <%
                        String uemail = (String) session.getAttribute("demail");
                        if (uemail != null) {
                            out.print(uemail);
                        }
                    %>
                </h1>



                <section class="ls section_padding_150 columns_margin_0">
                 
                    <div class="container">
                        <div class="row">
                              <h1>Appointments Requested</h1>
                            <div class="col-sm-12">
                                <form  action="../UpdateAppTime" >
                                    <table class="table_template greylinks margin_0" id="timetable">
                                        <thead>
                                            <tr>
                                                <th>SL No</th>
                                                <th>Patient Name</th>
                                                <th>Problem</th>
                                                <th>Appointment Request Date and Time</th>
                                                <th>Set Time</th>
                                                <th>Submit</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                                int count = 1;
                                                DBsingletone dbs1 = DBsingletone.getDbSingletone();
                                                Connection con1 = dbs1.getConnection();
                                                Object did=session.getAttribute("did");
                                                System.out.println("Connection Ok");
                                                String pname = (String)session.getAttribute("pname");
                                                PreparedStatement stmt11 = con1.prepareStatement("select * from appointment where did='"+did+"' and isactive=0");
                                                ResultSet rs = stmt11.executeQuery();
                                                while (rs.next()) {
                                            %>
                                            <tr>
                                                <td><%=count++%></td>
                                                <td><%=pname%></td>
                                                <td><%=rs.getString("problem")%></td>
                                                <td><%=rs.getString("cdate")%><input type="text" name="Aid" value="<%=rs.getInt("Aid")%>" style="display: none"></td>
                                                <td><input type="time"  name="atime"></td>
                                                <td><input type="submit"></td>



                                            </tr>
                                            <%}%>




                                        </tbody>
                                    </table>
                                </form>
                            </div>
                                            <hr><br><br><br>
                                            <h1>Appointments Granted</h1>
                                            <div class="col-sm-12">
                                <form  action="../UpdateAppTime" >
                                    <table class="table_template greylinks margin_0" id="timetable">
                                        <thead>
                                            <tr>
                                                <th>SL No</th>
                                                <th>Patient Name</th>
                                                <th>Problem</th>
                                                <th>Appointment Request Date and Time</th>
                                                <th>Set Time</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                         
                                                int count1 = 1;
                                                DBsingletone dbs11 = DBsingletone.getDbSingletone();
                                                Connection con11 = dbs11.getConnection();
                                                PreparedStatement stmt111 = con11.prepareStatement("select * from appointment where did='"+did+"' and isactive=1");
                                                ResultSet rs1 = stmt111.executeQuery();
                                                while (rs1.next()) {
                                            %>
                                            <tr>
                                                <td><%=count1++%></td>
                                                <td><%=pname%></td>
                                                <td><%=rs1.getString("problem")%></td>
                                                <td><%=rs1.getString("cdate")%></td>
                                                <td><%=rs1.getString("atime")%></td>



                                            </tr>
                                            <%}%>




                                        </tbody>
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
            </div>
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
        <script src="../js/compressed.js"></script>
        <script src="../js/main.js"></script>
        <script src="../js/switcher.js"></script>

    </body>


    <!-- Mirrored from webdesign-finder.com/html/valeo/ by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 11 Mar 2017 09:39:30 GMT -->
</html>