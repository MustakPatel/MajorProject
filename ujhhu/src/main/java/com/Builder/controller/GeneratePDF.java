package com.Builder.controller;

import com.Builder.dao.PartyTransactionListDetails;
import com.Builder.dao.TransactionHistoryDetails;
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

@WebServlet("/GeneratePDF")
public class GeneratePDF extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HttpSession session = req.getSession();
        String userEmailId = (String) session.getAttribute("userName");
        String siteId = req.getParameter("id");
        System.out.println("============sideId::"+siteId);
        if (userEmailId == null) {
            RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
            rd.forward(req, resp);
        }
//------------------------------use for showing data on Homepage------------------------------------

        ArrayList<LandlordsDetails> buildPDFResult = TransactionHistoryDetails.buildPDF(siteId);
        ArrayList<LandlordsDetails> landlords = TransactionHistoryDetails.getTransactionDetails(siteId);

        req.setAttribute("buildPDFResult", buildPDFResult);
        req.setAttribute("landlords", landlords);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("PaymentDetails.jsp");     //(HomePage.jsp)it's main profile page
        requestDispatcher.include(req, resp);

    }
    }

