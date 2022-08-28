package com.Builder.controller;

import com.Builder.dao.UpdateDetails;
import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.LandlordsDetails;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/PersonUpdateServlet")
public class PersonUpdateServlet extends HttpServlet {

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
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String phone = req.getParameter("phone");
        String siteLocation = req.getParameter("siteLocation");
        String district = req.getParameter("district");
        String aria = req.getParameter("aria");
        String payment = req.getParameter("totalPayment");

        LandlordsDetails landlordsDetails = new LandlordsDetails();

        landlordsDetails.setSiteId(partyId);
        landlordsDetails.setFirstName(firstName);
        landlordsDetails.setLastName(lastName);
        landlordsDetails.setPhone(phone);
        landlordsDetails.setSiteLocation(siteLocation);
        landlordsDetails.setDistrict(district);
        landlordsDetails.setAria(aria);
        landlordsDetails.setTotalPayment(payment);

        UpdateDetails updateDetails = new UpdateDetails(ConnectionProvider.getConnection());

        if (updateDetails.isUpdateDetails(landlordsDetails)) {

            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Updated Successfully');");
            out.println("</script>");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("PersonLandlordDetails");
            requestDispatcher.include(req, resp);
            System.out.println("UpdateServlet successfully data update");

        } else {

            out.println("<script type=\"text/javascript\">");
            out.println("There is a problem in updating Record.');");
            out.println("</script>");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("PersonUpdateDetails.jsp");
            requestDispatcher.include(req, resp);
            System.out.println(" failed data update");

        }

    }

}
