package com.Builder.dao;

import com.Builder.controller.UpdateServlet;
import com.Builder.model.LandlordsDetails;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateDetails {

    Connection connection;

    public UpdateDetails(Connection connection) {
        this.connection = connection;
    }

    public boolean isUpdateDetails(LandlordsDetails landlordsDetails) {

        boolean updatedData = false;

        try {

            String partySql = "UPDATE landlordsdetails SET siteId=?, firstName=?, lastName=?, phone=?," +
                    " sitelocation=?, district=?, eria=?, totalpayment=? " +
                    "WHERE siteId =" + landlordsDetails.getSiteId();


            PreparedStatement statement1 = connection.prepareStatement(partySql);

            statement1.setInt(1,landlordsDetails.getSiteId());
            statement1.setString(2, landlordsDetails.getFirstName());
            statement1.setString(3, landlordsDetails.getLastName());
            statement1.setString(4, landlordsDetails.getPhone());
            statement1.setString(5, landlordsDetails.getSiteLocation());
            statement1.setString(6,landlordsDetails.getDistrict());
            statement1.setString(7, landlordsDetails.getAria());
            statement1.setString(8, landlordsDetails.getTotalPayment());
            int i = statement1.executeUpdate();

            if (i > 0) {
                System.out.println("Record Updated Successfully");
            } else {
                System.out.println("There is a problem in updating Record.");
            }
            updatedData = true;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return updatedData;
    }
}
