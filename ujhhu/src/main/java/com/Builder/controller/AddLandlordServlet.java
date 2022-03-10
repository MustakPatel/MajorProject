package com.Builder.controller;

import com.Builder.dao.AddLandlords;
import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.LandlordsDetails;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/addLandlordServlet")
public class AddLandlordServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("it's addlondlordServlet");
        //        -------------------parameters is being taken from SignUp.html page--------------
        String siteId = req.getParameter("siteId");
        String firstname = req.getParameter("firstName");
        String lastname = req.getParameter("lastName");
        String phone = req.getParameter("phone");
        String siteLocation = req.getParameter("siteLocation");
        String district = req.getParameter("district");
        String aria = req.getParameter("aria");
        String totalPayment = req.getParameter("totalPayment");

        LandlordsDetails landlordsDetails = new LandlordsDetails();
//        ----------------- value is being taken in landlordsDetails setter --------------------------------------
        landlordsDetails.setSiteId(Integer.parseInt(siteId));
        landlordsDetails.setFirstName(firstname);
        landlordsDetails.setLastName(lastname);
        landlordsDetails.setPhone(phone);
        landlordsDetails.setSiteLocation(siteLocation);
        landlordsDetails.setDistrict(district);
        landlordsDetails.setAria(aria);
        landlordsDetails.setTotalPayment(totalPayment);

        AddLandlords addLandlords = new AddLandlords(ConnectionProvider.getConnection());



//        PartyDao partyDao = new PartyDao(ConnectionProvider.getConnection());       //PartyDao is a class where Insertion operation will be performed
//        UserLoginInsert userLoginInsert = new UserLoginInsert(ConnectionProvider.getConnection());      //PartyDao is a class where Insertion operation will be performed
        if (addLandlords.insertUser(landlordsDetails)) {       //if both condition true

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("LandlordsServlet");        //its login page
            requestDispatcher.forward(req, resp);

        } else {
            System.out.println("failed");
        }
    }
    }

