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
                        String uemail = (String) session.getAttribute("uemail");
                        if (uemail != null) {
                            out.print(uemail);
                        }
                    %>
                </h1 >



                <section class="ls section_padding_150 columns_margin_0" >
                    <center>
                        <h1 style="margin-top: 0px">Search Near By Area Doctors</h1>
                    </center>
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <form action="BringDateWiseData.jsp">
                                    <table>
                                        <tr>
                                            <td>Choose-Doctor</td>
                                            <td><h1>  <input list="filename" name="dname" autocomplete="off"></h1></td>
                                        <datalist id="filename">
                                            <%
                                                Connection con = null;
                                                PreparedStatement psmt1 = null;
                                                DBsingletone dbs = DBsingletone.getDbSingletone();
                                                con = dbs.getConnection();
                                                Object pincode = (Object) session.getAttribute("pincode");
                                                PreparedStatement psmt = con.prepareStatement("select * from doctorreg where pincode='" + pincode + "' and block=1");
                                                ResultSet rs1 = psmt.executeQuery();

                                                while (rs1.next()) {

                                            %>
                                            <option value="<%=rs1.getString("dname")%>">                                                          
                                                <%
                                                    }
                                                %>
                                        </datalist>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td><input type="submit" value="Search..."></td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                            <div class="col-sm-12">
                                <div class="table-responsive">
                                    <form action="../TakeAppointmet">
                                        <table class="table_template greylinks margin_0" id="timetable">
                                        <thead>
                                            <tr>
                                                <th>Si No</th>
                                                <th>Doctor Name</th>
                                                <th>Doctor Email</th>
                                                <th>Doctor Phone</th>
                                                <th>Doctor Address</th>
                                                <th>Doctor Specailization</th>
                                                <th>Problem</th>
                                                <th>Take Appointment</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                int count = 1;
                                                DBsingletone dbs1 = DBsingletone.getDbSingletone();
                                                Connection con1 = dbs1.getConnection();
                                                
                                                String dname = request.getParameter("dname");
                                                System.out.println("Connection Ok"+dname);
                                                PreparedStatement stmt11 = con1.prepareStatement("select * from doctorreg where dname='" + dname+ "' and isactive=1");
                                                ResultSet rs = stmt11.executeQuery();
                                                System.out.println("rs="+rs);
                                                while (rs.next()) {
                                            %>
                                            <tr>
                                                <td><%=count++%></td>
                                                <td><%=rs.getString("dname")%></td>
                                                <td><%=rs.getString("demail")%></td>
                                                <td><%=rs.getString("dphone")%></td>
                                                <td><%=rs.getString("address")%></td>
                                                <td><%=rs.getString("dspec")%></td>
                                                <td><input type="text" style="display: none" name="did" value='<%=rs.getInt("did")%>'><input type="text" name="problem" required=""></td>
                                                <td><input type="submit"></td>



                                            </tr>
                                            <%}%>




                                        </tbody>
                                    </table>
                                    </form>
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