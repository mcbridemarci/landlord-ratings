import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import static java.lang.Integer.parseInt;
import javax.servlet.*;
import java.sql.*;
import javax.servlet.http.HttpSession;
import java.io.FileWriter;
import java.io.IOException;
 

public class MapServlet extends HttpServlet {

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
            try{
                
                PrintWriter out = response.getWriter();
                
                String driver = "org.mariadb.jdbc.Driver";
                Class.forName(driver);
                String dbURL = "jdbc:mariadb://localhost:3306/apollo_4_project";
                Connection connection = DriverManager.getConnection(dbURL, "apollo.4", "zozoZOZO");
                Statement statement = connection.createStatement();
                
                //System.out.println("connected");
                out.println("connected");
                
                String query ="SELECT * FROM `apollo_4_project`.`address`";
                
                ResultSet result = statement.executeQuery(query);
                String fileName = "../../landlord-ratings/finalSystem/web/js/locations.json";
                PrintWriter writer = new PrintWriter(new FileWriter(fileName));
                
                writer.append("{");
                while (result.next())
                 {
                   out.println("result set");
                   int postNumber = result.getInt("postNumber");
                   float lat = result.getFloat("latitude");
                   float lng = result.getFloat("longitude");
                   String addr1 = result.getString("address1");
                   String addr2 = result.getString("address2");
                   StringBuffer sb = new StringBuffer(' ');
                   sb.append('"');
                   sb.append(postNumber);
                   sb.append('\"');
                   sb.append(':');
                   sb.append('{');
                   sb.append('"'+"latitude"+'"'+':'+lat+','+'\n');
                   sb.append('"'+"longitude"+'"'+':'+lng+','+'\n');
                   sb.append('"'+"address1"+'"'+':'+'"'+addr1+'"'+','+'\n');
                   sb.append('"'+"address2"+'"'+':'+'"'+addr2+'"'+'\n');
                   sb.append('}');
                   sb.append(',');
                   
                   // create json file 
                   writer.append(sb);
                   
                   // print the results
                   out.println("data: "+postNumber + lat + lng + addr1 + addr2);
                 }
                
                writer.append("\n}");
                writer.close();
                statement.close();
                connection.close();
            } catch (ClassNotFoundException ex) {
                System.err.println("Error with connection: " + ex);
            } catch (SQLException ex) {
                System.err.println("Error loading driver: " + ex);
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
