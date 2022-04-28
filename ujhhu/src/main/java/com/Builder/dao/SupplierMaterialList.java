package com.Builder.dao;

import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.MaterialsEntity;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class SupplierMaterialList {

    public static ArrayList<MaterialsEntity> getMaterials(String Materialstype) {

        ArrayList<MaterialsEntity> materialsdata = new ArrayList<>();

        try{

//            if (Materialstype == "brick"){
//                sql = "SELECT supplier FROM materials WHERE materialName='"+Materialstype+"'";
//
//            }else if (Materialstype == "cements"){
//                sql = "SELECT supplier FROM materials WHERE materialName='"+Materialstype+"'";
//
//            }else if (Materialstype == "muram"){
//                sql = "SELECT supplier FROM materials WHERE materialName='"+Materialstype+"'";
//
//            }else if (Materialstype == "gitti"){
//                sql = "SELECT supplier FROM materials WHERE materialName='"+Materialstype+"'";
//            }
            String sql = "SELECT supplier FROM materials WHERE materialName='"+Materialstype+"' GROUP BY supplier";

            Connection connection = ConnectionProvider.getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {

                MaterialsEntity materialsEntity = new MaterialsEntity();

                materialsEntity.setSupplier(resultSet.getString(1));
                materialsdata.add(materialsEntity);

            }

        } catch (SQLException e) {

            System.out.println(e);

        }
        return materialsdata;

    }
}
