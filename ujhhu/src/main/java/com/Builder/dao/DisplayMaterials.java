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
@WebServlet("/DisplayMaterials")
public class DisplayMaterials {
    public static ArrayList<MaterialsEntity> getMaterials() {

        ArrayList<MaterialsEntity> materialsdata = new ArrayList<>();

        try{
            String sql= " SELECT siteId, materialName, supplier, rate, quantity, date, " +
                    " totalpayment, materialId FROM materials";

            Connection connection = ConnectionProvider.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {

                MaterialsEntity materialsEntity = new MaterialsEntity();
                materialsEntity.setSiteId(resultSet.getString(1));
                materialsEntity.setMaterialName(resultSet.getString(2));
                materialsEntity.setSupplier(resultSet.getString(3));
                materialsEntity.setRate(resultSet.getString(4));
                materialsEntity.setQuantity(resultSet.getString(5));
                materialsEntity.setDate(resultSet.getString(6));
                materialsEntity.setTotalPayment(resultSet.getString(7));
                materialsEntity.setMaterialid(resultSet.getString(8));

                materialsdata.add(materialsEntity);

            }

        } catch (SQLException e) {

            System.out.println(e);

        }
        return materialsdata;

    }
}
