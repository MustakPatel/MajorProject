<%@page import="java.util.ArrayList"%>
<%@ page import="com.Builder.model.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

  <script type="text/javascript" src="Admin/javascript.js"></script>
  <link rel="stylesheet" type="text/css" href="Admin/css/style.css">

  <title></title>
</head>
<body id="body-pd">
    <header class="header" id="header">
        <div class="header_toggle"> <i class='bx bx-menu' id="header-toggle"></i> </div>
        <div class="header_img"> <img src="https://i.imgur.com/hczKIze.jpg" alt=""> </div>
    </header>
    <div class="l-navbar" id="nav-bar">
        <nav class="nav">
            <div>
                <a href="#" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i>
                    <span class="nav_logo-name">AS Construction</span>
                </a>
                <div class="nav_list">
                    <a href="loginServlet" class="nav_link">
                        <i class='bx bx-grid-alt nav_icon'></i>
                        <span class="nav_name">Dashboard</span>
                    </a>
                    <a href="LandlordsServlet" class="nav_link">
                        <i class='bx bx-user nav_icon'></i>
                        <span class="nav_name">Landlords</span>
                    </a>
                    <a href="MaterialServlet" class="nav_link">
                        <i class='bx bx-message-square-detail nav_icon'></i>
                        <span class="nav_name">Raw materials</span>
                    </a>
                    <a href="partyTransactionListServlet" class="nav_link">
                        <i class='bx bx-bookmark nav_icon'></i>
                        <span class="nav_name">Payment Information</span>
                    </a>
                    <a href="index.jsp" class="nav_link">
                        <i class='bx bx-folder nav_icon'></i>
                        <span class="nav_name">Home Screen</span>
                    </a>
                    <a href="ImportData.jsp" class="nav_link">
                        <i class='bx bx-bar-chart-alt-2 nav_icon'></i>
                        <span class="nav_name">Import Landlords</span>
                    </a>
                    <a href="Logout" class="nav_link">
                        <i class='bx bx-log-out nav_icon'></i>
                        <span class="nav_name">SignOut</span>
                    </a>
                </div>
            </div>

        </nav>
    </div>
    <!--Container Main start
    <div class="height-50 bg-light">
        <h4>Hello, Mr. Afjal Patel</h4>
    </div>
    Container Main end-->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>