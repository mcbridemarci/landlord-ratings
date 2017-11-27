/*
 * Class for holding all the data and storing in the http session.
 */

public class Review {
    int postNumber;
    /* TABLE: address */
    String latitude;
    String longitude;
    String address1;
    String address2;
    String city;
    String state;
    int zip;
    String country;
    
    /* TABLE: rating */
    /* basic.jsp */
    String email;
    int price;
    int bedrooms;
    int bathrooms;
    String leaseLength;
    boolean furnished;
    int leaseType;
    int lateFee;
    int lateDays;
    int paymentMethods;
    int deposit;
    int depositReturned;
    boolean receiptGiven;
    /* amenities.jsp */
    boolean utilities;
    int appliances;
    int cooling;
    boolean heating;
    int parking;
    boolean smoking;
    /* pets.jsp */
    boolean petsAllowed;
    int petDeposit;
    int petWeight;
    int petSize;
    /* landlord.jsp */
    boolean lawnMaintenance;
    int responseTime;
    int maintenanceTime;
    String maintenanceQuality;
    /* overall.jsp */
    String overallThoughts;
    int overallRating;
    
    Review(String email) {
        this.email = email;
    }
}
