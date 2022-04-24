package com.Builder.controller;

import com.Builder.dao.DisplayMaterials;
import com.Builder.dao.DisplayPersonMaterialDetails;
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

@WebServlet("/personalMaterialServlet")
public class personalMaterialServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

//------------------------------use for showing data on Homepage------------------------------------
        String email = req.getParameter("id");
        System.out.println(email);

        HttpSession session = req.getSession();
        String userEmailId = (String) session.getAttribute("userName");
        if(userEmailId == null){
            RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
            rd.forward(req, resp);
        }

        ArrayList<MaterialsEntity> materials = DisplayPersonMaterialDetails.getMaterials(email);

        req.setAttribute("materialsdata", materials);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("personalMaterials.jsp");     //(HomePage.jsp)it's main profile page
        requestDispatcher.include(req, resp);

    }
}
