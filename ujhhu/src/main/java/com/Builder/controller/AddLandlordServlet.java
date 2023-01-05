package com.Builder.controller;

import com.Builder.dao.AddLandlords;
import com.Builder.dbconnection.ConnectionProvider;
import com.Builder.model.LandlordsDetails;
import com.Builder.model.UserLogin;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

@WebServlet("/addLandlordServlet")
public class AddLandlordServlet extends HttpServlet {

    //    this method will be used for sending the mail when someone register on our site
    public static void sendMail(LandlordsDetails landlordsDetails, UserLogin userLogin) throws IOException {

        // it's messege for sending in the mail
        String sms = " Hello " + landlordsDetails.getFirstName() + " " + landlordsDetails.getLastName() +
                " Thank you for appreciating our work, I am Afzal Patel, I want to inform you. " +
                "we are gonna start your work soon. so please check you details. and here below " +
                "i have provided your mail id and password for login on our site and check your " +
                "all related information Thank you \n\nPlease check your information once" +
                "\n site location :" + landlordsDetails.getSiteLocation() + "\n City :" + landlordsDetails.getDistrict() + "\n Site id :" + landlordsDetails.getSiteId() +
                "\n Aria :" + landlordsDetails.getAria() + "\n Total Payment :" + landlordsDetails.getTotalPayment() + "\n Number :" + landlordsDetails.getPhone() +
                "\n Email Id :" + userLogin.getLoginId() + "\n Password :" + userLogin.getPassword();

        String subject = "your sign up has been Successfully done on our site";
        String to = userLogin.getLoginId();
        String from = "mustak.patel@hotwaxsystems.com";

        String host = "smtp.gmail.com";     //it's host for gmail (which server we are gonna use)
        Properties properties = System.getProperties();
        properties.put("mail.smtp.host", host);         //set the host
        properties.put("mail.smtp.port", "465");         //it's  port number for gmail
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.auth", "true");       //for authentication purpose
        FileInputStream fileInputStream = new FileInputStream(
                "/home/mustak/IdeaProjects/ujhhu/src/main/resources/config.properties");

        properties.load(fileInputStream);
        final String username = properties.getProperty("username");
        final String password = properties.getProperty("password");

//        step 1)------------------to get the session object--------------------------

        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
        session.setDebug(true);

//        step2-----------------------compose the message-----------------------------

        MimeMessage message = new MimeMessage(session);  //this is the class where we write our message

        try {
            message.setFrom(from);
            message.addRecipients(Message.RecipientType.TO, String.valueOf(new InternetAddress(to)));
            message.setSubject(subject);
            message.setText(sms);

//       step3---------------------------send the message------------------------------

            Transport.send(message);
            System.out.println("email send successfully");
        } catch (Exception e) {
            System.out.println(e);
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        //        -------------------parameters is being taken from SignUp.html page--------------
        String siteId = req.getParameter("siteId");
        String firstname = req.getParameter("firstName");
        String lastname = req.getParameter("lastName");
        String phone = req.getParameter("phone");
        String siteLocation = req.getParameter("siteLocation");
        String district = req.getParameter("district");
        String aria = req.getParameter("aria");
        String totalPayment = req.getParameter("totalPayment");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        LandlordsDetails landlordsDetails = new LandlordsDetails();
//        ----------------- value is being taken in landlordsDetails setter --------------------------------------
        landlordsDetails.setSiteId(siteId);
        landlordsDetails.setFirstName(firstname);
        landlordsDetails.setLastName(lastname);
        landlordsDetails.setPhone(phone);
        landlordsDetails.setSiteLocation(siteLocation);
        landlordsDetails.setDistrict(district);
        landlordsDetails.setAria(aria);
        landlordsDetails.setTotalPayment(totalPayment);

        UserLogin userLogin = new UserLogin();
        userLogin.setLoginId(email);
        userLogin.setPassword(password);
        userLogin.setPartyId(siteId);
        AddLandlords addLandlords = new AddLandlords(ConnectionProvider.getConnection());



//        PartyDao partyDao = new PartyDao(ConnectionProvider.getConnection());       //PartyDao is a class where Insertion operation will be performed
//        UserLoginInsert userLoginInsert = new UserLoginInsert(ConnectionProvider.getConnection());      //PartyDao is a class where Insertion operation will be performed
        if (addLandlords.insertUser(landlordsDetails) && addLandlords.insertLoginData(userLogin)) {       //if both condition true
            sendMail(landlordsDetails, userLogin);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("LandlordsServlet");        //its login page
            boolean isTostActivate = true;
            req.setAttribute("isTostActivate", isTostActivate);
            requestDispatcher.forward(req, resp);

        } else {
            System.out.println("failed");
        }
    }
}

