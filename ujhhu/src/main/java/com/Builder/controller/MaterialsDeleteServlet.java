package com.Builder.controller;

import com.Builder.dao.DeleteDetails;
import com.Builder.dao.MaterialsDeleteDetails;
import com.Builder.dbconnection.ConnectionProvider;
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
import java.io.PrintWriter;

@WebServlet("/MaterialsDeleteServlet")
public class MaterialsDeleteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        String partyId = req.getParameter("id");
        MaterialsEntity materialsEntity = new MaterialsEntity();    //used for deleting landlord details
        materialsEntity.setMaterialid(partyId);        //set value in setPartyId() method of party class

        HttpSession session = req.getSession();
        String userEmailId = (String) session.getAttribute("userName");
        if(userEmailId == null){
            RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
            rd.forward(req, resp);
        }

        MaterialsDeleteDetails materialsDeleteDetails = new MaterialsDeleteDetails(ConnectionProvider.getConnection());        // reference variable is created for (dao) DeleteDetails

        if (materialsDeleteDetails.isDeleteDetails(materialsEntity)) {       //in isDeleteDetails() sql delete operation will be performed
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("MaterialServlet");
            boolean isDeleteTostActivate = true;
            req.setAttribute("isDeleteTostActivate", isDeleteTostActivate);
            requestDispatcher.forward(req, resp);
            System.out.println("DeleteServlet successfully data delete");
        } else {

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("profile");
            requestDispatcher.include(req, resp);
            System.out.println(" failed data update");
        }

    }
}
