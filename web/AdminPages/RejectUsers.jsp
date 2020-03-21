<%@page import="com.dbutils.DBsingletone.SendMail"%>
<%@page import="com.dbutils.DBsingletone.DBsingletone"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    int number = Integer.parseInt(request.getParameter("did"));
     String demail=request.getParameter("demail");

    // System.out.println(number);
    DBsingletone dbs = DBsingletone.getDbSingletone();
    Connection con = dbs.getConnection();
    PreparedStatement psmt = con.prepareStatement("delete from doctorreg where did =" + number + " ");
    int i1 = psmt.executeUpdate();
    if (i1 != 0) {
         SendMail s=new SendMail();
        s.SendTo(demail, "you are Rejected from Our Clinical App.");
        response.sendRedirect("ViewUsers.jsp?Success");

    } else {
        response.sendRedirect("ViewUsers.jsp?Failed");
    }

%>