package com.Builder.controller;

import com.Builder.dao.DisplayLandlords;
import com.Builder.dao.DisplaySiteId;
import com.Builder.model.LandlordsDetails;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/AddPaymentTransaction")
public class AllsiteId extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session = req.getSession();
        String userEmailId = (String) session.getAttribute("userName");
        if(userEmailId == null){
            RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
            rd.forward(req, resp);
        }
//------------------------------use for showing data on Homepage------------------------------------
        ArrayList<LandlordsDetails> landlords = DisplaySiteId.getSiteId();

        req.setAttribute("landlords", landlords);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("AddPaymentTransaction.jsp");     //(HomePage.jsp)it's main profile page
        requestDispatcher.include(req, resp);


    }
}
