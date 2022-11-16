<%@page import="java.util.ArrayList"%>
<%@ page import="com.Builder.model.*" %>
<%@ page import="com.Builder.model.LandlordsDetails" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add Payment</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Main css -->
    <link rel="stylesheet" href="Admin/css/LoginStyle.css">
</head>
 <% ArrayList<LandlordsDetails> std = (ArrayList<LandlordsDetails>) request.getAttribute("landlords");%>
<body>
<%@ include file="Portal.jsp" %>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h3 class="form-title">New Payment Transaction</h3>
                        <form method="get" action="addTransactionServlet" class="register-form" id="register-form">
                            <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                            </div>
                            <div class="form-group">
                              <select class="form-select" aria-label="Default select example" id="siteId" name="siteId">
                             <option selected>Select Site Id</option>
                             <% for(LandlordsDetails s:std){%>
                              <option value="<%=s.getSiteId()%>"><%=s.getSiteId()%> : <p class="fst-italic"><%=s.getFirstName()%> <%=s.getLastName()%></p></option>
                            <% } %>
                            </select>
                            </div>
                            <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="description"  placeholder="Description" />
                            </div>
                            <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="paymentType" placeholder="Payment Type" />
                            </div>
                            <div class="form-group">
                                <label ><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="paidDate" placeholder="Paid Date" />
                            </div>
                            <div class="form-group">
                                <label ><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="amount" placeholder="Enter Amount" />
                            </div>

                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Add Transaction"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>