/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Hotel_booking;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author dell
 */
@WebServlet("/register")
public class bookdetails extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int age=Integer.parseInt(request.getParameter("age"));
        String mobile=request.getParameter("mobile");
        int tourists=Integer.parseInt(request.getParameter("tourists"));
        int adults=Integer.parseInt(request.getParameter("adults"));
        int children=Integer.parseInt(request.getParameter("children"));
        out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewServlet</title>");            
            out.println("</head>");
            out.println("<body style='background-color:#f3eeff; text-align:center '>");
            out.println("<section>");
            out.println("<section>");
            
            int s=adults+children;
            if(s!=tourists)
            {
                request.setAttribute("error", "Invalid Credentials");
                RequestDispatcher rd=request.getRequestDispatcher("Booking.jsp");
                rd.forward(request,response);
            }
            
            
        try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HotelReservation","root","root");
                String sql="insert into Booking values(?,?,?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, (request.getParameter("name")));
            ps.setInt(2, age);
            ps.setString(3, "mobile");
            ps.setInt(4, tourists);
            ps.setInt(5, adults);
            ps.setInt(6, children);
            
            
            int status = ps.executeUpdate();
            if(status > 0) {
                out.println("Record is inserted successfully !!!");
            }
            con.close();
            }
            catch (Exception e) {
                out.println(e);
        }
         try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HotelReservation","root","root");
                PreparedStatement ps=con.prepareStatement("select * from Booking");
                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {
                    out.println("<h3>Your tour is being booked. Here are your details,</h2><br>");
                    out.println("<h3>Name: "+request.getParameter("name")+"</h2><br>");
                    out.println("<h2>Age: <span font-size = 20px>"+age+"</span></h2><br>");
                    out.println("<h2>Mobile: "+mobile+"</h2><br>");
                    out.println("<h2>Adults: "+adults+"</h2><br>");
                    out.println("<h2>Children: "+children+"</h2><br>");
                    out.println("<h2>Tourists: "+tourists+"</h2><br>");
                    out.println("<p><b>For payment and further details contact with us.</b></p><br>");
                    break;
                }
        }
        
        catch(Exception e){
            out.println(e);
        }
         out.println("</section>");
            out.println("</section>");
        out.println("</body>");
        out.println("</html>");

        
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
