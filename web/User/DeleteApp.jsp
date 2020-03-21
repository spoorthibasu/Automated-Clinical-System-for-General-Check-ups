<%@page import="com.dbutils.DBsingletone.DBsingletone"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    int aid = Integer.parseInt(request.getParameter("aid"));

    // System.out.println(number);
    DBsingletone dbs = DBsingletone.getDbSingletone();
    Connection con = dbs.getConnection();
    PreparedStatement psmt = con.prepareStatement("delete from appointment where Aid =" + aid + " ");
    int i1 = psmt.executeUpdate();
    if (i1 != 0) {
        response.sendRedirect("ViewAppointments.jsp?Success");

    } else {
        response.sendRedirect("ViewAppointments.jsp?Failed");
    }

%>