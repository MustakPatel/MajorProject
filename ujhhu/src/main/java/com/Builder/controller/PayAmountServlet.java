package com.Builder.controller;

import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;
import com.razorpay.Utils;
import org.json.JSONObject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/createOrder")
public class PayAmountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RazorpayClient razorpay = null;
        String orderId = null;
        try {
            JSONObject orderRequest = new JSONObject();
            orderRequest.put("amount", 100); // amount in the smallest currency unit
            orderRequest.put("currency", "INR");
            orderRequest.put("receipt", "order_rcptid_11");
            System.out.println("======================come inside doGet");
            razorpay = new RazorpayClient("rzp_test_JTviDeEytJMJEp", "Zq7apKARoXUaatKbhYbvDCvs");
            Order order = razorpay.Orders.create(orderRequest);
            orderId = order.get("id");
            System.out.println("======================Order"+order);
        } catch (RazorpayException e) {
            // Handle Exception
            System.out.println(e.getMessage());
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RazorpayClient razorpay = null;
        try {
            System.out.println("======================come inside doGet");
            razorpay = new RazorpayClient("rzp_test_JTviDeEytJMJEp", "Zq7apKARoXUaatKbhYbvDCvs");
            JSONObject options = new JSONObject();
            options.put("razorpay_order_id", req.getParameter("razorpay_order_id"));
            options.put("razorpay_payment_id", req.getParameter("razorpay_payment_id"));
            options.put("razorpay_signature", req.getParameter("razorpay_signature"));

            boolean status =  Utils.verifyPaymentSignature(options, "Zq7apKARoXUaatKbhYbvDCvs");
            if (status) {
                    resp.getWriter().append("payment successfull and signature Varified");
            }else {
                resp.getWriter().append("payment Failed and signature not Varified");
            }
        } catch (RazorpayException e) {
            // Handle Exception

            System.out.println(e.getMessage());
        }

    }
}
