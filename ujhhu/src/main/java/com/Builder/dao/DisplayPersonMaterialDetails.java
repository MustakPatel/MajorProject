package com.Builder.dao;

import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.MaterialsEntity;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DisplayPersonMaterialDetails {

    public static ArrayList<MaterialsEntity> getMaterials(String email) {

        ArrayList<MaterialsEntity> materialsdata = new ArrayList<>();

        try{
            String sql= " SELECT M.siteId, M.materialName, M.rate, M.quantity, M.date, " +
                    " M.totalpayment FROM materials M INNER JOIN landlordsdetails LD ON " +
                    "LD.siteId = M.siteId INNER JOIN userlogin U ON LD.siteId = U.landlordSiteId " +
                    "WHERE U.mailId='"+email+"'";

            Connection connection = ConnectionProvider.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {

                MaterialsEntity materialsEntity = new MaterialsEntity();
                materialsEntity.setSiteId(resultSet.getString(1));
                materialsEntity.setMaterialName(resultSet.getString(2));
                materialsEntity.setRate(resultSet.getString(3));
                materialsEntity.setQuantity(resultSet.getString(4));
                materialsEntity.setDate(resultSet.getString(5));
                materialsEntity.setTotalPayment(resultSet.getString(6));

                materialsdata.add(materialsEntity);

            }

        } catch (SQLException e) {

            System.out.println(e);

        }
        return materialsdata;

    }
}
