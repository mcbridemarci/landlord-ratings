/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Johnathan
 */
public class Review {
    /* TABLE: address */
    String coordinate;
    String address1;
    String address2;
    String city;
    String state;
    int zip;
    
    /* TABLE: rating */
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
    int utilities;
    int appliances;
    int cooling;
    boolean heating;
    int parking;
    boolean smoking;
    boolean petsAllowed;
    int petDeposit;
    int petWeight;
    int petSize;
    boolean lawnMaintenance;
    int responseTime;
    int maintenanceTime;
    String maintenanceQuality;
    String overallThoughts;
    int overallRating;
    
    Review(String email) {
        this.email = email;
    }
}
