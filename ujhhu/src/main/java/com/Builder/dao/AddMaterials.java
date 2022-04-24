package com.Builder.dao;

import com.Builder.model.LandlordsDetails;
import com.Builder.model.MaterialsEntity;
import com.Builder.model.UserLogin;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AddMaterials {

    private final Connection connection;

    public AddMaterials(Connection connection) {
        this.connection = connection;
    }

    public boolean insertMaterial(MaterialsEntity materialsEntity) {     //it will return boolean type value from here to SignupServlet

        boolean isUserDataInserted = false;

        try {

            String partySql = "INSERT INTO materials(siteId, materialName, supplier, rate, quantity, " +
                    "date, totalpayment) VALUES(?,?,?,?,?,?,?)";

            PreparedStatement statement = connection.prepareStatement(partySql);
            statement.setString(1, materialsEntity.getSiteId());        //value is being taken from userId() which is defined above
            statement.setString(2,materialsEntity.getMaterialName());
            statement.setString(3,materialsEntity.getSupplier());
            statement.setString(4,materialsEntity.getRate());
            statement.setString(5,materialsEntity.getQuantity());
            statement.setString(6,materialsEntity.getDate());
            statement.setString(7,materialsEntity.getTotalPayment());
            statement.executeUpdate();

            isUserDataInserted = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isUserDataInserted;
    }
}
