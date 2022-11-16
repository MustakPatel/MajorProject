package com.Builder.dao;

import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.LandlordsDetails;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DisplaySiteId {
    public static ArrayList<LandlordsDetails> getSiteId() {

        ArrayList<LandlordsDetails> fetch = new ArrayList<>();

        try {

            String siteId = " SELECT siteId, firstname, lastname FROM landlordsdetails";

            Connection connection = ConnectionProvider.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(siteId);

            while (resultSet.next()) {

                LandlordsDetails landlordsDetails = new LandlordsDetails();
                landlordsDetails.setSiteId(resultSet.getString(1));
                landlordsDetails.setFirstName(resultSet.getString(2));
                landlordsDetails.setLastName(resultSet.getString(3));

                fetch.add(landlordsDetails);

            }


        } catch (SQLException e) {

            System.out.println(e);

        }
        System.out.println("all site Id::"+fetch);
        return fetch;
    }
}
