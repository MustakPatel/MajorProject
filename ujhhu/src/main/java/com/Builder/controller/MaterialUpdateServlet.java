package com.Builder.controller;

import com.Builder.dao.UpdateDetails;
import com.Builder.dao.UpdateMaterialsDetails;
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

@WebServlet("/MaterialUpdateServlet")
public class MaterialUpdateServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        HttpSession session = req.getSession();
        String userEmailId = (String) session.getAttribute("userName");
        if(userEmailId == null){
            RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
            rd.forward(req, resp);
        }

        String partyId = req.getParameter("siteId");
        String materialName = req.getParameter("materialName");
        String supplier = req.getParameter("supplierName");
        String rate = req.getParameter("rate");
        String quantity = req.getParameter("quantity");
        String date = req.getParameter("date");
        String payment = req.getParameter("payment");
        String materialId = req.getParameter("materialId");

        MaterialsEntity materialsEntity = new MaterialsEntity();

        materialsEntity.setSiteId(partyId);
        materialsEntity.setMaterialName(materialName);
        materialsEntity.setSupplier(supplier);
        materialsEntity.setRate(rate);
        materialsEntity.setQuantity(quantity);
        materialsEntity.setDate(date);
        materialsEntity.setTotalPayment(payment);
        materialsEntity.setMaterialid(materialId);
        System.out.println(materialsEntity.getMaterialid());
        UpdateMaterialsDetails updateMaterialsDetails = new UpdateMaterialsDetails(ConnectionProvider.getConnection());

        if (updateMaterialsDetails.isUpdateDetails(materialsEntity)) {

            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Updated Successfully');");
            out.println("</script>");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("MaterialServlet");
            requestDispatcher.include(req, resp);
            System.out.println("UpdateServlet successfully data update");

        } else {

            out.println("<script type=\"text/javascript\">");
            out.println("There is a problem in updating Record.');");
            out.println("</script>");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("MaterialsUpdate.jsp");
            requestDispatcher.include(req, resp);
            System.out.println(" failed data update");

        }

    }
}
