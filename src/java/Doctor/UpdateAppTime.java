package Doctor;

import com.dbutils.DBsingletone.DBsingletone;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "UpdateAppTime", urlPatterns = {"/UpdateAppTime"})
public class UpdateAppTime extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
//            String timeStamp = new SimpleDateFormat("yyyy-MM-dd ").format(Calendar.getInstance().getTime());
            String atime = request.getParameter("atime");
            int Aid =Integer.parseInt(request.getParameter("Aid"));
            DBsingletone dbs = DBsingletone.getDbSingletone();
            HttpSession session = request.getSession();
            Connection con = dbs.getConnection();
            PreparedStatement psmt = con.prepareStatement("update appointment set atime='"+atime+"' ,isactive=1 where Aid='" + Aid + "' ");
            int rs = psmt.executeUpdate();
            if (rs != 0) {
                response.sendRedirect("Doctor/ViewAppointments.jsp?Success");

            } else {
                response.sendRedirect("Doctor/ViewAppointments.jsp?Failed");
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
