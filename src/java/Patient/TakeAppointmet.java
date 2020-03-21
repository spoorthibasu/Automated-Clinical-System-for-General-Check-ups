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
import javax.servlet.http.HttpSession;

@WebServlet(name = "TakeAppointmet", urlPatterns = {"/TakeAppointmet"})
public class TakeAppointmet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            HttpSession session = request.getSession();
            String did = request.getParameter("did");
            String problem = request.getParameter("problem");
            int pid = (int) session.getAttribute("pid");
            DBsingletone dbs = DBsingletone.getDbSingletone();
            Connection con = dbs.getConnection();
            PreparedStatement psmt = con.prepareStatement("select * from appointment where pid='" + pid + "' and  did='" + did + "'");
            ResultSet rs = psmt.executeQuery();
            if (rs.next()) {
                System.out.println("coming..");
                
                PreparedStatement psmt1 = con.prepareStatement("update appointment set problem='" + problem + "',isactive=0 ,cdate=now()where pid='" + pid + "' and  did='" + did + "'");
                int rs1 = psmt1.executeUpdate();
                if(rs1==1)
                {
                    response.sendRedirect("User/ViewDocttorNbyA.jsp?res=Poblem Updated");
                }
                
            } else {
                PreparedStatement ps = con.prepareStatement("insert into appointment(did,pid,problem,cdate) values(?,?,?,now())");
                ps.setString(1, did);
                ps.setInt(2, pid);
                ps.setString(3, problem);
                int i = ps.executeUpdate();

                if (i == 1) {
                    response.sendRedirect("User/ViewDocttorNbyA.jsp?res=success");
                } else {
                    response.sendRedirect("User/ViewDocttorNbyA.jsp?res=Ty Again");
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
