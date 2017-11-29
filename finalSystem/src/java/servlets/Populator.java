import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;
 

public class Populator extends HttpServlet {

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
        response.setContentType("text/xml;charset=UTF-8");
        try{
            String driver = "org.mariadb.jdbc.Driver";
            Class.forName(driver);
            String dbURL = "jdbc:mariadb://localhost:3306/apollo_4_project";
            Connection connection = DriverManager.getConnection(dbURL, "apollo.4", "zozoZOZO");
            Statement statement = connection.createStatement();
            
            
            double lat = Double.parseDouble(request.getParameter("lat")); //34.0584;
            double lon = Double.parseDouble(request.getParameter("lon")); //-106.898;
            

            /* upper/lower bounds for SQL query due to select on float */
            double latUp = lat + 0.0001;
            double latLow = lat - 0.0001;
            double longUp = lon + 0.0001;
            double longLow = lon - 0.0001;

            String query = "SELECT postNumber,address1 FROM `apollo_4_project`.`address` WHERE "
                + " latitude >= " + latLow 
                + " AND latitude <= " + latUp 
                + " AND longitude >= " + longLow 
                + " AND longitude <= " + longUp + ";";
            ResultSet result = statement.executeQuery(query);


            
            /* builds query. e.g. query = `select * from rating where postNumber IN (0,2);` 
             * Also sets address1 for building XML later
            */
            String address1 = "";
            query = "SELECT * FROM `apollo_4_project`.`rating` WHERE postNumber IN (";
            while (result.next()) {
                int pn = result.getInt("postNumber");
                query += pn + ",";
                address1 = result.getString("address1");
            }
            query = query.substring(0, query.length() - 1); /* delete last comma */
            query += ");";
            
            result = statement.executeQuery(query);
            
            
            /* begin building XML */
            
            String xml = "<data>"
                    + "<address>"
                    + address1
                    + "</address>";
            
            while (result.next()) {
                xml += "<review>"
                    + "<postNumber>" + result.getInt("postNumber") + "</postNumber>"
                    + "<price>" + result.getInt("price") + "</price>"
                    + "<bedrooms>" + result.getInt("bedrooms") + "</bedrooms>"
                    + "<bathrooms>" + result.getInt("bathrooms")+ "</bathrooms>"
                    + "<leaseLength>" + result.getString("leaseLength") + "</leaseLength>"
                    + "<furnished>" + result.getInt("furnished") + "</furnished>"
                    + "<leaseType>" + result.getInt("leaseType") + "</leaseType>"
                    + "<lateFee>" + result.getInt("lateFee") + "</lateFee>"
                    + "<lateDays>" + result.getInt("lateDays") + "</lateDays>"
                    + "<paymentMethods>" + result.getInt("paymentMethods") + "</paymentMethods>"
                    + "<deposit>" + result.getInt("deposit") + "</deposit>"
                    + "<depositReturned>" + result.getInt("depositReturned") + "</depositReturned>"
                    + "<receiptGiven>" + result.getInt("receiptGiven") + "</receiptGiven>"
                    + "<utilities>" + result.getInt("utilities") + "</utilities>"
                    + "<appliances>" + result.getInt("appliances") + "</appliances>"
                    + "<cooling>" + result.getInt("cooling") + "</cooling>"
                    + "<heating>" + result.getInt("heating") + "</heating>"
                    + "<parking>" + result.getInt("parking") + "</parking>"
                    + "<smoking>" + result.getInt("smoking") + "</smoking>"
                    + "<petsAllowed>" + result.getInt("petsAllowed") + "</petsAllowed>"
                    + "<petDeposit>" + result.getInt("petDeposit") + "</petDeposit>"
                    + "<petWeight>" + result.getInt("petWeight") + "</petWeight>"
                    + "<petSize>" + result.getInt("petSize") + "</petSize>"
                    + "<lawnMaintenance>" + result.getInt("lawnMaintenance") + "</lawnMaintenance>"
                    + "<responseTime>" + result.getInt("responseTime") + "</responseTime>"
                    + "<maintenanceTime>" + result.getInt("maintenanceTime") + "</maintenanceTime>"
                    + "<maintenanceQuality>" + result.getString("maintenanceQuality") + "</maintenanceQuality>"
                    + "<overallThoughts>" + result.getString("overallThoughts") + "</overallThoughts>"
                    + "<overallRating>" + result.getInt("overallRating") + "</overallRating>"
                + "</review>";
            }
            
            xml += "</data>";
            
            PrintWriter out = response.getWriter();
            out.println(xml);
            
            out.close();
            result.close();
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
