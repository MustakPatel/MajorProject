package com.Builder.controller;

import com.Builder.dao.DisplayMaterials;
import com.Builder.dao.SupplierItemTypeRecords;
import com.Builder.model.MaterialsEntity;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/SupplierItemTypeRecordServlet")
public class SupplierItemTypeRecordsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String itemType = req.getParameter("itemType");
        String supplier = req.getParameter("supplier");

        HttpSession session = req.getSession();
        String userEmailId = (String) session.getAttribute("userName");
        if(userEmailId == null){
            RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
            rd.forward(req, resp);
        }

//------------------------------use for showing data on Homepage------------------------------------
        ArrayList<MaterialsEntity> materials = SupplierItemTypeRecords.getMaterials(itemType,supplier);

        req.setAttribute("materialsdata", materials);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("supplierItemList.jsp");     //(HomePage.jsp)it's main profile page
        requestDispatcher.include(req, resp);
    }
}
