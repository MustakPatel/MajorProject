package com.Builder.controller;

import com.Builder.dao.DisplayMaterials;
import com.Builder.dao.SupplierMaterialList;
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

@WebServlet("/supplierList")
public class SupplierList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String materialName = req.getParameter("mname");
        System.out.println("material name :"+materialName);

        //------------------------------use for showing data on Homepage------------------------------------
        HttpSession session = req.getSession();
        String userEmailId = (String) session.getAttribute("userName");
        if(userEmailId == null){
            RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
            rd.forward(req, resp);
        }
        ArrayList<MaterialsEntity> materials = SupplierMaterialList.getMaterials(materialName);
        req.setAttribute("materialName",materialName);
        req.setAttribute("materialsdata", materials);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("categorizedMaterialList.jsp");     //(HomePage.jsp)it's main profile page
        requestDispatcher.include(req, resp);
    }
}
