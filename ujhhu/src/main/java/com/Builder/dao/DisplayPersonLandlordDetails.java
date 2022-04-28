package com.Builder.dao;

import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.LandlordsDetails;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DisplayPersonLandlordDetails {


    public static ArrayList<LandlordsDetails> displayDitails(String mail) {

        ArrayList<LandlordsDetails> fetch = new ArrayList<>();

        try {

            String sql = " SELECT siteId, firstname, lastname, phone, sitelocation," +
                    " district, eria, totalpayment FROM landlordsdetails LD INNER JOIN userlogin UL " +
                    "ON LD.siteId = UL.landlordSiteId WHERE UL.mailId='"+mail+"'";

            Connection connection = ConnectionProvider.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {

                LandlordsDetails landlordsDetails = new LandlordsDetails();
                landlordsDetails.setSiteId(resultSet.getString(1));
                landlordsDetails.setFirstName(resultSet.getString(2));
                landlordsDetails.setLastName(resultSet.getString(3));
                landlordsDetails.setPhone(resultSet.getString(4));
                landlordsDetails.setSiteLocation(resultSet.getString(5));
                landlordsDetails.setDistrict(resultSet.getString(6));
                landlordsDetails.setAria(resultSet.getString(7));
                landlordsDetails.setTotalPayment(resultSet.getString(8));

                fetch.add(landlordsDetails);

            }

        } catch (SQLException e) {

            System.out.println(e);

        }

        return fetch;
    }
}
