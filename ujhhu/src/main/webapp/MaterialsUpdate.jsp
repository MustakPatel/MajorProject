<%@page import="java.util.ArrayList"%>
<%@ page import="com.Builder.model.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Update data</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://unpkg.com/gijgo@1.9.14/css/gijgo.min.css" rel="stylesheet" type="text/css" />

<!-- Main css -->
<link rel="stylesheet" href="Admin/css/LoginStyle.css">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- Font Icon -->
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
<script src="https://unpkg.com/gijgo@1.9.14/js/gijgo.min.js" type="text/javascript"></script>

</head>
<body>
<% ArrayList<MaterialsEntity> std = (ArrayList<MaterialsEntity>) request.getAttribute("userData");%>
<%@ include file="Portal.jsp" %>

 <div class="main">
     <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Update Details</h2>
                            <form method="get" action="MaterialUpdateServlet" class="register-form" id="register-form">
                                <% for(MaterialsEntity s:std){%>

                                 <div class="form-group">
                                    <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <input type="text" name="siteId" value="<%=s.getSiteId()%>" readonly>
                                 </div>

                                <div class="form-group">
                                    <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <input type="text" name="materialName" value="<%=s.getMaterialName()%>">
                                </div>

                                 <div class="form-group">
                                     <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                     <input type="text" name="supplierName" value="<%=s.getSupplier()%>">
                                 </div>

                                <div class="form-group">
                                    <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <input type="text" name="rate" value="<%=s.getRate()%>">
                                </div>

                                <div class="form-group">
                                    <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <input type="text" name="quantity" value="<%=s.getQuantity()%>">
                                </div>

                                <div class="form-group">
                                    <label><i class="zmdi zmdi-city"></i></label>
                                    <input type="text" name="date" id="datepicker" width="280" value="<%=s.getDate()%>">
                                </div>
                                <div class="form-group">
                                    <label><i class="zmdi zmdi-city"></i></label>
                                    <input type="text" name="payment" value="<%=s.getTotalPayment()%>">
                                </div>
                                 <div class="form-group">
                                       <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                       <input type="hidden" name="materialId" value="<%=s.getMaterialid()%>">
                                 </div>
                                <div class="form-group form-button">
                                    <input type="submit" name="update" id="signup" class="form-submit" value="Update"/>
                                </div>
                               <% } %>
                            </form>
                    </div>
                </div>
            </div>
        </section>
 </div>
 <script>
        $('#datepicker').datepicker({
            uiLibrary: 'bootstrap4'
        });
</script>
</body>
</html>