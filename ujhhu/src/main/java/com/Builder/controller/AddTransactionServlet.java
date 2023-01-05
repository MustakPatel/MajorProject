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
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

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

        String date = paidDate.replace("/", "-");

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM-dd-yyyy");
        DateTimeFormatter formatter2 = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        date = LocalDate.parse(date, formatter).format(formatter2);

        LandlordsDetails transactionDetails = new LandlordsDetails();
//        ----------------- value is being taken in landlordsDetails setter --------------------------------------
        transactionDetails.setSiteId(siteId);
        transactionDetails.setDescription(description);
        transactionDetails.setAmountType(paymentType);
        transactionDetails.setPaidDate(date);
        transactionDetails.setAmount(amount);


        AddTransactionDetails addTransactionDetails = new AddTransactionDetails(ConnectionProvider.getConnection());



//        PartyDao partyDao = new PartyDao(ConnectionProvider.getConnection());       //PartyDao is a class where Insertion operation will be performed
//        UserLoginInsert userLoginInsert = new UserLoginInsert(ConnectionProvider.getConnection());      //PartyDao is a class where Insertion operation will be performed
        if (addTransactionDetails.insertTransaction(transactionDetails)) {       //if both condition true
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("partyTransactionListServlet");        //its login page
            boolean isTransactionTostActivate = true;
            req.setAttribute("isTransactionTostActivate", isTransactionTostActivate);
            requestDispatcher.forward(req, resp);

        } else {
            System.out.println("failed");
        }
    }
}
