package com.Builder.dao;

import com.Builder.model.LandlordsDetails;
import com.Builder.model.MaterialsEntity;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class MaterialsDeleteDetails {

    Connection connection;

    public MaterialsDeleteDetails(Connection connection) {       //connection will be initialized by ConnectionProvider class
        this.connection = connection;
    }

    public boolean isDeleteDetails(MaterialsEntity materialsEntity) {

        boolean deletedData = false;
        try {

            String partySql = "DELETE l FROM materials l WHERE l.materialId='" + materialsEntity.getMaterialid()+"'";
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
