package com.Builder.dao;

import com.Builder.model.LandlordsDetails;
import com.Builder.model.MaterialsEntity;

import javax.servlet.annotation.WebServlet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateMaterialsDetails {

    Connection connection;

    public UpdateMaterialsDetails(Connection connection) {
        this.connection = connection;
    }

    public boolean isUpdateDetails(MaterialsEntity materialsEntity) {

        boolean updatedData = false;

        try {

            String partySql = "UPDATE materials SET siteId=?, materialName=?, supplier=?, rate=?, quantity=?," +
                    " date=?, totalpayment=? " +
                    "WHERE materialId ='" + materialsEntity.getMaterialid()+"'";


            PreparedStatement statement1 = connection.prepareStatement(partySql);

            statement1.setString(1,materialsEntity.getSiteId());
            statement1.setString(2,materialsEntity.getMaterialName());
            statement1.setString(3,materialsEntity.getSupplier());
            statement1.setString(4,materialsEntity.getRate());
            statement1.setString(5, materialsEntity.getQuantity());
            statement1.setString(6,materialsEntity.getDate());
            statement1.setString(7,materialsEntity.getTotalPayment());
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
