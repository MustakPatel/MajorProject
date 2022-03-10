package com.Builder.controller;

import com.Builder.model.LandlordsDetails;
import com.Builder.model.Party;
import com.Builder.dao.DisplayLandlords;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/LandlordsServlet")
public class LandlordsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

//------------------------------use for showing data on Homepage------------------------------------
        ArrayList<LandlordsDetails> landlords = DisplayLandlords.getStudent();

        req.setAttribute("landlords", landlords);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("Landlords.jsp");     //(HomePage.jsp)it's main profile page
        requestDispatcher.include(req, resp);

    }
}
