package com.Builder.dao;

import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.LandlordsDetails;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class PartyTransactionListDetails {

    public static ArrayList<LandlordsDetails> getLandlordDetails() {

        ArrayList<LandlordsDetails> fetch = new ArrayList<>();

        try {
            String isSiteId = null;
            String sql2 = "SELECT landlordsiteid from paymentdetails";

            //original query

//            String sql = " SELECT L.siteId, L.firstname, L.lastname, L.totalpayment, L.totalpayment - SUM(P.amount)" +
//                    " FROM landlordsdetails L INNER JOIN paymentdetails P ON P.landlordsiteid=L.siteid GROUP BY L.siteId";

//            String remainingBalance = "SELECT L.totalpayment - SUM(P.amount) FROM paymentdetails P INNER JOIN landlordsdetails L " +
//                    "ON P.landlordsiteid=L.siteid GROUP BY P.landlordsiteid";

            Connection connection = ConnectionProvider.getConnection();
            Statement statement1 = connection.createStatement();
            ResultSet resultSet1 = statement1.executeQuery(sql2);
            while (resultSet1.next()) {
                isSiteId = resultSet1.getString(1);
            }
            if (isSiteId == null) {

                try {
                    String sql = " SELECT siteId, firstname, lastname, totalpayment FROM landlordsdetails";

                    Statement statement = connection.createStatement();
                    ResultSet resultSet = statement.executeQuery(sql);

                    while (resultSet.next()) {

                        LandlordsDetails landlordsDetails = new LandlordsDetails();
                        landlordsDetails.setSiteId(resultSet.getString(1));
                        landlordsDetails.setFirstName(resultSet.getString(2));
                        landlordsDetails.setLastName(resultSet.getString(3));
                        landlordsDetails.setTotalPayment(resultSet.getString(4));
//                landlordsDetails.setRemainingBalance(resultSet.getString(5));

                        fetch.add(landlordsDetails);
                    }

                } catch (SQLException e) {
                    System.out.println(e);
                }

            } else {

                try {

                    String sql = " SELECT L.siteId, L.firstname, L.lastname, L.totalpayment, L.totalpayment - SUM(P.amount)" +
                    " FROM landlordsdetails L INNER JOIN paymentdetails P ON P.landlordsiteid=L.siteid GROUP BY L.siteId";

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

            }


        } catch (SQLException e) {
            System.out.println(e);
        }
        return fetch;
    }
}