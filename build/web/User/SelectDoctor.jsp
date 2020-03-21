<%@page import="com.dbutils.DBsingletone"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String sdate = request.getParameter("did");
            Connection con1 = null;
            PreparedStatement psmt1 = null;
            DBsingletone dbs1 = DBsingletone.getDbSingletone();
            con1 = dbs1.getConnection();
            PreparedStatement psmt = con1.prepareStatement("select * from stocks where sdate='" + sdate + "'");
            ResultSet rs = psmt.executeQuery();
            if (rs.next()) {
                response.sendRedirect("ViewStockes.jsp?Stocks_Pkid="+rs.getString("Stocks_Pkid")+"");
            } else {
                response.sendRedirect("ViewStockes.jsp?Patient Not exit");
            }
        %>
    </body>
</html>
