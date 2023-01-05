package com.Builder.controller;

import com.Builder.dao.AddLandlords;
import com.Builder.dao.AddMaterials;
import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.LandlordsDetails;
import com.Builder.model.MaterialsEntity;
import com.Builder.model.UserLogin;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@WebServlet("/addMaterialServlet")
public class AddMaterialServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("it's addMaterialServlet");
        //        -------------------parameters is being taken from SignUp.html page--------------
        String siteId = req.getParameter("siteId");
        String materialName = req.getParameter("materialName");
        String supplierName = req.getParameter("supplier");
        String rate = req.getParameter("Rate");
        String quantity = req.getParameter("Quantity");
        String date = req.getParameter("PurchaseDate");
        String purchaseDate = date.replace("/", "-");
        int payment = Integer.parseInt(rate) * Integer.parseInt(quantity);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM-dd-yyyy");
        DateTimeFormatter formatter2 = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        purchaseDate = LocalDate.parse(purchaseDate, formatter).format(formatter2);

//        ----------------- value is being taken in landlordsDetails setter --------------------------------------
        MaterialsEntity materialsEntity = new MaterialsEntity();
        materialsEntity.setSiteId(siteId);
        materialsEntity.setMaterialName(materialName);
        materialsEntity.setRate(rate);
        materialsEntity.setQuantity(quantity);
        materialsEntity.setDate(purchaseDate);
        materialsEntity.setTotalPayment(String.valueOf(payment));
        materialsEntity.setSupplier(supplierName);

        AddMaterials addMaterials = new AddMaterials(ConnectionProvider.getConnection());
//        PartyDao partyDao = new PartyDao(ConnectionProvider.getConnection());       //PartyDao is a class where Insertion operation will be performed
//        UserLoginInsert userLoginInsert = new UserLoginInsert(ConnectionProvider.getConnection());      //PartyDao is a class where Insertion operation will be performed
        if (addMaterials.insertMaterial(materialsEntity)) {       //if both condition true
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("MaterialServlet");        //its login page
            boolean isMaterialTostActivate = true;
            req.setAttribute("isMaterialTostActivate", isMaterialTostActivate);
            requestDispatcher.forward(req, resp);
        } else {
            System.out.println("failed");
        }
    }
}
