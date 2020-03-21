<%@page import="com.dbutils.DBsingletone.DBsingletone"%>
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
            String dname = request.getParameter("dname");
            Connection con1 = null;
            PreparedStatement psmt1 = null;
            DBsingletone dbs1 = DBsingletone.getDbSingletone();
            con1 = dbs1.getConnection();
            PreparedStatement psmt = con1.prepareStatement("select * from doctorreg where dname='" + dname + "'");
            ResultSet rs = psmt.executeQuery();
            if (rs.next()) {
                response.sendRedirect("ViewDocttorNbyA.jsp?dname="+rs.getString("dname")+"");
            } else {
                response.sendRedirect("ViewDocttorNbyA.jsp?Patient Not exit");
            }
        %>
    </body>
</html>
