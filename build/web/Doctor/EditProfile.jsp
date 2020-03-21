<%@page import="java.sql.*"%>

<%
try{
String pid=request.getParameter("pid");
 Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://health.cs7p7spra3gg.us-east-2.rds.amazonaws.com:3306/health","root","adminroot");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from pregistration where pid='"+pid+"'");
           int count=0;
          while(rs.next())
          {
                              count++;
          }

                    if(count>0){
            out.println("welcome "+pid);
            Statement s=con.createStatement();
           ResultSet rst=s.executeQuery("select * from pregistration where pid='"+pid+"'");
          while(rst.next()){
              System.out.println(rst.getString("firstname"));
            %>
            <h3>Your Account Information</h3>
            <table>
            <tr><td>FirstName:</td><td><input type="text" name="name" value="<%=rst.getString("firstname")%>"></td></tr>
            <tr><td>LastName:</td><td><input type="text" name="name" value="<%=rst.getString("lastname")%>"></td></tr>
            <tr><td>Address:</td><td><input type="text" name="name" value="<%=rst.getString("address")%>"></td></tr>
            <tr><td>Contact No:</td><td><input type="text" name="name" value="<%=rst.getString("pnumber")%>"></td></tr>
            <tr><td>Email:</td><td><input type="text" name="name" value="<%=rst.getString("email")%>"></td></tr>
           </table>
            <%
          }
          }
          else
          {
                       response.sendRedirect("PatientRegister.jsp");
          }
}

catch(Exception e){
    System.out.println(e);
}
%>