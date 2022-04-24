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
<% String itemName = (String) request.getAttribute("materialName");
   request.setAttribute("itemType",itemName);
%>
<%@ include file="Portal.jsp" %>

<div class="container-lg">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                 <div class="d-flex justify-content-start col-sm-4">

                 </div>
                    <div class="col-sm-8"><h2><b><%=itemName%> Suppliers</b></h2></div>

                </div>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>

                        <th>Supplier Name</th>
                        <th>Action</th>

                </thead>
                <tbody>
                 <% for(MaterialsEntity s:std){%>
                    <tr>

                        <td> <%=s.getSupplier()%></td>
                        <td><a href="SupplierItemTypeRecordServlet?supplier=<%=s.getSupplier()%>&itemType=<%=itemName%>" class="link-primary">View Item Records</a></td>

                    </tr>
                 <% } %>
               </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>