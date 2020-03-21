<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.dbutils.DBsingletone.DBsingletone"%>
<%
    int number =(Integer)session.getAttribute("did");
    System.out.print("did="+number);
    DBsingletone dbs = DBsingletone.getDbSingletone();
    Connection con = dbs.getConnection();
    PreparedStatement psmt = con.prepareStatement("update   doctorreg set block=0 where did =" + number+ " ");
    int i1 = psmt.executeUpdate();
    if (i1 != 0) {
        session.setAttribute("block", 0);
        response.sendRedirect("Home.jsp?Success");

    } else {
        response.sendRedirect("Home.jsp?Failed");
    }

%>