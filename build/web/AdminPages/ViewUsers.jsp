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
        <div id="canvas">
            <div id="box_wrapper">
                <%@include  file="Header.jsp" %>
                <h1 style="color:blue">
                    Welcome to Admin Area
                </h1>




                <section class="ls section_padding_150 columns_margin_0">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <h1>New Doctors</h1>
                                <div class="table-responsive">
                                    <table class="table_template greylinks margin_0" id="timetable">
                                        <thead>
                                            <tr>
                                                <th>Sl No</th>
                                                <th>Doctor Name</th>
                                                <th>Doctor Phone</th>
                                                <th>Doctor Email</th>
                                                <th>Doctor Address</th>
                                                <th>Doctor Specialization</th>
                                                <th>Doctor City</th>
                                                <th>Doctor Pincode</th>
                                                <th>Accept</th>
                                                <th>Reject</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                int count = 1;
                                                DBsingletone dbs1 = DBsingletone.getDbSingletone();
                                                Connection con1 = dbs1.getConnection();
                                                System.out.println("Connection Ok");
                                                PreparedStatement stmt11 = con1.prepareStatement("select * from doctorreg where  isactive=0");
                                                ResultSet rs = stmt11.executeQuery();
                                                while (rs.next()) {
                                            %>
                                            <tr>
                                                <td><%=count++%></td>
                                                <td><%=rs.getString("dname")%></td>
                                                <td><%=rs.getString("dphone")%></td>
                                                <td><%=rs.getString("demail")%></td>
                                                <td><%=rs.getString("address")%></td>
                                                <td><%=rs.getString("dspec")%></td>
                                                <td><%=rs.getString("dcity")%></td>
                                                <td><%=rs.getString("pincode")%></td>
                                                <td><a href="AcceptUsers.jsp?did=<%=rs.getInt("did")%>&demail=<%=rs.getString("demail")%>" style="color:green">Accept Doctor</a></td>
                                                <td><a href="RejectUsers.jsp?did=<%=rs.getInt("did")%>&demail=<%=rs.getString("demail")%>" style="color:red">Reject Doctor</a></td>




                                            </tr>
                                            <%}%>




                                        </tbody>
                                    </table>
                                </div>
                            </div>
                                            
                                            <div class="col-sm-12">
                                                <hr><br><br><br>
                                <h1>Accepted Doctors</h1>
                                <div class="table-responsive">
                                    <table class="table_template greylinks margin_0" id="timetable">
                                        <thead>
                                            <tr>
                                                <th>Si No</th>
                                                <th>Doctor Name</th>
                                                <th>Doctor Phone</th>
                                                <th>Doctor Email</th>
                                                <th>Doctor Address</th>
                                                   <th>Doctor Specialization</th>
                                                <th>Doctor City</th>
                                                
                                                <th>Doctor Pincode</th>
                                                <th>Reject</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                int count1 = 1;
                                                DBsingletone dbs11 = DBsingletone.getDbSingletone();
                                                Connection con11 = dbs1.getConnection();
                                                System.out.println("Connection Ok");
                                                PreparedStatement stmt111 = con11.prepareStatement("select * from doctorreg where  isactive=1");
                                                ResultSet rs1 = stmt111.executeQuery();
                                                while (rs1.next()) {
                                            %>
                                            <tr>
                                                <td><%=count++%></td>
                                                <td><%=rs1.getString("dname")%></td>
                                                <td><%=rs1.getString("dphone")%></td>
                                                <td><%=rs1.getString("demail")%></td>
                                                <td><%=rs1.getString("address")%></td>
                                                <td><%=rs1.getString("dspec")%></td>
                                                <td><%=rs1.getString("dcity")%></td>
                                                <td><%=rs1.getString("pincode")%></td>
                                                <td><a href="RejectUsers.jsp?did=<%=rs1.getInt("did")%>&demail=<%=rs1.getString("demail")%>" style="color:red">Reject Doctor</a></td>




                                            </tr>
                                            <%}%>




                                        </tbody>
                                    </table>
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