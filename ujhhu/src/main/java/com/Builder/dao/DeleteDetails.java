package com.Builder.dao;

import com.Builder.model.LandlordsDetails;
import com.Builder.model.Party;

import javax.servlet.annotation.WebServlet;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

// this class will be used for deletion operation on HomePage data
@WebServlet("/DeleteDetails")
public class DeleteDetails {

    Connection connection;

    public DeleteDetails(Connection connection) {       //connection will be initialized by ConnectionProvider class
        this.connection = connection;
    }

    public boolean isDeleteDetails(LandlordsDetails landlordsDetails) {

        boolean deletedData = false;
        try {

            String partySql = "DELETE l FROM landlordsdetails l WHERE l.siteId=" + landlordsDetails.getSiteId();
            String check = "SET FOREIGN_KEY_CHECKS=0;";
            Statement statement1 = connection.createStatement();
            Statement statement2 = connection.createStatement();
            int i = statement1.executeUpdate(check);
            int j = statement2.executeUpdate(partySql);

            deletedData = true;

        } catch (SQLException e) {
            System.out.println(e);
        }

        return deletedData;
    }

}
