/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import javax.servlet.*;
import java.sql.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author marci_home
 */
public class javaServlet extends HttpServlet {

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
        
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        String url = "";
        
        if (action.equals("email_page")) {
            /* create Review obj and then store in the session */
            
            //TODO: check if null or not @student.nmt.edu and redirect to correct page
            String email = request.getParameter("email");
            
            String[] splitEmail = email.split("@");
            
            if (splitEmail[1].equals("student.nmt.edu")) {
                
                Review r = new Review(email);
                
                System.out.println("\n\nEmail: " + email + "\n\n"); //TODO: Remove
                session.setAttribute("review", r);
                url = "/basic.jsp";
            }
            else {
                ;//TODO url = "???"; ... error message, need @student...
                //          maybe add error attrib on sesh and js in jsp to display error on page???
            }
        } 
        else if (action.equals("basic_page")) {
            Review r = (Review)session.getAttribute("review");
            //System.out.println("Email after basic: " + r.email); //TODO: Remove
            
            
            
            
            session.setAttribute("review", r);
            url = "/amenities.jsp";
        }
        
        
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
        
        
        /*response.setContentType("text/html;charset=UTF-8");
        try{
            String driver = "org.mariadb.jdbc.Driver";
            Class.forName(driver);
            String dbURL = "jdbc:mariadb://localhost:3306/apollo_4_project";
            String username = "apollo.4";
            String password = "zozoZOZO";
            Connection connection = DriverManager.getConnection(dbURL, username, password);
            Statement statement = connection.createStatement();
            
            
            try (PrintWriter o = response.getWriter()) {
                o.println("in try statement, in java<br>");
            }
            
            statement.close();
            connection.close();
        } catch (ClassNotFoundException ex) {
            System.err.println("Error with connection: " + ex);
        } catch (SQLException ex) {
            System.err.println("Error loading driver: " + ex);
        }*/
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
