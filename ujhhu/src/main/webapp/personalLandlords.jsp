<%@page import="java.util.ArrayList"%>
<%@ page import="com.Builder.model.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>HomePage</title>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Main css -->
    <link rel="stylesheet" href="Admin/css/HomePage.css">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<%
    String email = (String) session.getAttribute("userName");
    if (email == null) {
        session.setAttribute("errorMessage", "please login first you are new user");
        response.sendRedirect("LandlordLogin.jsp");
    }
 %>
<% ArrayList<LandlordsDetails> std = (ArrayList<LandlordsDetails>) request.getAttribute("landlords");%>
<%@ include file="LandlordPortal.jsp" %>
<div class="container-lg">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">

                    <div class="col-sm-8"><h2>Your <b>Details</b></h2></div>

                </div>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Site Id</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Phone</th>
                        <th>Site Location</th>
                        <th>District</th>
                        <th>Aria (ft)</th>
                        <th>Total Payment</th>
                    </tr>
                </thead>
                <tbody>
                 <% for(LandlordsDetails s:std){%>
                    <tr>
                        <td> <%=s.getSiteId()%></td>
                        <td> <%=s.getFirstName()%></td>
                        <td> <%=s.getLastName()%></td>
                        <td> <%=s.getPhone()%></td>
                        <td> <%=s.getSiteLocation()%></td>
                        <td> <%=s.getDistrict()%></td>
                        <td> <%=s.getAria()%></td>
                        <td> <%=s.getTotalPayment()%></td>
                    </tr>
                 <% } %>
               </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>