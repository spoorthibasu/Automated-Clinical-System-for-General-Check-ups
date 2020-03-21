package Patient;

import com.dbutils.DBsingletone.DBsingletone;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AddAppointment", urlPatterns = {"/AddAppointment"})
public class AddAppointment extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String name = request.getParameter("name");
            String Contatct = request.getParameter("Contatct");
            String Email = request.getParameter("Email");
            String Address = request.getParameter("Address");
            String Password = request.getParameter("Password");
            String age = request.getParameter("age");
            String city = request.getParameter("city");
            String pincode = request.getParameter("pincode");
            DBsingletone dbs = DBsingletone.getDbSingletone();
            Connection con = dbs.getConnection();
            PreparedStatement psmt = con.prepareStatement("select * from appointment where pemail='" + Email + "' and  pphone='" + Contatct + "'");
            ResultSet rs = psmt.executeQuery();
            if (rs.next()) {
                response.sendRedirect("Register.jsp?res=Already Existing");
            } else {
                PreparedStatement ps = con.prepareStatement("insert into pregistration(pname,ppass,pemail,pphone,age,address,pcity,pincode) values(?,?,?,?,?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, Password);
                ps.setString(3, Email);
                ps.setString(4, Contatct);
                ps.setString(5, age);
                ps.setString(6, Address);
                ps.setString(7, city);
                ps.setString(8, pincode);

                int i = ps.executeUpdate();

                if (i == 1) {
                    response.sendRedirect("Login.jsp?res=success");
                } else {
                    response.sendRedirect("Register.jsp?res=Ty Again");
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
