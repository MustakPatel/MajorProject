package com.Builder.controller;

import com.Builder.dao.CheckLogin;
import com.Builder.dao.DisplayLandlords;
import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.LandlordsDetails;
import com.Builder.model.UserLogin;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    UserLogin userLogin = new UserLogin();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        CheckLogin checkLogin = new CheckLogin(ConnectionProvider.getConnection());
        HttpSession httpSession = req.getSession(true);

        if (checkLogin.isValidateData(userLogin)) {
            httpSession.setAttribute("userName", userLogin.getLoginId());
            httpSession.setMaxInactiveInterval(2000);
            ArrayList<LandlordsDetails> landlords = DisplayLandlords.getStudent();
            req.setAttribute("landlords", landlords);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("Dashboard.jsp");
            requestDispatcher.include(req, resp);

        } else {
            //it's login page
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("Login.jsp");
            requestDispatcher.include(req, resp);

        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        userLogin.setLoginId(email);
        userLogin.setPassword(password);

        CheckLogin checkLogin = new CheckLogin(ConnectionProvider.getConnection());
        HttpSession httpSession = req.getSession(true);

        if (checkLogin.isValidateData(userLogin)) {

            out.println("<script type=\"text/javascript\">");
            out.println("alert('Login successfull');");
            out.println("</script>");

            httpSession.setAttribute("userName", userLogin.getLoginId());
            httpSession.setMaxInactiveInterval(2000);
            ArrayList<LandlordsDetails> landlords = DisplayLandlords.getStudent();
            req.setAttribute("landlords", landlords);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("Dashboard.jsp");
            requestDispatcher.include(req, resp);

        } else {

            out.println("<script type=\"text/javascript\">");
            out.println("alert('User or password incorrect please try again!');");
            out.println("</script>");

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("Login.jsp");        //it's login page
            requestDispatcher.include(req, resp);

        }
    }
}
