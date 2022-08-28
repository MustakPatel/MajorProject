package com.Builder.dao;

import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.LandlordsDetails;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class PersonPartyTransactionListDetails {

    public static ArrayList<LandlordsDetails> getLandlordDetails(String userName) {

        ArrayList<LandlordsDetails> fetch = new ArrayList<>();


        try {

            String sql = " SELECT L.siteId, L.firstname, L.lastname, L.totalpayment, L.totalpayment - SUM(P.amount)" +
                    " FROM landlordsdetails L INNER JOIN paymentdetails P ON P.landlordsiteid=L.siteid INNER JOIN userlogin  U " +
                    "ON L.siteid=U.landlordsiteid WHERE U.mailId='"+userName+"' GROUP BY L.siteId";

            Connection connection = ConnectionProvider.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {

                LandlordsDetails landlordsDetails = new LandlordsDetails();
                landlordsDetails.setSiteId(resultSet.getString(1));
                landlordsDetails.setFirstName(resultSet.getString(2));
                landlordsDetails.setLastName(resultSet.getString(3));
                landlordsDetails.setTotalPayment(resultSet.getString(4));
                landlordsDetails.setRemainingBalance(resultSet.getString(5));

                fetch.add(landlordsDetails);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return fetch;
    }
}