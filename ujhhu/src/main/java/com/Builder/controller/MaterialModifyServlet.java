package com.Builder.controller;

import com.Builder.dao.DisplayMaterials;
import com.Builder.dao.MaterialModification;
import com.Builder.dao.Modification;
import com.Builder.model.LandlordsDetails;
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

@WebServlet("/MaterialModifyServlet")
public class MaterialModifyServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("id");

        MaterialsEntity materialsEntity = new MaterialsEntity();
        materialsEntity.setMaterialid(id);

        HttpSession session = req.getSession();
        String userEmailId = (String) session.getAttribute("userName");
        if(userEmailId == null){
            RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
            rd.forward(req, resp);
        }

        ArrayList<MaterialsEntity> data = MaterialModification.userData(materialsEntity);

        req.setAttribute("userData", data);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("MaterialsUpdate.jsp");
        requestDispatcher.forward(req, resp);

    }
}
