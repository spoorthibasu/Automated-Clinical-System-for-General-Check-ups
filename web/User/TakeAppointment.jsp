<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.dbutils.DBsingletone"%>
<%
    int number = Integer.parseInt(request.getParameter("uid"));

    // System.out.println(number);
    DBsingletone dbs = DBsingletone.getDbSingletone();
    Connection con = dbs.getConnection();
    PreparedStatement psmt = con.prepareStatement("update   users set isActive=1 where uid =" + number + " ");
    int i1 = psmt.executeUpdate();
    if (i1 != 0) {
        response.sendRedirect("ViewUsers.jsp?Success");

    } else {
        response.sendRedirect("ViewUsers.jsp?Failed");
    }

%>