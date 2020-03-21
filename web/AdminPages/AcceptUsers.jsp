<%@page import="com.dbutils.DBsingletone.SendMail"%>
<%@page import="com.dbutils.DBsingletone.DBsingletone"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    int number = Integer.parseInt(request.getParameter("did"));
    String demail=request.getParameter("demail");
    DBsingletone dbs = DBsingletone.getDbSingletone();
    Connection con = dbs.getConnection();
    PreparedStatement psmt = con.prepareStatement("update   doctorreg set isactive=1 where did =" + number + " ");
    int i1 = psmt.executeUpdate();
    if (i1 != 0) {
        SendMail s=new SendMail();
        s.SendTo(demail, "you are Accepted for Our Clinical App.");
        response.sendRedirect("ViewUsers.jsp?Success");

    } else {
        response.sendRedirect("ViewUsers.jsp?Failed");
    }

%>