package com.Builder.dao;

import com.Builder.model.LandlordsDetails;
import com.Builder.model.UserLogin;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AddTransactionDetails {
    private final Connection connection;

    public AddTransactionDetails(Connection connection) {
        this.connection = connection;
    }

    public boolean insertTransaction(LandlordsDetails landlordsDetails) {     //it will return boolean type value from here to SignupServlet

        boolean isUserDataInserted = false;

        try {

            String partySql = "INSERT INTO paymentdetails(landlordSiteId, description, " +
                    "amountType, date, amount) VALUES(?,?,?,?,?)";

            PreparedStatement statement = connection.prepareStatement(partySql);
            statement.setString(1, landlordsDetails.getSiteId());        //value is being taken from userId() which is defined above
            statement.setString(2, landlordsDetails.getDescription());      //value is being taken from (model) party class
            statement.setString(3, landlordsDetails.getAmountType());     //value is being taken from (model) party class
            statement.setString(4, landlordsDetails.getPaidDate());        //value is being taken from (model) party class
            statement.setString(5, landlordsDetails.getAmount());      //value is being taken from (model) party class
            //value is being taken from (model) party class

            statement.executeUpdate();

            isUserDataInserted = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isUserDataInserted;
    }

}
