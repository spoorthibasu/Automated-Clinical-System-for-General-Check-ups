package Patient;

import com.dbutils.DBsingletone.DBsingletone;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "EditProfile", urlPatterns = {"/EditProfile"})
public class EditProfile extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       try {
            String name = request.getParameter("name");
              HttpSession session = request.getSession();
            String Contatct = request.getParameter("Contatct");
            String Email = request.getParameter("Email");
            String Address = request.getParameter("Address");
            String city = request.getParameter("city");
            String pincode = request.getParameter("Pincode");
            int pid = (int) session.getAttribute("pid");
          
            DBsingletone dbs = DBsingletone.getDbSingletone();
            Connection con = dbs.getConnection();
            PreparedStatement ps = con.prepareStatement("update   pregistration set pname='"+name+"',address='"+Address+"',pemail='"+Email+"',pphone='"+Contatct+"',pcity='"+city+"',pincode='"+pincode+"' where pid='"+pid+"'");
            int i = ps.executeUpdate();
            if (i == 1) {
                response.sendRedirect("User/EditProfile.jsp?res=Success");
            } else {
                 response.sendRedirect("User/EditProfile.jsp?res=Failed");
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
