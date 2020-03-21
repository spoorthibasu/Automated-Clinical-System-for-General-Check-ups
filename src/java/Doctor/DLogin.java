package Doctor;

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

@WebServlet(name = "DLogin", urlPatterns = {"/DLogin"})
public class DLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
//            String timeStamp = new SimpleDateFormat("yyyy-MM-dd ").format(Calendar.getInstance().getTime());
            String email = request.getParameter("email");
            String Password = request.getParameter("Password");
            String type = request.getParameter("type");
            DBsingletone dbs = DBsingletone.getDbSingletone();
            HttpSession session = request.getSession();
            Connection con = dbs.getConnection();
            PreparedStatement psmt = con.prepareStatement("select * from doctorreg where demail='" + email + "' and dpass='" + Password + "' and isactive=1");
            ResultSet rs = psmt.executeQuery();
            if (rs.next()) {
                session.setAttribute("demail", email);
                session.setAttribute("did", rs.getInt("did"));
                session.setAttribute("dpass", Password);
                session.setAttribute("block", rs.getInt("block"));
                response.sendRedirect("Doctor/Home.jsp");
            } else {
                response.sendRedirect("DLogin.jsp?res=Failed");
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
