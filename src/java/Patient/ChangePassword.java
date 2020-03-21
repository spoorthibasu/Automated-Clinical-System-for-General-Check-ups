package Patient;

import com.dbutils.DBsingletone.DBsingletone;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ChangePassword", urlPatterns = {"/ChangePassword"})
public class ChangePassword extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        response.setContentType("text/html;charset=UTF-8");
        String oldpass = request.getParameter("cupass");
        
        System.out.println("current pass="+oldpass);
        String newpass = request.getParameter("newpass");
        String conpass = request.getParameter("conpass");
        int pid = (int) session.getAttribute("pid");

        String oripass = (String) session.getAttribute("ppass");
        try {
            if (oldpass.equals(oripass)) {
                if (newpass.equals(conpass)) {
                    try (PrintWriter out = response.getWriter()) {
                        DBsingletone dbs = DBsingletone.getDbSingletone();
                        Connection con = dbs.getConnection();
                        PreparedStatement psmt = con.prepareStatement("update pregistration set ppass='" + newpass + "' where pid='" + pid + "' ");

                        int i = psmt.executeUpdate();
                        if (i != 0) {
                            session.setAttribute("ppass", conpass);
                            response.sendRedirect("User/ChangePassword.jsp?res=success");
                        } else {
                            response.sendRedirect("User/ChangePassword.jsp?res=Failed");
                        }

                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else {
                    response.sendRedirect("User/ChangePassword.jsp?res=New and Confirm Passwods Are Mismatch");
                }

            } else {
                response.sendRedirect("User/ChangePassword.jsp?res=Current Password was wrong");
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
