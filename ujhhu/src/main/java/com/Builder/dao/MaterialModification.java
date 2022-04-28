package com.Builder.dao;

import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.LandlordsDetails;
import com.Builder.model.MaterialsEntity;

import javax.servlet.annotation.WebServlet;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class MaterialModification {
    public static ArrayList<MaterialsEntity> userData(MaterialsEntity materialsEntity) {

        ArrayList<MaterialsEntity> parties = new ArrayList<>();
        try {

            String sql = "SELECT siteId, materialName, supplier, rate, quantity, date," +
                    " totalpayment, materialId FROM materials WHERE materialId ='" + materialsEntity.getMaterialid() + "'";

            Connection connection = ConnectionProvider.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {

                materialsEntity.setSiteId(resultSet.getString(1));
                materialsEntity.setMaterialName(resultSet.getString(2));
                materialsEntity.setSupplier(resultSet.getString(3));
                materialsEntity.setRate(resultSet.getString(4));
                materialsEntity.setQuantity(resultSet.getString(5));
                materialsEntity.setDate(resultSet.getString(6));
                materialsEntity.setTotalPayment(resultSet.getString(7));
                materialsEntity.setMaterialid(resultSet.getString(8));
                parties.add(materialsEntity);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return parties;
    }
}
