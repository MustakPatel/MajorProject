package com.Builder.controller;

import com.Builder.dao.AddLandlords;
import com.Builder.dao.AddTransactionDetails;
import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.LandlordsDetails;
import com.Builder.model.UserLogin;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/addTransactionServlet")
public class AddTransactionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        //        -------------------parameters is being taken from SignUp.html page--------------
        String siteId = req.getParameter("siteId");
        String description = req.getParameter("description");
        String paymentType = req.getParameter("paymentType");
        String paidDate = req.getParameter("paidDate");
        String amount = req.getParameter("amount");


        LandlordsDetails transactionDetails = new LandlordsDetails();
//        ----------------- value is being taken in landlordsDetails setter --------------------------------------
        transactionDetails.setSiteId(siteId);
        transactionDetails.setDescription(description);
        transactionDetails.setAmountType(paymentType);
        transactionDetails.setPaidDate(paidDate);
        transactionDetails.setAmount(amount);


        AddTransactionDetails addTransactionDetails = new AddTransactionDetails(ConnectionProvider.getConnection());



//        PartyDao partyDao = new PartyDao(ConnectionProvider.getConnection());       //PartyDao is a class where Insertion operation will be performed
//        UserLoginInsert userLoginInsert = new UserLoginInsert(ConnectionProvider.getConnection());      //PartyDao is a class where Insertion operation will be performed
        if (addTransactionDetails.insertTransaction(transactionDetails)) {       //if both condition true
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("partyTransactionListServlet");        //its login page
            requestDispatcher.forward(req, resp);

        } else {
            System.out.println("failed");
        }
    }
}
