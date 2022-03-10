package com.Builder.dao;

import com.Builder.model.LandlordsDetails;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AddLandlords {
    private final Connection connection;

    public AddLandlords(Connection connection) {
        this.connection = connection;
    }

    public boolean insertUser(LandlordsDetails landlordsDetails) {     //it will return boolean type value from here to SignupServlet

        boolean isUserDataInserted = false;

        try {

            String partySql = "INSERT INTO landlordsdetails(siteId, firstname, lastname, phone, " +
                    "sitelocation, district, eria, totalpayment) VALUES(?,?,?,?,?,?,?,?)";

            PreparedStatement statement = connection.prepareStatement(partySql);
            statement.setInt(1, landlordsDetails.getSiteId());        //value is being taken from userId() which is defined above
            statement.setString(2, landlordsDetails.getFirstName());        //value is being taken from (model) party class
            statement.setString(3, landlordsDetails.getLastName());     //value is being taken from (model) party class
            statement.setString(4, landlordsDetails.getPhone());      //value is being taken from (model) party class
            statement.setString(5, landlordsDetails.getSiteLocation());     //value is being taken from (model) party class
            statement.setString(6, landlordsDetails.getDistrict());        //value is being taken from (model) party class
            statement.setString(7, landlordsDetails.getAria());      //value is being taken from (model) party class
            statement.setString(8, landlordsDetails.getTotalPayment());      //value is being taken from (model) party class
                //value is being taken from (model) party class

            statement.executeUpdate();

            isUserDataInserted = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isUserDataInserted;
    }
}
