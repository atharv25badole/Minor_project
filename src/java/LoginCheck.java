

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
public class LoginCheck extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
      //Class.forName("com.mysql.jdbc.Driver");
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HotelReservation","root","root");
      
      String h_uemail=request.getParameter("Email");
     // int h_pass=Integer.parseInt(request.getParameter("Password"));
      PreparedStatement ps=con.prepareStatement("select Email from login where Email=? and Password=?");
             

      ps.setString(1,h_uemail);
      ps.setString(2,(request.getParameter("Password")));
      ResultSet rs=ps.executeQuery();
      if(rs.next())
	{
	   RequestDispatcher rd=request.getRequestDispatcher("MyHotel.jsp");
	   rd.forward(request,response);	
	}
      else
	{
	   out.println("<font color=red font-size=20px>Login Failed!!!<br>");
	   out.println("<a href=index.html target=\"_self\">Try Again!!</a>");
	}
    }
        catch(SQLException e)
        {
	e.printStackTrace();
        out.println(e);
        }
        catch(ClassNotFoundException ex) {  
       //  System.out.println(ex.toString());//print  exception object  
        ex.printStackTrace();
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
