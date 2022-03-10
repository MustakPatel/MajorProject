package com.Builder.dao;

import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.LandlordsDetails;
import com.Builder.model.Party;

import javax.servlet.annotation.WebServlet;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

@WebServlet("/Modification")
public class Modification {

    public static ArrayList<LandlordsDetails> userData(LandlordsDetails landlordsDetails) {

        ArrayList<LandlordsDetails> parties = new ArrayList<>();
        try {

            String sql = "SELECT siteId, firstname, lastname, phone, sitelocation, " +
                    " district, eria, totalpayment FROM landlordsdetails WHERE siteId ='" + landlordsDetails.getSiteId() + "'";

            Connection connection = ConnectionProvider.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {

                landlordsDetails.setSiteId(resultSet.getInt(1));
                landlordsDetails.setFirstName(resultSet.getString(2));
                landlordsDetails.setLastName(resultSet.getString(3));
                landlordsDetails.setPhone(resultSet.getString(4));
                landlordsDetails.setSiteLocation(resultSet.getString(5));
                landlordsDetails.setDistrict(resultSet.getString(6));
                landlordsDetails.setAria(resultSet.getString(7));
                landlordsDetails.setTotalPayment(resultSet.getString(8));

                parties.add(landlordsDetails);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return parties;
    }

}