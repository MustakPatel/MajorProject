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
<% ArrayList<MaterialsEntity> std = (ArrayList<MaterialsEntity>) request.getAttribute("materialsdata");%>
<%@ include file="Portal.jsp" %>

<div class="container-lg">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                 <div class="d-flex justify-content-start col-sm-4">
                       <button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i><a href="AddMaterial.jsp" class="text-decoration-none text-light">Add New</a></button>
                 </div>
                    <div class="col-sm-8"><h2>Materials <b>Details</b></h2></div>

                </div>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Site Id</th>
                        <th>Material Name</th>
                        <th>Supplier Name</th>
                        <th>Rate</th>
                        <th>Quantity</th>
                        <th>Purchase Date</th>
                        <th>Total Payment</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                 <% for(MaterialsEntity s:std){%>
                    <tr>
                        <td> <%=s.getSiteId()%></td>
                        <td> <%=s.getMaterialName()%></td>
                        <td> <%=s.getSupplier()%></td>
                        <td> <%=s.getRate()%></td>
                        <td> <%=s.getQuantity()%></td>
                        <td> <%=s.getDate()%></td>
                        <td> <%=s.getTotalPayment()%></td>
                        <td>
                            <a href="MaterialModifyServlet?id=<%=s.getMaterialid()%>" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                            <a href="MaterialsDeleteServlet?id=<%=s.getMaterialid()%>" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                        </td>
                    </tr>
                 <% } %>
               </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>