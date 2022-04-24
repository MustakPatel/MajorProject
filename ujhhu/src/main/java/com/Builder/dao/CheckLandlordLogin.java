package com.Builder.dao;

import com.Builder.model.UserLogin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class CheckLandlordLogin {

    Connection connection;

    public CheckLandlordLogin(Connection connection) throws IOException {       //connection will be initialized by ConnectionProvider class
        this.connection = connection;
    }

    public boolean isValidateData(UserLogin userLogin) {     // it will return boolean type value

        boolean selectedData = false;
        try {

            String sql = "SELECT * FROM userlogin WHERE mailId=" +
                    "'" + userLogin.getLoginId() + "' AND password='" + userLogin.getPassword() + "'";

            Statement stmt = connection.createStatement();
            ResultSet resultSet = stmt.executeQuery(sql);

            if (resultSet.next()) {

                selectedData = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return selectedData;
    }
}
