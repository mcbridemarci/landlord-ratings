import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import static java.lang.Integer.parseInt;
import javax.servlet.*;
import java.sql.*;
import javax.servlet.http.HttpSession;

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
                Review r = new Review(email); /* create new Review obj */
                session.setAttribute("review", r);
                url = "/basic.jsp";
            }
            else { /* errors if bad email */
                url = "/check_email_error.jsp";
            }
        } 
        else if (action.equals("basic_page")) {
            Review r = (Review)session.getAttribute("review");
            
            r.latitude = Float.parseFloat(request.getParameter("latitude"));
            r.longitude = Float.parseFloat(request.getParameter("longitude"));
            r.address1 = request.getParameter("location");
            r.address2 = request.getParameter("unit");
            r.city = request.getParameter("city");
            r.state = request.getParameter("state");
            r.zip = parseInt(request.getParameter("zip"));
            r.country = request.getParameter("country");
            r.price = parseInt(request.getParameter("price"));
            r.bedrooms = parseInt(request.getParameter("bedrooms"));
            r.bathrooms = parseInt(request.getParameter("bathrooms"));
            r.leaseLength = request.getParameter("lease");
            
            /* Radio button parsing... .equals returns T/F */
            r.furnished = "Yes".equals(request.getParameter("furnished"));
            
            /* checkbox processing */
            r.leaseType = 0; /* initial value */
            String select[] = request.getParameterValues("lease_allowed"); 
            if(select != null) {
                for (String s : select) {
                    switch (s) {
                        case "monthly":
                            r.leaseType |= 0b01;
                            break;
                        case "year":
                            r.leaseType |= 0b10;
                            break;
                        default:
                            break;
                    }
                }
            }
            
            r.lateFee = parseInt(request.getParameter("fee"));
            r.lateDays = parseInt(request.getParameter("late_days"));
            
            r.paymentMethods = 0;
            String select2[] = request.getParameterValues("payments_allowed");
            if(select2 != null) {
                for (String s : select2) {
                    switch (s) {
                        case "checks":
                            r.paymentMethods |= 0b001;
                            break;
                        case "apps":
                            r.paymentMethods |= 0b010;
                            break;
                        case "direct":
                            r.paymentMethods |= 0b100;
                            break;
                        default:
                            break;
                    }
                }
            }
            
            r.deposit = parseInt(request.getParameter("deposit_amnt"));
            r.depositReturned = parseInt(request.getParameter("return_deposit"));
            r.receiptGiven = "Yes".equals(request.getParameter("receipt"));
            
            session.setAttribute("review", r);
            url = "/amenities.jsp";
        }
        else if (action.equals("amenities_page")) {
            Review r = (Review)session.getAttribute("review");
                        
            r.utilities = "Yes".equals(request.getParameter("utilities"));
            
            r.appliances = 0;
            String select3[] = request.getParameterValues("appliances");
            if(select3 != null) {
                for (String s : select3) {
                    switch (s) {
                        case "refrigerator":
                            r.appliances |= 0b0001;
                            break;
                        case "stove_top":
                            r.appliances |= 0b0010;
                            break;
                        case "oven":
                            r.appliances |= 0b0100;
                            break;
                        case "microwave":
                            r.appliances |= 0b1000;
                            break;
                        default: 
                            break;
                    }
                }
            }
            
            r.cooling = 0;
            String select4[] = request.getParameterValues("cool");
            if(select4 != null) {
                for (String s : select4) {
                    switch (s) {
                        case "AC":
                            r.cooling |= 0b0001;
                            break;
                        case "swamply":
                            r.cooling |= 0b0010;
                            break;
                        case "fan":
                            r.cooling |= 0b0100;
                            break;
                        default: 
                            break;
                    }
                    if (s.equals("none")) { 
                        r.cooling = 0b1000;
                        break;
                    } 
                }
            }
            
            r.heating = "Yes".equals(request.getParameter("heating"));
            
            r.parking = 0;
            String select5[] = request.getParameterValues("park");
            if(select5 != null) {
                for (String s : select5) {
                    switch (s) {
                        case "covered":
                            r.parking |= 0b0001;
                            break;
                        case "garage":
                            r.parking |= 0b0010;
                            break;
                        case "street":
                            r.parking |= 0b0100;
                            break;
                        case "assigned":
                            r.parking |= 0b1000;
                            break;
                        default:
                            break;
                    }
                }
            }
            
            r.smoking = "Yes".equals(request.getParameter("smoking"));
            
            session.setAttribute("review", r);
            url = "/pets.jsp";
        }
        else if (action.equals("pets_page")) {
            Review r = (Review)session.getAttribute("review");
            
            r.petsAllowed = "Yes".equals(request.getParameter("allowed"));
            
            if (r.petsAllowed) { /* pull data from site, otherwise generate and fill in for none */
                r.petDeposit = parseInt(request.getParameter("pet_deposit"));
                r.petWeight = parseInt(request.getParameter("weight"));
                
                r.petSize = 0;
                String select6[] = request.getParameterValues("size");
                if(select6 != null) {
                    for (String s : select6) {
                        switch (s) {
                                case "small":
                                    r.petSize |= 0b001;
                                    break;
                                case "medium":
                                    r.petSize |= 0b010;
                                    break;
                                case "large":
                                    r.petSize |= 0b100;
                                    break;
                        }
                    }
                }
            }
            else {
                r.petDeposit = -1;
                r.petWeight = -1;
                r.petSize = 0;
            }
            
            session.setAttribute("review", r);
            url = "/landlord.jsp";
        }
        else if (action.equals("landlord_page")) {
            Review r = (Review)session.getAttribute("review");
            
            r.lawnMaintenance = "Yes".equals(request.getParameter("maintain"));
            r.responseTime = parseInt(request.getParameter("response_time"));
            r.maintenanceTime = parseInt(request.getParameter("maintenance_response"));
            r.maintenanceQuality = request.getParameter("quality");
            
            session.setAttribute("review", r);
            url = "/overall.jsp";
        }
        else if (action.equals("overall_page")) {
            Review r = (Review)session.getAttribute("review");
            
            r.overallThoughts = request.getParameter("overall_thoughts");
            r.overallRating = parseInt(request.getParameter("rating"));
            session.setAttribute("review", r);
            url = "/success.jsp";
            
            /* send all data to database */
            try{
                String driver = "org.mariadb.jdbc.Driver";
                Class.forName(driver);
                String dbURL = "jdbc:mariadb://localhost:3306/apollo_4_project?allowMultiQueries=true";
                Connection connection = DriverManager.getConnection(dbURL, "apollo.4", "zozoZOZO");
                
                
                PreparedStatement stmt = connection.prepareStatement("INSERT INTO `apollo_4_project`.`address` "
                        + "(`latitude`, `longitude`, `address1`, `address2`, `city`, "
                        + "`state`, `zip`, `country`, `postDate`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, CURRENT_TIMESTAMP);"
                    );
                
                stmt.setDouble(1, r.latitude);
                stmt.setDouble(2, r.longitude);
                stmt.setString(3, r.address1);
                stmt.setString(4, r.address2);
                stmt.setString(5, r.city);
                stmt.setString(6, r.state);
                stmt.setInt(7, r.zip);
                stmt.setString(8, r.country);
                
                int res = stmt.executeUpdate();
                System.out.println("num rows updated in address:" + res);
                if (res == 0) {
                    System.out.println("failed to update address table");
                }
                    
                /*ResultSet query = statement.executeQuery(
                    "INSERT INTO `apollo_4_project`.`address` "
                        + "(`latitude`, `longitude`, `address1`, `address2`, `city`, "
                        + "`state`, `zip`, `country`, `postDate`) VALUES ('"
                        + r.latitude + "','"
                        + r.longitude + "','"
                        + r.address1  + "','" 
                        + r.address2 + "','"
                        + r.city + "','"
                        + r.state + "','"
                        + r.zip + "','"
                        + r.country + "',"
                        + "CURRENT_TIMESTAMP);"
                );*/
                
                /* below Select should return postNumber from the above insert */
                Statement statement = connection.createStatement();
                ResultSet query = statement.executeQuery("select last_insert_id();");
                if (query.next()) {
                    System.out.println("PostNumber:" + query.getInt("last_insert_id()"));
                    r.postNumber = query.getInt("last_insert_id()");
                }
                statement.close();
                
                stmt = connection.prepareStatement("INSERT INTO `apollo_4_project`.`rating` "
                            + "(`postNumber`, `email`, `price`, `bedrooms`, "
                            + "`bathrooms`, `leaseLength`, `furnished`, "
                            + "`leaseType`, `lateFee`, `lateDays`, "
                            + "`paymentMethods`, `deposit`, `depositReturned`, "
                            + "`receiptGiven`, `utilities`, `appliances`, `cooling`, "
                            + "`heating`, `parking`, `smoking`, `petsAllowed`, "
                            + "`petDeposit`, `petWeight`, `petSize`, "
                            + "`lawnMaintenance`, `responseTime`, `maintenanceTime`, "
                            + "`maintenanceQuality`, `overallThoughts`, `overallRating`) "
                            + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);"
                );
                
                stmt.setInt(1, r.postNumber);
                stmt.setString(2, r.email);
                stmt.setInt(3, r.price);
                stmt.setInt(4, r.bedrooms);
                stmt.setInt(5, r.bathrooms);
                stmt.setString(6, r.leaseLength);
                stmt.setInt(7, (r.furnished ? 1 : 0));
                stmt.setInt(8, r.leaseType);
                stmt.setInt(9, r.lateFee);
                stmt.setInt(10, r.lateDays);
                stmt.setInt(11, r.paymentMethods);
                stmt.setInt(12, r.deposit);
                stmt.setInt(13, r.depositReturned);
                stmt.setInt(14, (r.receiptGiven? 1 : 0));
                stmt.setInt(15, (r.utilities? 1 : 0));
                stmt.setInt(16, r.appliances);
                stmt.setInt(17, r.cooling);
                stmt.setInt(18, (r.heating? 1 : 0));
                stmt.setInt(19, r.parking);
                stmt.setInt(20, (r.smoking? 1 : 0));
                stmt.setInt(21, (r.petsAllowed? 1 : 0));
                stmt.setInt(22, r.petDeposit);
                stmt.setInt(23, r.petWeight);
                stmt.setInt(24, r.petSize);
                stmt.setInt(25, (r.lawnMaintenance? 1 : 0));
                stmt.setInt(26, r.responseTime);
                stmt.setInt(27, r.maintenanceTime);
                stmt.setString(28, r.maintenanceQuality);
                stmt.setString(29, r.overallThoughts);
                stmt.setInt(30, r.overallRating);
                
                res = stmt.executeUpdate();
                System.out.println("num rows updated in rating:" + res);
                if (res == 0) {
                    System.out.println("failed to update ratings table");
                }
                
                /*query = statement.executeQuery(
                    "INSERT INTO `apollo_4_project`.`rating` "
                            + "(`postNumber`, `email`, `price`, `bedrooms`, "
                            + "`bathrooms`, `leaseLength`, `furnished`, "
                            + "`leaseType`, `lateFee`, `lateDays`, "
                            + "`paymentMethods`, `deposit`, `depositReturned`, "
                            + "`receiptGiven`, `utilities`, `appliances`, `cooling`, "
                            + "`heating`, `parking`, `smoking`, `petsAllowed`, "
                            + "`petDeposit`, `petWeight`, `petSize`, "
                            + "`lawnMaintenance`, `responseTime`, `maintenanceTime`, "
                            + "`maintenanceQuality`, `overallThoughts`, `overallRating`) "
                            + "VALUES ('"
                            + r.postNumber + "','"
                            + r.email + "','"
                            + r.price + "','"
                            + r.bedrooms + "','"
                            + r.bathrooms + "','"
                            + r.leaseLength + "','"
                            + (r.furnished ? 1 : 0)  + "','"
                            + r.leaseType + "','"
                            + r.lateFee + "','"
                            + r.lateDays + "','" 
                            + r.paymentMethods + "','"
                            + r.deposit + "','"
                            + r.depositReturned + "','"
                            + (r.receiptGiven ? 1 : 0) + "','"
                            + (r.utilities ? 1 : 0) + "','"
                            + r.appliances + "','"
                            + r.cooling + "','"
                            + (r.heating ? 1 : 0) + "','"
                            + r.parking + "','"
                            + (r.smoking ? 1 : 0) + "','"
                            + (r.petsAllowed ? 1 : 0) + "','"
                            + r.petDeposit + "','"
                            + r.petWeight + "','"
                            + r.petSize + "','"
                            + (r.lawnMaintenance ? 1 : 0) + "','"
                            + r.responseTime  + "','"
                            + r.maintenanceTime + "','"
                            + r.maintenanceQuality + "','"
                            + r.overallThoughts + "','"
                            + r.overallRating
                            + "');"
                
                );*/
                
                stmt.close();
                query.close();
                connection.close();
            } catch (ClassNotFoundException ex) {
                System.err.println("Error with connection: " + ex);
            } catch (SQLException ex) {
                System.err.println("Error loading driver: " + ex);
            }
        }
        
        /* redirects browser to next page */
        RequestDispatcher dispatcher = request.getRequestDispatcher(url);
        dispatcher.forward(request, response);
        
        
        
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
