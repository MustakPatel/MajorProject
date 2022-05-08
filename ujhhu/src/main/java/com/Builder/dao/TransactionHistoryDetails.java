package com.Builder.dao;

import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.LandlordsDetails;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class TransactionHistoryDetails {

    public static ArrayList<LandlordsDetails> getTransactionDetails(String siteId) {

        ArrayList<LandlordsDetails> fetch = new ArrayList<>();

        try {

            String sql = " SELECT L.siteId, L.firstname, L.lastname, P.description, " +
                    "P.amountType, P.date, P.amount FROM landlordsdetails L INNER JOIN paymentdetails P " +
                    "ON L.siteId=P.landlordSiteId WHERE L.siteId='"+siteId+"'";

            Connection connection = ConnectionProvider.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {

                LandlordsDetails landlordsDetails = new LandlordsDetails();
                landlordsDetails.setSiteId(resultSet.getString(1));
                landlordsDetails.setFirstName(resultSet.getString(2));
                landlordsDetails.setLastName(resultSet.getString(3));
                landlordsDetails.setDescription(resultSet.getString(4));
                landlordsDetails.setAmountType(resultSet.getString(5));
                landlordsDetails.setPaidDate(resultSet.getString(6));
                landlordsDetails.setAmount(resultSet.getString(7));

                fetch.add(landlordsDetails);

            }

        } catch (SQLException e) {

            System.out.println(e);

        }

        return fetch;
    }
}
